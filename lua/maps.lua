vim.g.mapleader = " "
vim.g.maplocalleader = " "
--同步系统剪贴板
vim.o.clipboard=vim.g.unnamedplus

local map = vim.api.nvim_set_keymap
-- 复用 opt 参数
local opt = {noremap = true, silent = true }

map('i','jj','<Esc>',opt)
--窗口跳转
map('n','<C-h>','<C-w>h',opt)
map('n','<C-j>','<C-w>j',opt)
map('n','<C-k>','<C-w>k',opt)
map('n','<C-l>','<C-w>l',opt)
-- 上下滚动浏览
map("n", "<A-j>", "4j", opt)
map("n", "<A-k>", "4k", opt)
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<A-u>", "9k", opt)
map("n", "<A-d>", "9j", opt)
--insert模式下跳转到行首/行尾
map("i", "<A-h>", "<ESC>I", opt)
map("i", "<A-l>", "<ESC>A", opt)

-- Telescope
-- 查找文件
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- 全局搜索
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)

map("n", "<A-t>", ":NvimTreeToggle<CR>", opt)
-- 插件快捷键
local pluginKeys = {}
-- 列表快捷键
pluginKeys.nvimTreeList = {
  -- 打开文件或文件夹
  { key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit" },
  -- 分屏打开文件
  { key = "v", action = "vsplit" },
  { key = "h", action = "split" },
  -- 显示隐藏文件
  { key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
  { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
  -- 文件操作
  { key = "<F5>", action = "refresh" },
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "x", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
  { key = "s", action = "system_open" },
}

-- Telescope 列表中 插入模式快捷键
pluginKeys.telescopeList = {
  i = {
    -- 上下移动
    ["<C-j>"] = "move_selection_next",
    ["<C-k>"] = "move_selection_previous",
    ["<Down>"] = "move_selection_next",
    ["<Up>"] = "move_selection_previous",
    -- 历史记录
    ["<C-n>"] = "cycle_history_next",
    ["<C-p>"] = "cycle_history_prev",
    -- 关闭窗口
    ["<C-c>"] = "close",
    -- 预览窗口上下滚动
    ["<C-u>"] = "preview_scrolling_up",
    ["<C-d>"] = "preview_scrolling_down",
  },
}

return pluginKeys
