vim.g.mapleader = ' '

local keymap = vim.keymap

keymap.set('i','jj','<Esc>')

keymap.set('n','<C-h>','<C-w-h>')
keymap.set('n','<C-j>','<C-w-j>')
keymap.set('n','<C-k>','<C-w-k>')
keymap.set('n','<C-l>','<C-w-l>')

