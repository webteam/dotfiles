# Rakefile
#
# Simple tasks for managing my .vim files

require 'open-uri'
require 'openssl'
require 'json'
require 'pp'

PLUGIN_LIST_TAG = '### Plugin List'
PLUGIN_LIST_NOTE = '_Note: Auto generated by `rake plugins:update`_'
KEYMAP_TAG = '### Keymappings'
VIMRC_FILE = 'vimrc'
README_FILE = 'README.md'
PLUGIN_PATH = 'vim/config'
SOURCE_FILE = 'vim/bundles.vim'

FILES_TO_LINK = %w{vimrc gvimrc}


namespace :plugins do

  task :update => [:update_readme, :source_config] do
  end

  desc 'workaround - plugins vundle'
  task :source_config do
    File.open(SOURCE_FILE, 'w') do |source|
      Dir.glob("#{PLUGIN_PATH}/**/*.vim") do |file|
        source << file.gsub(PLUGIN_PATH, 'source ~/.vim/config') + "\n"
      end
    end
  end

  desc 'Update the list of plugins in README.md'
  task :update_readme do
    plugins = parse_plugins
    delete_old_docs_from_readme
    add_keymaps_to_readme(plugins[:keymaps])
    add_plugins_to_readme(plugins[:bundles])
  end
end


# ----------------------------------------
# Helper Methods
# ----------------------------------------


# Just takes an array of strings that resolve to plugins from Vundle
def add_plugins_to_readme(plugins = {})
  lines = File.readlines(README_FILE).map{|l| l.chomp}
  index = lines.index(PLUGIN_LIST_TAG)
  unless index.nil?
    lines.insert(index+1, "\n#{PLUGIN_LIST_NOTE}\n\n")
    lines.insert(index+2, format_plugin_list(plugins))
    write_lines_to_readme(lines)
  else
    puts "Error: Plugin List Tag (#{PLUGIN_LIST_TAG}) not found"
  end
end


def format_plugin_list(plugins = {}, level=0)
  return "" if plugins.empty?
  list = []

  plugins.each do |category, plugin_list|
    if plugin_list.kind_of?(Hash)
      list << category_header(category, level)
      list << format_plugin_list(plugin_list, 1)
    else
      list << add_plugin_entries_to_category(category, plugin_list, level)
    end
  end

  list
end

def format_keymap_list(plugins = {}, level=0)
  return "" if plugins.empty?
  list = []

  plugins.each do |category, plugin_list|
    if plugin_list.kind_of?(Hash)
      list << category_header(category, level)
      list << format_keymap_list(plugin_list, 1)
    else
      list << add_keymap_entries_to_category(category, plugin_list, level)
    end
  end

  list
end

def add_keymap_entries_to_category(category, plugin_list, level)
  list = []
  list << category_header(category, level)
  plugin_list.each do |p|
    list << " * `#{p[:keymap]}` - #{p[:description]}"
  end
  list
end


def add_plugin_entries_to_category(category, plugin_list, level)
  list = []
  list << category_header(category, level)
  plugin_list.each do |p|
    list << " * [#{p[:name]}](#{p[:uri]}) - #{p[:description]}"
  end
  list
end

def category_header(category, level=0)
  "\n#{"#"*4 + "#"*level} #{category}\n"
end


def delete_old_docs_from_readme
  lines = []
  File.readlines(README_FILE).map do |line|
    line.chomp!
    lines << line
    if line == KEYMAP_TAG
      break
    end
  end

  write_lines_to_readme(lines)
end

def write_lines_to_readme(lines)
  readme_file = File.open(README_FILE, 'w')
  readme_file << lines.join("\n")
  readme_file.close
end

# Returns an array of plugins denoted with Bundle
def parse_plugins
  plugins = {:bundles => {}, :keymaps => {}}
  Dir.glob("#{PLUGIN_PATH}/**/*.vim") do |file|
    print "."
    categories = File.dirname(file).gsub("#{PLUGIN_PATH}/", '').split("/")
    raise ArgumentError("categories nested to deeply") if categories.length > 2

    File.new(file).each do |line|
      if line =~ /^Bundle\s+["'](.+)["']/
        plugins[:bundles] = add_categories_to_plugins(plugins[:bundles], categories, convert_to_link_hash($1))
      end

      if line =~ /^"!\s+(.+)/
        plugins[:keymaps] = add_categories_to_plugins(plugins[:keymaps], categories, convert_keymap_to_doc($1))
      end
    end
  end

  plugins
end

def add_categories_to_plugins(plugins, categories, info)
  category = pretty_category categories[0]

  if categories.length == 1
    plugins[category] ||= []
    plugins[category] << info
  else
    plugins[category] ||= {}
    sub_category = pretty_category categories[1]
    plugins[category][sub_category] ||= []
    plugins[category][sub_category] << info
  end


  plugins
end

def pretty_category(category)
  category.gsub("_", " - ").split(" ").each{|word| word.capitalize!}.join(" ")
end

def convert_keymap_to_doc(keymap)
  keymap_hash = {}
  k = keymap.split(" || ")
  keymap_hash[:keymap] = k[0]
  keymap_hash[:description] = k[1]
  keymap_hash
end

# Converts a Vundle link to a URI
def convert_to_link_hash(link)
  link_hash = {}

  if link =~ /([a-zA-Z0-9\-]*)\/([a-zA-Z0-9\-\._]*)/
    user = $1
    name = $2
    link_hash[:user] = user
    link_hash[:name] = name
    link_hash[:uri] = "https://github.com/#{user}/#{name}"
    link_hash[:description] = fetch_github_repo_description(user, name)
  else
    name = link
    link_hash[:name] = name
    link_hash[:uri] = "https://github.com/vim-scripts/#{name}"
    link_hash[:description] = fetch_github_repo_description('vim-scripts', name)
  end

  link_hash
end

def fetch_github_repo_description(user, name)
  response = ''
  begin
    if RUBY_VERSION < '1.9'
      response = open("https://api.github.com/repos/#{user}/#{name}").read
    else
      response = open("https://api.github.com/repos/#{user}/#{name}", :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE).read
    end
  rescue
    pp "https://api.github.com/repos/#{user}/#{name}"
    raise
  end

  repo = JSON.parse response
  repo['description']
end

def add_keymaps_to_readme(plugins)
  lines = File.readlines(README_FILE).map{|l| l.chomp}
  index = lines.index(KEYMAP_TAG)
  unless index.nil?
    lines.insert(index+1, "\n#{PLUGIN_LIST_NOTE}\n\n")
    lines.insert(index+2, format_keymap_list(plugins))
    lines.insert(index+3, "\n#{PLUGIN_LIST_TAG}\n\n")
    write_lines_to_readme(lines)
  else
    puts "Error: Keymap List Tag (#{KEYMAP_TAG}) not found"
  end
end