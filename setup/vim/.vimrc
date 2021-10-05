"Searching
set hlsearch
set incsearch

"Custom color scheme (for vmdiff as of now)
colorscheme toubiscolorscheme

"Indentation 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
filetype plugin indent on

"Macros
"Search & Replace
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
