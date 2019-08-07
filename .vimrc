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
"Plugin 'bling/vim-airline' 
Plugin 'sheerun/vim-polyglot'
Plugin 'severin-lemaignan/vim-minimap' "Sublime Text like minimap
Plugin 'vim-utils/vim-man' "Man pages inside linux
Plugin 'kien/tabman.vim' "Tab manager
Plugin 'VundleVim/Vundle.vim' "Plugin manager
Plugin 'somini/vim-autoclose' "Close parenthesis, etc. automatically
Plugin 'ervandew/supertab'
Plugin 'nightsense/simplifysimplify'
Plugin 'altercation/vim-colors-solarized' "Solarized color scheme
Plugin 'ARM9/mips-syntax-vim' "Mips sintax
Plugin 'tpope/vim-fugitive'
Plugin 'romgrk/winteract.vim'
Plugin 'vhda/verilog_systemverilog.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'nightsense/carbonized'
Plugin 'Conque-GDB'
Plugin 'tpope/vim-eunuch'
Plugin 'junegunn/fzf.vim' "Fuzzy finder
Plugin 'dikiaap/minimalist' "Dark colour scheme
Plugin 'crusoexia/vim-monokai'
"Plugin 'fatih/vim-go'
" add plugins before this

call vundle#end()

" now (after vundle finished) it is save to turn filetype plugins on


"Save foldings
augroup remember_folds
    autocmd!
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent! loadview
augroup END



"winteract macros
nmap gw        :InteractiveWindow<CR>


"Colors and syntax 
:filetype plugin indent on
:syntax on
:let g:solarized_termcolors=256
:set background=dark
:colorscheme monokai
:set number relativenumber


"Auto togle numbers/relativenumbers
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"indent size config
:set ts=4 sw=4 et

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

"Navegacion entre ventanas
:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>
:nnoremap <C-/> I//<esc>
:nnoremap <C-#> I#<esc>
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
noremap j jzz
noremap k kzz
nnoremap <S-h> gT
nnoremap <S-l> gt

"TabMan
map<S-n> :TMToggle<CR>

"NerdTree
:function ToggleNTree()
:NERDTreeToggle<CR><C-w>=
:endfunction

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <C-n> :NERDTreeToggle<Bar>execute "normal! \<lt>C-w>="<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

cnoremap Mks mks!<enter>
cnoremap vres vertical resize

"syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1


let g:minimap_highlight='Visual'

