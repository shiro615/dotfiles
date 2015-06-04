if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  let s:toml_dir = expand('~/.config/nvim')
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

: call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable


set autochdir
set autoindent
set ambiwidth=double
set background=dark
set tags=~/.tags
set noswapfile
set ruler
set cmdheight=2
set laststatus=2
set title
set wildmenu
set showcmd
set smartcase
set hlsearch
set expandtab
set incsearch
set hidden
set list
set listchars=tab:>\ ,extends:<
set number
set showmatch
set smartindent
set tabstop=2
set shiftwidth=2
set smarttab
set whichwrap=b,s,h,l,<,>,[,]
set clipboard+=unnamed
set backspace=indent,eol,start


nmap <ESC><ESC> :noh<CR>
nnoremap <silent> gp :bprevious<CR>
nnoremap <silent> gn :bnext<CR>
nnoremap <silent><C-e> :NERDTreeToggle<CR>


function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif
