# List and find files
## Find files by name
Recursive from a starting directory:

	find . -name "*tmpfs*"
	
## Find in files
	grep -rnw . -e 'tmpfs'
	
Only c-file types:
	grep --include=\*.{c,h} -rnw . -e 'tmpfs'
	
Link describing some handy usages of grep: https://www.thegeekstuff.com/2009/03/15-practical-unix-grep-command-examples/
