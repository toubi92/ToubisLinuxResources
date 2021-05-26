# Working with GDB
Currently an addendum to my hand-written notes

## Export variables

	set environment LD_PRELOAD ./yourso.so

## Symbol resolution

	set print symbol-filename on
	
## Test-User Interface (TUI)
Enter with Ctrl+x -> a

Usage:

	https://sourceware.org/gdb/current/onlinedocs/gdb/TUI-Keys.html

## App arguments

	set args [arguments]
	
More info: https://visualgdb.com/gdbreference/commands/set_args