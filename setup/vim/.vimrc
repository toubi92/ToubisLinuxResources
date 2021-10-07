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

"Pick up where you left off
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

"Don't do auto-comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Macros
"Search & Replace
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
