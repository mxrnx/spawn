# spawn
Template spawning for fish.

## Install
### With [fisher](https://github.com/fisherman/fisherman)
Easy: `fisher add knarka/spawn`

### Manually
Copy this repository's functions/spawn.fish to your .config/fish/functions/ folder

## Usage
* `spawn Makefile` spawns the `Makefile` template in your current directory.
* `spawn raedme README` spawns the `raedme` template in your current directory as `README`.
* `spawn -a .gitignore` adds the file `.gitignore` in your current directory as a template by the same name.
* `spawn -a Gemfile gf` adds the file `Gemfile` in your current directory as a template by the name of `gf`.
* `spawn -d main.c` removes the `main.c` template.

Currently, the template folder isn't customizable, but I'm planning on changing that in the future.

## License
See LICENSE
