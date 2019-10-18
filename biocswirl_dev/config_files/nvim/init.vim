##taken from https://gist.github.com/tgirke/7a7c197b443243937f68c422e5471899


""""""""""""""""""""""
"""Nvim config file"""
""""""""""""""""""""""
" Save this file to ~/.config/nvim/init.vim

" Fixes weird character problem in some devel versions neovim under tmux sesssion. This might go away in future.
set guicursor=

" Uses color scheme southernlights from Jakson Alves de Aquino here: https://github.com/jalvesaq/southernlights
" To enable it, save file southernlights.vim to ~/.config/nvim/colors/ 
colorscheme southernlights

" Preferred default settings
set nowrap

" start R with F2 key
" map <F2> <Plug>RStart 
" imap <F2> <Plug>RStart
" vmap <F2> <Plug>RStart
" R version can be specified like this:
" let vimrplugin_r_path = "/opt/R/3.1.2-release/bin/R"
" Send selection or line to R with space bar, respectively.
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

" Shortcut for R's assignment operator: 0 turns it off; 1 assigns underscore; 2 assigns two underscores
let R_assign = 2

" Ensures usage of your own ~/.tmux.conf file
let R_notmuxconf = 1

" Shows function arguments in a separate viewport during omni completion with Ctrl-x Ctrl-o:w
let R_show_args = 1

" Use Ctrl-Space to do omnicompletion
inoremap <C-Space> <C-x><C-o>

" Remove white background of status line at bottom of nvim viewport (default is 2)
set laststatus=1

"let R_in_buffer = 0
"let R_tmux_split = 1
"let R_applescript = 0
"let R_tmux_close = 0

" The following provides a zoom functionality, similar to Tmux's Ctrl-a z, by pressing 'gz' in normal mode. 
function ZoomWindow()
        let cpos = getpos(".")
        tabnew %
        redraw
        call cursor(cpos[1], cpos[2])
        normal! zz
    endfunction
    nmap gz :call ZoomWindow()<CR>
