
   """vim bundle 
   set nocompatible              " 去除VI一致性,必须
   filetype off                  " 必须

   " 设置包括vundle和初始化相关的runtime path
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
   " 另一种选择, 指定一个vundle安装插件的路径
   "call vundle#begin('~/some/path/here')

   " 让vundle管理插件版本,必须
   Plugin 'VundleVim/Vundle.vim'

   """""""""""""""三种插件配置方式""""""""""""
   " Github上的插件
   " 格式为 Plugin '用户名/插件仓库名'
   Plugin 'tpope/vim-fugitive'
   Plugin 'scrooloose/nerdtree'
   "Plugin 'Valloric/YouCompleteMe'
   Plugin 'Raimondi/delimitMate'
   Plugin 'Chiel92/vim-autoformat'

   """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   " 来自 http://vim-scripts.org/vim/scripts.html 的插件
   " Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
   Plugin 'L9'

   """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   " 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
   "Plugin 'git://git.wincent.com/command-t.git'
   " 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
   "Plugin 'file:///home/gmarik/path/to/plugin'
   " 插件在仓库的子目录中.
   " 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
   "Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
   " 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
   "Plugin 'ascenator/L9', {'name': 'newL9'}


   " 你的所有插件需要在下面这行之前
   call vundle#end()            " 必须
   filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
   " 忽视插件改变缩进,可以使用以下替代:
   "filetype plugin on
   "
   " 简要帮助文档
   " :PluginList       - 列出所有已配置的插件
   " :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
   " :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
   " :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
   "
   " 查阅 :h vundle 获取更多细节和wiki以及FAQ
   " 将你自己对非插件片段放在这行之后
   """

"""自动打开NERDTree
"autocmd vimenter * NERDTree

"augroup filetype
"    autocmd! BufRead,BufNewFile BUILD set filetype=blade
"augroup end
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set encoding=utf-8
set nu
set expandtab
set ts=4
set sw=4
set sts=4
set tw=100
"set tags+=/home/jiapeng/waimai/logistics_zb/csmain/src/tags
set tags+=/home/map/waimai/logistics_zb/tags
"execute pathogen#infect()
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Sort_Type="name"

"set cursorcolumn 
set cursorline
"highlight CursorLine  cterm=NONE ctermbg=black ctermfg=DarkRed guibg=NONE guifg=NONE
"highlight CursorColumn  cterm=NONE ctermbg=black ctermfg=Green guibg=NONE guifg=NONE

"if has("autocmd")
"        au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"        au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"        au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"endif

"新建文件自动添加注释
autocmd BufNewFile *.c,*.cpp,*.sh,*.py,*.java exec ":call SetTitle()"
"定义函数SetTitle，自动插入文件头
func SetTitle()
        "如果文件类型为.c或者.cpp文件
        if (&filetype == 'c' || &filetype == 'cpp')
                call setline(1,"/*************************************************************************")  
                call setline(2, "\ @Author: jiapeng.wen(jiapeng.wen@ele.me)")  
                call setline(3, "\ @Created Time : ".strftime("%c"))  
                call setline(4, "\ @File Name: ".expand("%"))  
                call setline(5, "\ @brief:")  
                call setline(6, "************************************************************************/")  
                call setline(7,"")  
        endif
        "如果文件类型为.sh文件
        if &filetype == 'shell'  
                call setline(1, "\#!/bin/sh")
                call setline(2, "\# Author: jiapeng.wen")
                call setline(3, "\# Created Time : ".strftime("%c"))
                call setline(4, "\# File Name: ".expand("%"))
                call setline(5, "\# Description:")
                call setline(6,"")
        endif
        "如果文件类型为.py文件
        if &filetype == 'python'
                call setline(1, "\#!/usr/bin/env python")
                call setline(2, "\# -*- coding=utf8 -*-")
                call setline(3, "\"\"\"")
                call setline(4, "\# Author: jiapeng.wen")
                call setline(5, "\# Created Time : ".strftime("%c"))
                call setline(6, "\# File Name: ".expand("%"))
                call setline(7, "\# Description:")
                call setline(8, "\"\"\"")
                call setline(9,"")
        endif
 "如果文件类型为.java文件
        if &filetype == 'java'  
                call setline(1, "//coding=utf8")  
                call setline(2, "/**")  
                call setline(3, "\ *\ @Author: jiapeng.wen")  
                call setline(4, "\ *\ @Created Time : ".strftime("%c"))  
                call setline(5, "\ *\ @File Name: ".expand("%"))  
                call setline(6, "\ *\ @Description:")  
                call setline(7, "\ */")  
                call setline(8,"")  
        endif
endfunc
" 自动将光标移动到文件末尾
autocmd BufNewfile * normal G

                
