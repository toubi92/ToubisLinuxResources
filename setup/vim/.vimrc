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

"Powerline
set rtp+=$HOME/.local/lib/python3.8/site-packages/powerline/bindings/vim
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
