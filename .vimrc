""""""""""""""""""""""""""""
""""" vim 기본 setting """""
""""""""""""""""""""""""""""
set number                                       " 행번호 표시, set nu 도 가능
set expandtab                                    " 탭대신 스페이스
set smarttab                                     " 스페이스로 된 탭을 한번에 지움
set tabstop=4                                    " 탭을 4칸으로
set shiftwidth=4                                 " 자동 들여쓰기 4칸
filetype indent on                               " 파일 종류에 따라 탭간격조정
filetype plugin on                               " 파일 종류에 따라 탭간격조정
if has("syntax")
  syntax on                                      " 문법 on
endif
set autoindent                                   " 자동 들여쓰기
set hlsearch                                     " 검색어 강조, set hls 도 가능
set incsearch                                    " 키워드 입력시 점진적 검색
set ignorecase                                   " 검색시 대소문자 무시
set smartcase                                    " 검색어에 대문자가 포함되어 있으면 대소문자 무시하지 않음
set list listchars=tab:»\ ,trail:·
set laststatus=2                                 " 상태바 표시를 항상한다
set fileencodings=utf-8,euc-kr                   " 파일저장인코딩
set termencoding=utf-8                           " 터미널 인코딩
set wrap                                         " 줄이 길어도 다음 줄로 넘기지 않음
set linebreak                                    " 한 줄을 여러 줄로 표현할 때 단어 단위로 라인이 잘림
set showbreak=+++\                               " 여러 줄로 표현될 때 표시해줌
set showmatch                                    " 짝에 맞는 괄호를 하이라이트
set backspace=indent,eol,start                   " 줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set nocompatible                                 " 오리지날 VI와 호환하지 않음
set noerrorbells visualbell t_vb=                " 소리 경고 음소거
set history=300                                  " vi 편집기록 기억갯수 .viminfo에 기록
set lazyredraw                                   " 매크로가 끝나면 화면 갱신
set mps+=<:>                                     " 괄호 매칭 추가
set wildignorecase                               " 파일명이나 디렉토리명을 자동완성할 때 대소문자 무시
set wildmenu                                     " command-line 자동완성 편리하게 확장
set whichwrap+=h,l
set nowrapscan                                   " 검색할 때 문서의 끝에서 처음으로 안 돌아감
set nobackup                                     " 백업 파일을 생성하지 않음
set noswapfile                                   " swp 파일을 만들지 않음
set noshowmode                                   " status를 표시하지 않음
set cursorline                                   " cursor line을 강조
set showtabline=2                                " 항상 탭 라인 표시
set background=dark                              " 배경색 lihgt / dark
set t_Co=256
if (has("termguicolors"))                        " 풀컬러 지원
  set termguicolors
endif
set splitbelow                                   " 화면 분할 시 아래에 생성
set splitright                                   " 화면 분할 시 오른쪽에 생성
set langmap=ㅁa,ㅠb,ㅊc,ㅇd,ㄷe,ㄹf,ㅎg,ㅗh,ㅑi,ㅓj,ㅏk,ㅣl,ㅡm,ㅜn,ㅐo,ㅔp,ㅂq,ㄱr,ㄴs,ㅅt,ㅕu,ㅍv,ㅈw,ㅌx,ㅛy,ㅋz
set updatetime=100                               " 업데이트 시간 100ms

"""""""""""""""""""""
""""" Plug list """""
"""""""""""""""""""""
call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'mhinz/vim-startify'
  Plug 'itchyny/lightline.vim'
  Plug 'mengelbrecht/lightline-bufferline'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/nerdcommenter'
  Plug 'majutsushi/tagbar'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'kien/ctrlp.vim'
  Plug 'morhetz/gruvbox'
  "Plug 'valloric/youcompleteme'
  "Plug 'scrooloose/syntastic'
call plug#end()

"""""""""""""""""""""""""""
""""" vim colorscheme """""
"""""""""""""""""""""""""""
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_signs = 1
colorscheme gruvbox
highlight! link SignColumn LineNr

" TO-DO
" youcompleteme
" syntastic

"""""""""""""""""""""""""""""""""""
""""" NERD Commenter Settings """""
"""""""""""""""""""""""""""""""""""
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDToggleCheckAllLines = 1

"""""""""""""""""""""""""""""""
""""" lightline 관련 설정 """""
"""""""""""""""""""""""""""""""
let g:lightline = {
  \ 'colorscheme': 'gruvbox',
  \ 'active': {
  \   'left': [ ['mode', 'paste'], ['gitbranch', 'readonly', 'filename', 'modified'] ]
  \ },
  \ 'tabline': {
  \   'left': [ ['buffers'] ],
  \   'right': [ ['close'] ]
  \ },
  \ 'component_expand': {
  \   'buffers': 'lightline#bufferline#buffers'
  \ },
  \ 'component_type': {
  \   'buffers': 'tabsel'
  \ },
  \ 'component_function': {
  \   'gitbranch': 'FugitiveHead'
  \ },
  \ }

"""""""""""""""""""""""""""""""""""""""""""""""""
""""" buffer/lightline-bufferline 관련 설정 """""
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline#bufferline#show_number  = 2
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'

nmap <Leader>1  <Plug>lightline#bufferline#go(1)
nmap <Leader>2  <Plug>lightline#bufferline#go(2)
nmap <Leader>3  <Plug>lightline#bufferline#go(3)
nmap <Leader>4  <Plug>lightline#bufferline#go(4)
nmap <Leader>5  <Plug>lightline#bufferline#go(5)
nmap <Leader>6  <Plug>lightline#bufferline#go(6)
nmap <Leader>7  <Plug>lightline#bufferline#go(7)
nmap <Leader>8  <Plug>lightline#bufferline#go(8)
nmap <Leader>9  <Plug>lightline#bufferline#go(9)
nmap <Leader>0  <Plug>lightline#bufferline#go(10)

nmap <Leader>c1 <Plug>lightline#bufferline#delete(1)
nmap <Leader>c2 <Plug>lightline#bufferline#delete(2)
nmap <Leader>c3 <Plug>lightline#bufferline#delete(3)
nmap <Leader>c4 <Plug>lightline#bufferline#delete(4)
nmap <Leader>c5 <Plug>lightline#bufferline#delete(5)
nmap <Leader>c6 <Plug>lightline#bufferline#delete(6)
nmap <Leader>c7 <Plug>lightline#bufferline#delete(7)
nmap <Leader>c8 <Plug>lightline#bufferline#delete(8)
nmap <Leader>c9 <Plug>lightline#bufferline#delete(9)
nmap <Leader>c0 <Plug>lightline#bufferline#delete(10)

nmap <Leader>t  :enew<CR>
nmap <Leader>bq :bp <BAR> bd #<CR>

""""""""""""""""""""""""""""""
""""" NERDTree 관련 설정 """""
""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1
map <F9>   <Esc>:NERDTreeToggle<CR>
map <C-F9> <Esc>:NERDTreeFocus<CR>
map <S-F9> <Esc>:NERDTree<CR>

""""""""""""""""""""""""""
""""" CtrlP Settings """""
""""""""""""""""""""""""""
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_user_command = [ 'git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard' ]
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_show_hidden = 1

""""""""""""""""""""""""""""
""""" Tagbar Settings  """""
""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""
""""" split navigations """""
"""""""""""""""""""""""""""""
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""""""""""""""""""""""""""""""
""""" 사용자 명령어 설정 """""
""""""""""""""""""""""""""""""
function! Term(...)
  if a:0 == 0
    term ++rows=10
  else
    execute "term ++rows=".a:1
  endif
endfunction

function! VTerm(...)
  if a:0 == 0
    vert term
  else
    execute "vert term ++cols=".a:1
  endif
endfunction

command Hnw            set number! list! cursorline!
command Snw            set number list cursorline
command VSLoad         :SLoad <bar> source ~/.vimrc
command -nargs=1 Vis   :source <args> <bar> source ~/.vimrc
command -nargs=? Term  call Term(<f-args>)
command -nargs=? VTerm call VTerm(<f-args>)

