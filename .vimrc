"=============================================================================
"     FileName: .vimrc
"         Desc: 
"       Author: ZLove
"        Email: ZuLoveSun@Gmail.com
"     HomePage: http://zulove.github.com
"      Version: 0.0.1
"   LastChange: 2013-03-11 21:52:37
"      History:
"============================================================================="

"-------------------本配置涉及的plugin----------------------------------------"
"---------------------snipmate------------------------------------------------"
"---------------------lang_complete-------------------------------------------"
"---------------------nerdcommenter-------------------------------------------"
"---------------------AuthorInfoDetect----------------------------------------"
"---------------------Ctags---------------------------------------------------"
"---------------------Taglist-------------------------------------------------"
"---------------------Supertab------------------------------------------------"
"---------------------python_pydiction----------------------------------------"
"---------------------Cscope--------------------------------------------------"
"---------------------NERDTree------------------------------------------------"
"---------------------winmanager----------------------------------------------"
"---------------------PowerLine	----------------------------------------------"
"---------------------a.vim---------------------------------------------------"
"---------------------DoxygenToolkit------------------------------------------"
"-----------------------------------------------------------------------------"

:set langmenu=zh_CN.UTF-8                 "设置菜单语言
:set number                             "设置行号
:syntax enable
:syntax on                              "自动语法高亮
:colorscheme blackboard                 "着色模式：蓝色背景
:set guioptions-=T                      "隐藏工具栏
:set guifont=Monaco\ 16                  "设置字体
:set nocompatible                       "关闭vi兼容模式
:set mouse=a                            "让vim支持鼠标
:set nocursorline                       "不突出显示当前行
:set ruler                              "打开状态栏标尺
:set shiftwidth=4                       "设定<<和>>命令移动时的宽度 4
:set softtabstop=4                      "按退格时可以一次删掉四个空格
":set tabstop=4                          "设定tab长度为4
:set writebackup                        "设置无备份
:set nobackup                           "覆盖文件时不备份
:set autochdir                          "自动切换当前目录为当前文件所在目录
:set ignorecase smartcase         "搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
:set incsearch                    "输入搜索内容时就显示搜索结果   
:set hlsearch                     "搜索时高亮显示被找到的文本
:set infercase
:set list                         "显示Tab符，使用>-替代
:set listchars=tab:>-,trail:-
:set laststatus=2                 "打开状态栏信息
:set cmdheight=2                  "命令行的高度，默认为1，这儿设置为2
:syntax enable                " 打开语法高亮
:syntax on                    " 开启文件类型侦测
:filetype indent on           " 针对不同的文件类型采用不同的缩进格式
:filetype plugin on           " 针对不同的文件类型加载对应的插件
:filetype plugin indent on    " 启用自动补全
:set completeopt=longest,menu
"----------------启用插件clang_complete----------------------"
let g:clang_auto_select = 1       "自动选择第一个但不选定
let g:clang_complete_use_library = 1
let g:clang_close_preview = 1     "选择后自动关闭预览
"------------------------------------------------------------"

"------------AuthorInfoDetect--------------------------------"
let g:vimrc_author='ZLove'
let g:vimrc_email='ZuLoveSun@Gmail.com'
let g:vimrc_homepage='http://zulove.github.com'
nmap <F4> :AuthorInfoDetect<cr>
"------------------------------------------------------------"

"---------------------Taglist--------------------------------"
map <F3> : Tlist<CR>  ""按下F3就可以呼出了
"let Tlist_Auto_Open = 1  "在启动VIM后，自动打开taglist窗口
:let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'  "设定ctags的位置
:let Tlist_Use_Right_Window=0 " 1为让窗口显示在右边，0为显示在左边
"let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表，设置为1时不同时显示>多个文件的tag，只显示当前文件的
"let Tlist_File_Fold_Auto_Close=1 "同时显示多个文件中的tag时，taglist只显示当前文件tag，>其他文件的函数列表折叠隐藏
:let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动退出vim
"let Tlist_Use_SingleClick= 1    " 缺省情况下，在双击一个tag时，才会跳到该tag定义的位置
"let Tlist_Process_File_Always=0  "是否一直处理tags.1:处理;0:不处理
:let Tlist_WinWidth = 30                " 40 cols wide, so i can (almost always) read my functions

"------------------------------------------------------------"
"------------------------cscope设置--------------------------"
:set cscopequickfix=s-,c-,d-,i-,t-,e-
 if has("cscope")
                set csprg=/usr/local/bin/cscope
                set csto=0
                set cst
                set nocsverb
                " add any database in current directory
                if filereadable("cscope.out")
                    cs add cscope.out
                " else add database pointed to by environment
                elseif $CSCOPE_DB != ""
                    cs add $CSCOPE_DB
                endif
                set csverb
endif
	nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"------------------------------------------------------------"
"---------------------Supertab配置---------------------------"
":let g:SuperTabRetainCompletionType=2
":let g:SuperTabDefaultCompletionType="<C-X><C-O>"
"------------------------------------------------------------"

"--------------Configure the plugin -python_pydiction--------"
if(has("win32") || has("win95") || has("win64") || has("win16"))
    let g:pydiction_location = 'D:\Program Files\Vim\vimfiles\tools\pydiction\complete-dict'
else
    let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
endif
"defalut g:pydiction_menu_height == 15
"let g:pydiction_menu_height = 20
"-----------------------------------------------------------"
"------------------------ BufExplorer ----------------------"
  noremap <F11> :BufExplorer<CR>
  "noremap <silent> <m-F11> :BufExplorerHorizontalSplit<CR>
  "noremap <silent> <c-F11> :BufExplorerVerticalSplit<CR>
  let g:bufExplorerSplitRight=0        " Split left.
  let g:bufExplorerSplitBelow=1        " Split new window below current.
"autocmd BufWinEnter \[Buf\ List\]
"setl nonumber
"------------------------------------------------------------"
"--------------------------winmanager------------------------"
let g:winManagerWindowLayout = "FileExplorer|TagList,BufExplorer"
let Tlist_Exit_OnlyWindow=1
let g:winManagerWidth = 30              "设置winmanager的宽度，默认为25
nmap <F8> :WMToggle<cr>        "定义打开关闭winmanager按键
"------------------------------------------------------------"
"-----------------------a.vim--------------------------------"

"------------------------------------------------------------"
"-------------Configure the plugin -NERDTree ----------------"
 let NERDChristmasTree=1
 let NERDTreeAutoCenter=1
 let NERDTreeBookmarksFile='~/.vim/Data/NerdBookmarks.txt'
 let NERDTreeMouseMode=2
 let NERDTreeShowBookmarks=1
 let NERDTreeShowFiles=1
 let NERDTreeShowHidden=1
 let NERDTreeShowLineNumbers=1
let NERDTreeWinPos = "left"                    "where NERD tree window is placed on the screen
let NERDTreeWinSize = 31                       "size of the NERD tree
"nmap <F8> <ESC>:NERDTreeToggle<RETURN>         " Open and close the NERD_tree.vim separately
"------------------------------------------------------------"
"------------------Powerline---------------------------------"
  "set nocompatible   " Disable vi-compatibility
  set laststatus=2   " Always show the statusline
  set encoding=utf-8 " Necessary to show Unicode glyphs
  set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
   let g:Powerline_cache_enabled = 0
"------------------------------------------------------------"
"------------------------DoxygenToolkit----------------------"
map <F9> : Dox<cr>
let g:DoxygenToolkit_authorName="ZLove, http://zulove.github.com"
let s:licenseTag = "Copyright(C)\<enter>"
"let s:licenseTag = s:licenseTag . "For free\<enter>"
"let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
"let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
:map <F2> a<C-R>=strftime("%c")<CR><ESC>
"-----------------------Gvim窗口最大化-----------------------"
if(has("win32") || has("win95") || has("win64") || has("win16"))
    au  GUIEnter * simalt ~x
else
    function Maximize_Window()
        silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
    endfunction
endif
"-----------------------------------------------------------"

