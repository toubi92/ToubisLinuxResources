# Cool vim shit
https://gist.github.com/azadkuh/5d223d46a8c269dadfe4#vimdiff

## Cut, copy paste
Select content with `v` (character selection) or `V` (line selection)
`d` - cut
`y` - copy
`p` - paste

In command mode, paste a buffer into command line using Ctrl+R - 0 (or another number)

## Indentation
In Vim in Linux you can unindent multiple lines by using `v` to select your first line. 
Press the down arrow to select multiple lines. Then type `<` to unindent all of the lines.

## Find & Replace
https://vim.fandom.com/wiki/Search_and_replace
Replace 'foo' by 'bar'

	:%s/foo/bar/g
	
## Quickfix
Sth like a list of files and occurrences, e.g. if you use `:vim PATTERN FILES`

https://vi.stackexchange.com/questions/7233/how-to-go-to-the-next-grep-result

### Find & replace in multiple files with Quickfix
https://vi.stackexchange.com/a/10310

	:cd {path to project root}
	:vimgrep /Sam/gj **/*
	:cfdo %s/Sam/Bob/g | update

## VIM File Manager
	vifm
	
https://vifm.info/

## VIM diff viewer
vimdiff
