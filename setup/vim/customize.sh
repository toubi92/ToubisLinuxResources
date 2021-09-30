#!/bin/bash
mkdir -p ~/.vim/colors
cat <<EOF > ~/.vim/colors/toubiscolorscheme.vim
hi clear Normal
set bg&
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "default"

set t_Co=256
highlight DiffAdd    ctermfg=10 ctermbg=17
highlight DiffDelete ctermfg=10 ctermbg=17
highlight DiffChange ctermbg=10 ctermfg=17
highlight DiffText   ctermfg=10 ctermbg=blue
EOF

