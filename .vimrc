:autocmd BufRead,BufNewFile *.cmake,CMakeLists.txt,*.cmake.in runtime! indent/cmake.vim 
:autocmd BufRead,BufNewFile *.cmake,CMakeLists.txt,*.cmake.in setf cmake
:autocmd BufRead,BufNewFile *.ctest,*.ctest.in setf cmake
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl
au BufNewFile,BufRead *.cl set filetype=opencl
autocmd BufRead,BufNew,BufNewFile,BufCreate *.osl set filetype=osl 
call pathogen#infect()
syntax on
set number
set mouse=a
set smartindent

set completeopt=menu,menuone,longest
" Limit popup menu height
set pumheight=15

" clang stuff
" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType = "context"
       
" Enable auto popup, use <Tab> to autocomplete
let g:clang_complete_auto = 1
" Show clang errors in the quickfix window
let g:clang_complete_copen = 1
