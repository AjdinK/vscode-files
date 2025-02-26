-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Ctrl+A to select all
map("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Ctrl+C to copy selected text
map("v", "<C-c>", '"+y', { desc = "Copy to system clipboard" })

vim.keymap.set("n", "<leader>pf", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "Format with Prettier" })

local Util = require("lazyvim.util")
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<leader>gd", function()
  Util.float_term(
    { "lazydocker", "-f", Util.get_root() .. "docker-compose.yml" },
    { cwd = Util.get_root(), esc_esc = false }
  )
end, { desc = "LazyDocker (root dir)" })

vim.keymap.set("n", "<leader>fr", ":FlutterRun<CR>", { desc = "Run Flutter App" })
vim.keymap.set("n", "<leader>fd", ":FlutterDevices<CR>", { desc = "Select Flutter Device" })
vim.keymap.set("n", "<leader>fq", ":FlutterQuit<CR>", { desc = "Quit Flutter App" })


vim.keymap.set('n', 'gt', '<cmd>tabnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'gT', '<cmd>tabprevious<CR>', { noremap = true, silent = true })

