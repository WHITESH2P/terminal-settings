" vim setting
set nocompatible                      " 오리지날 VI와 호환하지 않음
set wrap
set nowrapscan                        " 검색할 때 문서의 끝에서 처음으로 안돌아감
set nobackup                          " 백업 파일을 안만듬
set noswapfile
set ruler                             " 화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
set shiftwidth=4                      " 자동 들여쓰기 4칸
set number                            " 행번호 표시, set nu 도 가능
set fencs=ucs-bom,utf-8,euc-kr.latin1 " 한글 파일은 euc-kr로, 유니코드는 유니코드로
set fileencoding=utf-8                " 파일저장인코딩
set tenc=utf-8                        " 터미널 인코딩
set expandtab                         " 탭대신 스페이스
set hlsearch                          " 검색어 강조, set hls 도 가능
set ignorecase                        " 검색시 대소문자 무시, set ic 도 가능
set tabstop=4                         " 탭을 4칸으로
set lbr
set incsearch                         " 키워드 입력시 점진적 검색
set cursorline                        " 편집 위치에 커서 라인 설정
set laststatus=2                      " 상태바 표시를 항상한다
syntax on                             "  구문강조 사용
filetype indent on                    " 파일 종류에 따른 구문강조
set background=dark                   " 하이라이팅 lihgt / dark
set backspace=eol,start,indent        " 줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set history=1000                      " vi 편집기록 기억갯수 .viminfo에 기록
highlight Comment term=bold cterm=bold ctermfg=4 " 코멘트 하이라이트
set t_Co=256                          " 색 조정
set visualbell                        " 소리 경고 음소거
set t_vb=

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'AutoClose'
Plugin 'phanviet/vim-monokai-pro'
call vundle#end()
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

