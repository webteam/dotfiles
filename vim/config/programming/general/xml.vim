" xmledit
"
" This script provides some convenience when editing XML (and some SGML
" including HTML) formated documents. It allows you to jump to the beginning
" or end of the tag block your cursor is in. '%' will jump between '<' and '>'
" within the tag your cursor is in. When in insert mode and you finish a tag
" (pressing '>') the tag will be completed. If you press '>' twice it will
" complete the tag and place the cursor in the middle of the tags on it's own
" line.
Bundle "sukima/xmledit"
map <Leader>x :set filetype=xml<CR>
  \:set foldmethod=syntax<CR>

