" Title:        TopHat
" Description:  An example neovim plugin
" Maintainer:   Donovan Hubbard <github.com/donovanhubbard>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_tophat")
    finish
endif
let g:loaded_tophat = 1

" Exposes the plugin's functions for use as commands in Neovim.
command! -nargs=0 TopHatWelcome lua require("tophat").welcome()
command! -nargs=0 TopHatPrint lua print("Hello World")
