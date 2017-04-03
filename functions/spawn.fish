function spawn --description 'spawn a file from template'
	set -l spawndir (string join '' '/home/' (whoami) '/.config/fisherman/spawn/templates')
	if not test -e $spawndir
		mkdir $spawndir
	end
	if test -z $argv[1]
		echo 'Usage: spawn <template name> [optional new name]'
		return
	end
	set -l template (string join '/' $spawndir $argv[1])
	if not test -e $template
		echo 'Template does not exist'
		return
	end
	cp $template (string join '/' (pwd) $argv[(count $argv)])
end
