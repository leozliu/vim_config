let mapleader=";"
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

nmap LB 0
nmap LE $
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <C-l> <C-W>l
" 跳转至左方的窗口
nnoremap <C-h> <C-W>h
" 跳转至上方的子窗口
nnoremap <C-k> <C-W>k
" 跳转至下方的子窗口
nnoremap <C-j> <C-W>j

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
set encoding=utf8

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 设置 gvim 显示字体
"set guifont=YaHei\ Consolas\ Hybrid\ 14

" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim 
set rtp+=~/.vim/bundle/molokai
set rtp+=~/.vim/bundle/vim-colors-solarized
set rtp+=~/.vim/bundle/vim-powerline
set rtp+=~/.vim/bundle/vim-go
"set rtp+=/usr/lib/python2.6/site-packages/powerline/bindings/vim

" 配色方案
set background=dark
colorscheme solarized
"colorscheme molokai

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
"let g:Powerline_theme = 'solarized256'
let g:Powerline_symbols= 'unicode'

"Go 
let g:go_version_warning = 0

" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'Lokaltog/vim-powerline'
Plugin 'fatih/vim-go'

" 插件列表结束
call vundle#end()
filetype plugin indent on
