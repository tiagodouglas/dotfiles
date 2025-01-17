""" Add vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'airblade/vim-gitgutter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'mattn/emmet-vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'frazrepo/vim-rainbow'
Plugin 'preservim/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'moll/vim-node'
Plugin 'dense-analysis/ale'
Plugin 'Chiel92/Omnisharp'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'fatih/vim-go'
"Plugin 'Xuyuanp/nerdtree-git-plugin' 
"Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'itchyny/lightline.vim'
Plugin 'codota/tabnine-vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-scripts/darktango.vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'Shougo/vimproc.vim'

call vundle#end()

colorscheme codedark
"colorscheme dracula

let g:rainbow_active = 1
let g:OmniSharp_translate_cygwin_wsl = 1
let g:OmniSharp_CursorHoldSyntaxCheck = 0
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_smart_case = 1
"let g:neocomplcache_enable_camel_case_completion = 1
"let g:neocomplcache_enable_underbar_completion = 1
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusConcealBrackets = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline_powerline_fonts = 1
let g:airline_theme = 'codedark'
"let g:OmniSharp_selector_findusages = 'fzf'

let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_sign_info = '·'
let g:ale_sign_style_error = '·'
let g:ale_sign_style_warning = '·'
let g:ale_linters = { 'cs': ['OmniSharp'] }

let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0


map <C-n> :NERDTreeToggle<CR>
nnoremap <F12> :OmniSharpGotoDefinition<cr>
nnoremap gd :OmniSharpGotoDefinition<cr>
nnoremap fi :OmniSharpFindImplementations<cr>
nnoremap fu :OmniSharpFindUsages<cr>
nnoremap fx :OmniSharpFixUsings<cr>
nnoremap <C-o><C-u> :OmniSharpFindUsages<CR>
nnoremap <C-o><C-d> :OmniSharpGotoDefinition<CR>
nnoremap <C-o><C-d><C-p> :OmniSharpPreviewDefinition<CR>
cnoremap ls ls<cr>:b

inoremap <expr> <Tab> pumvisible() ? '<C-n>' :
\ getline('.')[col('.')-2] =~# '[[:alnum:].-_#$]' ? '<C-x><C-o>' : '<Tab>'

autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

filetype plugin on
filetype plugin indent on 
set nocompatible
set number
set relativenumber
syntax on
syntax enable
set encoding=UTF-8
set guifont=Powerline_Consolas:h11
set renderoptions=type:directx,gamma:1.5,contrast:0.5,geom:1,renmode:5,taamode:1,level:0.5
"set guifont=DroidSansMono\ Nerd\ Font\ 11

set completeopt=menuone,noinsert,noselect,popuphidden
set completepopup=highlight:Pmenu,border:off

set backspace=indent,eol,start
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=-1
set tabstop=8
set textwidth=80
set title

set hidden
set nofixendofline
set nostartofline
set splitbelow
set splitright

set hlsearch
set incsearch
set laststatus=2
set nonumber
set noruler
set noshowmode
set signcolumn=yes

set mouse=a
set updatetime=1000
