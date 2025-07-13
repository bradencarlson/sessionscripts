vim9script noclear

# Vim plugin for loading user defined functions when opening session files. 
# Maintainer: Braden Carlson <bradenjcarlson@live.com>
# License: This file is placed in the public domain. 

if exists("g:loaded_sessionfunctions")
        finish
endif
g:loaded_sessionfunctions = 1

# Define the default (local) path where scripts will be loaded from. 
var script_suffix = "/.vim/scripts"

# Defines an autocommand which is run upon opening a vim session file. After the
# session file is loaded, the LoadScripts function is called. 
augroup sessionfunctions_group
        au! sessionfunctions_group
        au sessionfunctions_group SessionLoadPost * call LoadScripts()
augroup END

# For each script found, source it. 
def LoadScripts(): void
        var current_dir = execute('pwd')
        current_dir = substitute(current_dir, "\n", "", "ge")
        var script_dir = current_dir .. script_suffix
        for s in globpath(script_dir, "*.vim", false, true)
                execute 'source ' .. s
        endfor
enddef

