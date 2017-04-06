function spawn --description 'spawn a file from template'
	set -l spawndir (string join '' $HOME '/.config/fisherman/spawn/templates')
	set -l usage "Usage: spawn <template name> [optional new name]"\n"OR spawn -a <file to template> [optional new name]"\n"OR spawn -d <template name>"
	if not test -e $spawndir
		mkdir $spawndir
	end
	if test -z $argv[1]
		echo $usage
		return
	end
	if test $argv[1] = "-a"
		if test (count $argv) -lt 2; echo $usage; return; end
		if not test -e $argv[2]
			echo 'File does not exist'
			return
		end
		cp $argv[2] (string join '/' $spawndir $argv[(count $argv)])
	else if test $argv[1] = "-d"
		if test (count $argv) -lt 2; echo $usage; return; end
		set -l template (string join '/' $spawndir $argv[2])
		if not test -e $template
			echo 'Template does not exist'
			return
		end
		rm $template
	else
		set -l template (string join '/' $spawndir $argv[1])
		if test -z $template
			echo 'Template does not exist'
			return
		end
		cp $template (string join '/' (pwd) $argv[(count $argv)])
	end
end
