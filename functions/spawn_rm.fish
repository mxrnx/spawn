function spawn_rm --description 'remove a file from the list of templates'
	set -l spawndir (string join '' '/home/' (whoami) '/.config/fisherman/spawn/templates')
	if not test -e $spawndir
		mkdir $spawndir
	end
	if test -z $argv[1]
		echo 'Usage: spawn_rm <filename>'
		return
	end
	set -l template (string join '/' $spawndir $argv[1])
	if not test -e $template
		echo 'Template does not exist'
		return
	end
	rm $template
end
