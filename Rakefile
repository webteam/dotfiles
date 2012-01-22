# Rakefile
#
# Simple tasks for managing my .vim files

require 'open-uri'
require 'openssl'
require 'json'
require 'pp'

PLUGIN_LIST_TAG = '### Plugin List'
PLUGIN_LIST_NOTE = '_Note: Auto generated by `rake plugins:update`_'
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
    delete_old_plugins_from_readme
    add_plugins_to_readme(plugins)
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


def format_plugin_list(plugins = {})
  return "" if plugins.empty?
  list = []

  plugins.each do |category, plugin_list|
    list << "\n#### #{category}\n"
    plugin_list.each do |p|
      list << " * [#{p[:name]}](#{p[:uri]}) - #{p[:description]}"
    end
  end

  list
end

def delete_old_plugins_from_readme
  lines = []
  File.readlines(README_FILE).map do |line|
    line.chomp!
    lines << line
    if line == PLUGIN_LIST_TAG
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
  plugins = {}
  Dir.glob("#{PLUGIN_PATH}/**/*.vim") do |file|
    category = File.dirname(file).gsub("#{PLUGIN_PATH}/", '').capitalize
    File.new(file).each do |line|
      if line =~ /^Bundle\s+["'](.+)["']/
        plugins[category] ||= []
        plugins[category] << convert_to_link_hash($1)
      end
    end
  end

  plugins
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
  if RUBY_VERSION < '1.9'
    response = open("https://api.github.com/repos/#{user}/#{name}").read
  else
    response = open("https://api.github.com/repos/#{user}/#{name}", :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE).read
  end

  repo = JSON.parse response
  repo['description']
end

