" Vim entry point for the habamax.nvim colorscheme.
"
" Vim's :colorscheme only sources colors/<name>.vim and never reads
" colors/<name>.lua, so without this file :colorscheme habamax.nvim fails
" with E185 on Vim. The vimcompat layer supplies vim.opt and, because
" habamax hard-requires rktjmp/lush.nvim (which is Neovim-only), also
" provides a minimal Vim-compatible 'lush' implementation.
"
" On Neovim this file may be sourced in preference to
" colors/habamax.nvim.lua, so hand straight back to the Lua entry point to
" guarantee one behavior.

if has("nvim")
  silent! runtime colors/habamax.nvim.lua
  finish
endif

if exists("syntax_on")
  syntax reset
endif
highlight clear

lua << EOF
if vim.fn.has('nvim') == 0 then
  local ok = pcall(require, 'vimcompat')
  if ok then
    require('vimcompat').setup()
  end
  vim.opt.background = 'dark'
end

-- Never let a colorscheme raise; report instead of leaving Vim in a
-- half-loaded state.
local ok = pcall(function()
  require('lush')(require('lush_theme.habamax'))
end)
if not ok then
  vim.cmd('echohl ErrorMsg | echomsg "habamax.nvim: failed to load on Vim" | echohl None')
end
EOF

let g:colors_name = "habamax.nvim"