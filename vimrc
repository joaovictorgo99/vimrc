"editor
filetype plugin indent on
syntax enable
set encoding=utf-8
set nocompatible
set title
set cursorline
set showmode
set showcmd
set wildmenu
set cmdheight=2
set history=50
set autoread
set backspace=eol,start,indent
set whichwrap+=<,>,h,l,[,]
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set number
set nowrap
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set hlsearch
set incsearch
set ignorecase
set smartcase
set foldmethod=indent
set nofoldenable
"terminal
set termguicolors
set mouse=a
set splitright
set splitbelow
"theme
set background=dark
packadd! dracula
colorscheme dracula
"statusline
set statusline=
set statusline+=\ [%n]\ %F\ %m%r%h%w
set statusline+=%=
set statusline+=\ %{&filetype}\ %{&fileencoding}\ %{&fileformat}
set statusline+=\ ln\ %l\ col\ %v\ %P\  
set laststatus=2
"functions
function! TabCompletion(direction)
	let col = col('.')-1
	if !col || getline('.')[col-1] !~ '\k'
		return "\<tab>"
	elseif "backward" == a:direction
		return "\<c-p>"
	else
		return "\<c-n>"
	endif
endfunction
"remaps
inoremap ( ()<Esc>ha
inoremap { {}<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap <tab> <c-r>=TabCompletion("forward")<cr>
inoremap <s-tab> <c-r>=TabCompletion("backward")<cr>
"autocmds
autocmd! VimEnter * :Minimap
autocmd! VimLeave * :MinimapClose
