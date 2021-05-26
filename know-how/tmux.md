# Working with tmux
Detach from current session (without killing it)

	"Ctrl+b" -> "d"

## tmux-continuum

## tmux-resurrect
Restore previous session (https://github.com/tmux-plugins/tmux-resurrect/blob/master/docs/restoring_previously_saved_environment.md)

	cd ~/.tmux/resurrect/
	ln -sf <file_name> last
	tmux-resurrect
	prefix + Ctrl-r
