" Run "git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim""
" and "ln -s ~/.vim/.vimrc ~/.vimrc" to install vundle and this config.
" vundle

" needed to run vundle (but i want this anyways)
set nocompatible

" vundle needs filtype plugins off
" i turn it on later
filetype plugin indent off
syntax off

" set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim

" start vundle environment
call vundle#begin()

" YOUR LIST OF PLUGINS GOES HERE LIKE THIS: 
Plugin 'bling/vim-airline' 
Plugin 'VundleVim/Vundle.vim'
Plugin 'somini/vim-autoclose'
Plugin 'ervandew/supertab'
Plugin 'nightsense/simplifysimplify'
"Plugin 'godlygook/csapprox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ARM9/mips-syntax-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'luchermitte/vim-compil-hints'
Plugin 'romgrk/winteract.vim'
"Plugin 'vim-scripts/ZoomWin'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/a.vim'
" add plugins before this
call vundle#end()

" now (after vundle finished) it is save to turn filetype plugins on






"winteract macros
nmap gw        :InteractiveWindow<CR>


"Colors and syntax 
:filetype plugin indent on
:syntax on
:let g:solarized_termcolors=256
:set background=dark
:colorscheme solarized 
:set number relativenumber


"Auto togle numbers/relativenumbers
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"indent size config
:set ts=2 sw=2 et


"Abreviaciones.
:ab pri printf(" ");
:ab sca scanf(" ", );
:ab inc #include <stdio.h>
:ab mai int main(  ) {} 
:ab for for (; ; ) {}  


"Navegacion entre ventanas
:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>
"maximizar/minimizar splits
":nnoremap <C-_> <C-W><C-_>
":nnoremap <C-|> <C-W><C-|>

:set splitbelow
:set splitright


"Configuracion de netrw
:let g:netrw_liststyle = 3
:let g:netrw_banner = 0
"
:set wildmenu
:set lazyredraw
:set ttyfast
:set incsearch
:set hlsearch
:set cursorline

:set foldmethod=manual

inoremap jk <esc>
inoremap - _
inoremap _ -
inoremap ' "
inoremap " '
inoremap null NULL
noremap j jzz
noremap k kzz
cnoremap Mks mks!<enter>
cnoremap vres vertical resize
