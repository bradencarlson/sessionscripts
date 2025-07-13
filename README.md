# Session Scripts

Vim session files do not save functions that you have defined or scripts that
you have sourced. As a result, the next time you load that session file, any
scripts you have devloped specifically for that project must be sourced again. 

This plugin allows you to save project specific scripts in a directory located
in the same directory as the session file, which will be automatically loaded
when the session file is opened. For example, suppose you have some directory
named `project` which has the following structure: 
```
project/ 
    editing.vim
    main.tex
    chapter-1.tex
    chapter-2.tex
    chapter-3.tex
    sources.bib
    get-sources.vim
```
where `editing.vim` is a vim session file in which you perform your edits, and
`get-sources.vim` is a script which contains a function you have written to 
look up the differenct sources listed in you `sources.bib` file, for when you 
are citing work in your .tex files. To have this plugin load the script 
automatically upon opening the `source.vim` file, simply perform the following 
steps
```
cd project/ 
mkdir .vim/scripts
mv get-sources.vim .vim/sources/
```
The next time you open `editing.vim`, the `get-sources.vim` script will
automatically be loaded. 

## Installation

Copy the `sessionscripts.vim` file to `~/.vim/plugins` and the
`sessionscripts.txt` file to `~/.vim/doc`.  After copying the
`sessionscripts.txt` file, in Vim run the command `:helptags ~/.vim/doc` to
build the help tags. 

## Getting Help

After performing the installation steps, to view the help page for this plugin
run `:help sessionscripts` in Vim. 
