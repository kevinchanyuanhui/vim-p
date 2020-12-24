" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" 目录🌲
Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'

" 主题🎨
Plug 'rakr/vim-one'

" JS Plug
Plug 'morhetz/gruvbox'
Plug 'w0rp/ale'
Plug 'valloric/youcompleteme'

" Initialize plugin system
call plug#end()


" ****** basic set ******

syntax enable
syntax on
set autoindent
set number
set smartindent
set tabstop=2
set expandtab
set hlsearch
set encoding=utf-8

" 使用系统剪切板
set clipboard=unnamed 

" mac ctags
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1

" ****** plugin set ******

" 主题
let g:airline_theme='one'
" colorscheme one
colorscheme gruvbox
" for the dark version
set background=dark 
" for the light version
" set background=light 

" nerdtree 配置
let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree
"nerdtree git
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


" ale 配置
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1



