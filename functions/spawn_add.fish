function spawn_add --description 'add a file to the list of templates'
	set -l spawndir (string join '' '/home/' (whoami) '/.config/fisherman/spawn/templates')
	if not test -e $spawndir
		mkdir $spawndir
	end
	if test -z $argv[1]
		echo 'Usage: spawn_add <filename> [optional new name]'
		return
	end
	if not test -e $argv[1]
		echo 'File does not exist'
		return
	end
	cp $argv[1] (string join '/' $spawndir $argv[(count $argv)])
	echo $spawndir
end
