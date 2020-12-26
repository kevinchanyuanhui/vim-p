" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" 目录🌲
Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'

" 主题🎨
Plug 'rakr/vim-one'
" Plug 'joshdick/onedark.vim'
" Plug 'altercation/vim-colors-solarized'

" 状态栏
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline-themes'

" JS 
" Plug 'morhetz/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'marijnh/tern_for_vim'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" 代码对齐线
Plug 'yggdroot/indentline'

" 代码提示
Plug 'w0rp/ale'

" 自动补全
Plug 'valloric/youcompleteme'

" 注释
Plug 'scrooloose/nerdcommenter'

" 符号转换
Plug 'tpope/vim-surround'

" 双括号
Plug 'jiangmiao/auto-pairs'

" 对齐
Plug 'godlygeek/tabular'

" 提纲
Plug 'majutsushi/tagbar'
Plug 'ramitos/jsctags'

" 搜索
Plug 'kien/ctrlp.vim'

" Initialize plugin system
call plug#end()


" ****** basic set ******

" 基本设置
set number
set hls

" 编码
set encoding=utf-8

"语法高亮
syntax on
syntax enable

" 缩进设置
set shiftwidth=2                " 设置格式化时代码缩进为2个空格
set tabstop=2                   " tab键缩进为4格子
set expandtab                   " tab键转换为空格
set smartindent                 " 智能缩进
set incsearch                   " 开启实时搜索功能
set ignorecase                  " 搜索时大小写不敏感
set wildmenu                    " vim 自身命令行模式智能补全


" 代码折叠
set nofoldenable
"set foldmethod=indent
set foldmethod=syntax

" 使用系统剪切板
set clipboard=unnamed 

" mac ctags
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1

" ****** plugin set ******

" tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
let g:tagbar_type_javascript = {
      \ 'ctagsbin' : 'jsctags'
      \ }

" 主题设置
let g:airline_powerline_fonts = 1
set background=dark
" set background=light
" colorscheme solarized
colorscheme one
let g:airline_theme='one'
" colorscheme onedark
" let g:airline_theme='onedark'
" colorscheme gruvbox
" set background=dark 

" nerdtree 配置
" NERDTree
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" 显示行号
" let NERDTreeShowLineNumbers=1
" let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1
" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree


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
let g:ale_set_highlights = 0
" 自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
let g:ale_fix_on_save = 1
" 在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
" 显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
"nmap sp <Plug>(ale_previous_wrap)
"nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
"nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
"nmap <Leader>d :ALEDetail<CR>


" airline
" 打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Syntastics
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eslint']

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let javascript_enable_domhtmlcss = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END

" youcompleteme 
if !exists("g:ycm_semantic_triggers")
 let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

" ctrlp
let g:ctrlp_show_hidden=1 "显示隐藏文件
" 忽略一下文件类型
let g:ctrlp_custom_ignore = {
       \ 'dir':  '\.git$\|\.hg$\|\.svn$\|node_modules$',
      \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

" indentline
let g:indentLine_color_term = 239 "对齐线颜色
" let g:indentLine_char = 'c' "对齐线符号, c表示任意ASCII码字符, 你还可以用下面这几个符号之一:  ¦, ┆, │, ⎸, 或 ▏

" nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" ****** 快捷键  ******

let mapleader=","
nmap <F5> :NERDTreeToggle<CR>
nmap <F6> :TagbarToggle<CR>
