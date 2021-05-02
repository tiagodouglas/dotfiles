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
Plugin 'Shougo/deoplete.nvim'

call vundle#end()

colorscheme dracula

let g:rainbow_active = 1
let g:OmniSharp_translate_cygwin_wsl = 1
let g:ale_linters = { 'cs': ['OmniSharp'] }
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1

map <C-n> :NERDTreeToggle<CR>
nnoremap <F12> :OmniSharpGotoDefinition<cr>
nnoremap gd :OmniSharpGotoDefinition<cr>
nnoremap fi :OmniSharpFindImplementations<cr>
nnoremap fu :OmniSharpFindUsages<cr>
"nnoremap <C-o><C-u> :OmniSharpFindUsages<CR>
"nnoremap <C-o><C-d> :OmniSharpGotoDefinition<CR>
"nnoremap <C-o><C-d><C-p> :OmniSharpPreviewDefinition<CR>

inoremap <expr> <Tab> pumvisible() ? '<C-n>' :
\ getline('.')[col('.')-2] =~# '[[:alnum:].-_#$]' ? '<C-x><C-o>' : '<Tab>'

filetype plugin on
filetype plugin indent on 
set nocompatible
set number
set relativenumber
syntax on
syntax enable

