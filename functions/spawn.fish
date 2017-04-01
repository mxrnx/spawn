#!/usr/bin/env fish

function spawn --description 'spawn a file from template'
	set usage 'Usage: spawn <template name> [optional new name]'
	set spawndir (string join '' '/home/' (whoami) '/.config/spawn/')
	if not test -e $spawndir
		mkdir $spawndir
	end
	if test -z $argv[1]
		echo $usage
		return
	end
	set template (string join '' $spawndir $argv[1])
	if not test -e $template
		echo 'Template does not exist'
		return
	end
	cp $template (string join '/' (pwd) $argv[(count $argv)])
end
