"Introduce a recently written vim plugin for GTD, basically it’s just the TextMate Tasks Bundle port for Vim.
"
"Headers end with a colon (“:”).
"Pending (uncompleted) tasks start with a hyphen (“-”). Completed tasks start with a checkmark (“✓”).
"Headers and tasks can be indented for grouping/hierarchy, as seen in the screenshot above
Bundle "samsonw/vim-task"

inoremap <silent> <buffer> <leader>mc <ESC>:call Toggle_task_status()<CR>
noremap <silent> <buffer> <leader>mc :call Toggle_task_status()<CR>
autocmd BufNewFile,BufRead todo.txt,*.task,*.tasks  setfiletype task

"! ,mc || toggle task status (mark complete)
