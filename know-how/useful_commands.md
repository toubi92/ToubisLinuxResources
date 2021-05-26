# Useful commands
	findmnt
Shows a list of all mounts ("drives") with tree hierarchy

## Search in the history
	history | grep findmnt

Once found, you can look at the commands before and after like this:
(Prints 10 lines starting at line 471)

	history | grep -A 10 -w 471
	
## Setup information
	uname -a
	cat /proc/version
	hostnamectl
	
## C debugging
Get listing
Compile with '-g -DDEBUG'

	objdump -S kit/odk.o
	
	
## Git
	git config --global credential.helper store
	
## Disk usage
	sudo du -sh /local/home/tobiasri/work/NOVA/linux-nova/drivers/* | sort -h