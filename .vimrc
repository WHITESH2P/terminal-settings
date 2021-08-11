" vim setting
set number                            " 행번호 표시, set nu 도 가능
set expandtab                         " 탭대신 스페이스
set smarttab                          " 스페이스로 된 탭을 한번에 지움
set tabstop=4                         " 탭을 4칸으로
set shiftwidth=4                      " 자동 들여쓰기 4칸
filetype indent on                    " 파일 종류에 따라 탭간격조정
set autoindent                        " 자동 들여쓰기
set hlsearch                          " 검색어 강조, set hls 도 가능
set incsearch                         " 키워드 입력시 점진적 검색
set ignorecase                        " 검색시 대소문자 무시
set smartcase                         " 검색어에 대문자가 포함되어 있으면 대소문자 무시하지 않음
set list listchars=tab:»\ ,trail:·
set laststatus=2                      " 상태바 표시를 항상한다
set fileencodings=utf-8,euc-kr        " 파일저장인코딩
set termencoding=utf-8                " 터미널 인코딩
set wrap                              " 줄이 길어도 다음 줄로 넘기지 않음
set linebreak                         " 한 줄을 여러 줄로 표현할 때 단어 단위로 라인이 잘림
set showbreak=+++\                     " 여러 줄로 표현될 때 표시해줌
set showmatch                         " 짝에 맞는 괄호를 하이라이트
set backspace=indent,eol,start        " 줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set nocompatible                      " 오리지날 VI와 호환하지 않음
set noerrorbells visualbell t_vb=     " 소리 경고 음소거
set history=300                       " vi 편집기록 기억갯수 .viminfo에 기록
set langmap=ㅁa,ㅠb,ㅊc,ㅇd,ㄷe,ㄹf,ㅎg,ㅗh,ㅑi,ㅓj,ㅏk,ㅣl,ㅡm,ㅜn,ㅐo,ㅔp,ㅂq,ㄱr,ㄴs,ㅅt,ㅕu,ㅍv,ㅈw,ㅌx,ㅛy,ㅋz
set lazyredraw                        " 매크로가 끝나면 화면 갱신
set mps+=<:>                          " 괄호 매칭 추가
set wildignorecase                    " 파일명이나 디렉토리명을 자동완성할 때 대소문자 무시
set wildmenu                          " command-line 자동완성 편리하게 확장
set whichwrap+=h,l
set nowrapscan                        " 검색할 때 문서의 끝에서 처음으로 안돌아감
set nobackup                          " 백업 파일을 안만듬
set noswapfile
highlight Comment term=bold cterm=bold ctermfg=4 " 코멘트 하이라이트

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'AutoClose'
Plugin 'phanviet/vim-monokai-pro'
"Plugin 'nanotech/jellybeans.vim'
call vundle#end()

if has("syntax")
    syntax on                         " 문법 on
endif

set background=dark                   " 배경색 lihgt / dark
""colorscheme jellybeans
set termguicolors
colorscheme monokai_pro
let g:lightline = {
    \ 'colorscheme': 'monokai_pro',
    \ }

map <F1> :tabnew<cr>
map <F3> :NERDTreeToggle<cr>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

command Hnw set number! list!
command Snw set number list
