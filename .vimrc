"===========환경 설정===============
filetype off     "파일의 종류를 자동으로 인식
filetype indent on "파일 종류에 따른 구문강조
syntax on

set shiftwidth=4  "들여쓰기를 2칸으로 설정
set tabstop=4     "tap 간격을 2칸으로 설정
set sts=4         "tap 간격을 space로 변경
set backspace=eol,start,indent      "줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set showmatch
set autoindent "자동 들여쓰기
set smartindent "스마트한 들여쓰기
set ruler "화면 우측하단에 현재 커서의 위치(줄,칸) 표시
set number "행번호 표시, set nu도 가능
set sm "가로닫기 괄호를 사용할 때 일치하는 가로 열기 괄호를 보여줌
set hlsearch "검색어 강조, set hls도 가능
set incsearch "검색어 입력하면서 결과도 보여줌
set ignorecase "검색시 대/소문자 무시
set nowrap "자동 줄바꿈기능 사용하지 않음
set nocompatible "오리지날 vi와 호환하지 않음
set nowrapscan "검색할 때 문서의 끝에서 처음으로 안돌아감
set nobackup "백업파일 안만듬
set history=1000 "vi 편집기록 기억갯수. viminfo에 기록
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Bundle 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

au BufNewFile,BufRead *.py
    \ set tabstop=4|
    \ set softtabstop=4|
    \ set shiftwidth=4|
    \ set textwidth=79|
    \ set expandtab|
    \ set autoindent|
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2|
    \ set softtabstop=2|
    \ set shiftwidth=2

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

let python_highlight_all=1

map <C-n> :NERDTreeToggle<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
set laststatus=2
set t_Co=256

