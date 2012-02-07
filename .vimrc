" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
" filetype plugin on

" **** Begin vundle config ****
" Some options for vundle plugin manager: 
filetype off
set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" ** My Bundles **

Bundle 'snipMate'
Bundle 'molokai'
Bundle 'The-NERD-tree'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'taglist.vim'
Bundle 'vim-pandoc'
filetype plugin indent on     " required! 
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..


" ******* End of vundle config ********


" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash


" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Turn on line numbers
set number

" save .swp files in /tmp to avoid pollution of working dir
"set dir = ~/tmp

" Highlight searches
set hlsearch

" Autoincrement searches
set incsearch

" Colorscheme
"colors wombat256
colors molokai
" set 256 colors in terminal
set t_Co=256

" set up alternate vim a.vim header file completion
let g:alternateExtensions_CPP = "inc,h,H,HPP,hpp"

" EnhancedCommentify options
let g:EnhCommentifyUseAltKeys = 'yes'
let g:EnhCommentifyTraditionalMode = 'N'



"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"set tags+=~/.vim/tags/qt4
" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
