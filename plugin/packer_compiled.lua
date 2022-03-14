-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/songtx/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/songtx/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/songtx/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/songtx/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/songtx/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\nÒ\1\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\rmappings\1\0\3\nextra\2\rextended\2\nbasic\2\nextra\1\0\3\nabove\bgcO\beol\bgcA\nbelow\bgco\ropleader\1\0\2\tline\agc\nblock\agb\ftoggler\1\0\2\tline\bgcc\nblock\bgbc\1\0\2\vsticky\2\fpadding\2\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://hub.fastgit.xyz/numToStr/Comment.nvim"
  },
  ["FTerm.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28packages.configs.sfterm\frequire\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/FTerm.nvim",
    url = "https://hub.fastgit.xyz/numToStr/FTerm.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://hub.fastgit.xyz/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\ng\0\1\5\0\a\0\0149\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\15\0\1\0X\2\6Ä6\1\3\0009\1\4\0019\1\5\0019\3\0\0'\4\6\0D\1\3\0K\0\1\0\t:t:r\16fnamemodify\afn\bvim\t%.md\nmatch\tnameá\4\0\0\f\0\23\1U4\0\0\0006\1\0\0009\1\1\0019\1\2\0016\2\0\0009\2\1\0029\2\3\2)\4\0\0005\5\5\0009\6\4\1=\6\2\5B\2\3\2\21\2\2\0006\3\0\0009\3\1\0039\3\3\3)\5\0\0005\6\a\0009\a\6\1=\a\2\6B\3\3\2\21\3\3\0006\4\0\0009\4\1\0049\4\3\4)\6\0\0005\a\t\0009\b\b\1=\b\2\aB\4\3\2\21\4\4\0006\5\0\0009\5\1\0059\5\3\5)\a\0\0005\b\v\0009\t\n\1=\t\2\bB\5\3\2\21\5\5\0\b\2\0\0X\6\tÄ6\6\f\0009\6\r\6\18\b\0\0005\t\15\0'\n\14\0\18\v\2\0&\n\v\n=\n\16\tB\6\3\1\b\3\0\0X\6\tÄ6\6\f\0009\6\r\6\18\b\0\0005\t\18\0'\n\17\0\18\v\3\0&\n\v\n=\n\16\tB\6\3\1\b\5\0\0X\6\tÄ6\6\f\0009\6\r\6\18\b\0\0005\t\20\0'\n\19\0\18\v\5\0&\n\v\n=\n\16\tB\6\3\1\b\4\0\0X\6\tÄ6\6\f\0009\6\r\6\18\b\0\0005\t\22\0'\n\21\0\18\v\4\0&\n\v\n=\n\16\tB\6\3\1L\0\2\0\1\0\1\nguifg\f#7EA9A7\n ÔÑ© \1\0\1\nguifg\f#A3BA5E\n Ôäú \1\0\1\nguifg\f#EFB839\n Ôî© \ttext\1\0\1\nguifg\f#EC5241\n Ôôô \vinsert\ntable\1\0\0\tHINT\1\0\0\tINFO\1\0\0\tWARN\1\0\0\nERROR\bget\rseverity\15diagnostic\bvim\0§\r\1\0\6\0\17\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\3\0003\4\4\0=\4\5\0034\4\3\0005\5\6\0>\5\1\4=\4\a\0035\4\t\0003\5\b\0=\5\n\4=\4\v\3=\3\r\2B\0\2\0016\0\14\0009\0\15\0'\2\16\0B\0\2\1K\0\1\0õ\a\t\t\t\tnnoremap <silent><leader>n :BufferLineCycleNext<CR>\n\t\t\t\tnnoremap <silent><leader>p :BufferLineCyclePrev<CR>\n\t\t\t\tnnoremap <silent><leader>N :BufferLineMoveNext<CR>\n\t\t\t\tnnoremap <silent><leader>P :BufferLineMovePrev<CR>\n\t\t\t\tnnoremap <silent><leader>be :BufferLineSortByExtension<CR>\n\t\t\t\tnnoremap <silent><leader>bd :BufferLineSortByDirectory<CR>\n\t\t\t\tnnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>\n\t\t\t\tnnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>\n\t\t\t\tnnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>\n\t\t\t\tnnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>\n\t\t\t\tnnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>\n\t\t\t\tnnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>\n\t\t\t\tnnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>\n\t\t\t\tnnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>\n\t\t\t\tnnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>\n\t\t\t\bcmd\bvim\foptions\1\0\0\17custom_areas\nright\1\0\0\0\foffsets\1\0\3\ttext\22Êó©‰∫õ‰ºëÊÅØ üòä\rfiletype\rNvimTree\15text_align\nright\19name_formatter\0\1\0\23\fsort_by\23relative_directory\19indicator_icon\tüò≠\25enforce_regular_tabs\1\24persist_buffer_sort\2\23left_mouse_command\14buffer %d\24right_mouse_command\16bdelete! %d\24show_tab_indicators\2\18close_command\16bdelete! %d\16diagnostics\rnvim_lsp\22show_buffer_icons\2\20separator_style\nslant\20show_close_icon\2\27always_show_bufferline\2!diagnostics_update_in_insert\1\28show_buffer_close_icons\2\rtab_size\3\18\22max_prefix_length\3\15\20max_name_length\3\18\23right_trunc_marker\bÔÇ®\22left_trunc_marker\bÔÇ©\15close_icon   Curiouser and curiouser  \18modified_icon\b‚óè\22buffer_close_icon\5\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://hub.fastgit.xyz/akinsho/bufferline.nvim"
  },
  ["clangd_extensions.nvim"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/clangd_extensions.nvim",
    url = "https://hub.fastgit.xyz/p00f/clangd_extensions.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://hub.fastgit.xyz/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://hub.fastgit.xyz/hrsh7th/cmp-cmdline"
  },
  ["cmp-git"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/cmp-git",
    url = "https://hub.fastgit.xyz/hrsh7th/cmp-git"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://hub.fastgit.xyz/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://hub.fastgit.xyz/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://hub.fastgit.xyz/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://hub.fastgit.xyz/rafamadriz/friendly-snippets"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://hub.fastgit.xyz/phaazon/hop.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://hub.fastgit.xyz/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://hub.fastgit.xyz/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nÂ\4\0\0\5\0\30\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\3=\3\23\0025\3\24\0004\4\0\0=\4\f\0034\4\0\0=\4\14\0035\4\25\0=\4\16\0035\4\26\0=\4\18\0034\4\0\0=\4\20\0034\4\0\0=\4\22\3=\3\27\0024\3\0\0=\3\28\0024\3\0\0=\3\29\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\27os.date('%a %m-%d %R')\14lualine_y\1\3\0\0\rprogress\rlocation\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\a%F\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\2\0\0\rNvimTree\23section_separators\1\0\2\tleft\bÓÇ∞\nright\bÓÇ≤\1\0\4\25component_separators\5\ntheme\fonedark\18icons_enabled\2\25always_divide_middle\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://hub.fastgit.xyz/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://hub.fastgit.xyz/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n;\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0 packages.configs.slspconfig\frequire\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://hub.fastgit.xyz/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29packages.configs.snotify\frequire\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://hub.fastgit.xyz/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31packages.configs.nvim_tree\frequire\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://hub.fastgit.xyz/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nŸ\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\frainbow\1\0\2\venable\2\18extended_mode\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\3\15prefer_git\2\17sync_install\2\21ensure_installed\5\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://hub.fastgit.xyz/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://hub.fastgit.xyz/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://hub.fastgit.xyz/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\n¯\1\0\0\4\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\b\0B\0\1\1K\0\1\0\tload\16diagnostics\1\0\3\15background\1\14undercurl\2\vdarker\1\15code_style\1\0\0\1\0\5\rcomments\vitalic\14variables\tbold\fstrings\vitalic\14functions\21italic,undercurl\rkeywords\tbold\nsetup\fonedark\frequire\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://hub.fastgit.xyz/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://hub.fastgit.xyz/wbthomason/packer.nvim"
  },
  ["pears.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\npears\frequire\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/pears.nvim",
    url = "https://hub.fastgit.xyz/steelsojka/pears.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://hub.fastgit.xyz/nvim-lua/plenary.nvim"
  },
  rainbow = {
    config = { "\27LJ\2\nﬁ\b\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0æ\b \n\t\t\t\tlet g:rainbow_conf = {\n\t\t\t\t\\\t'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],\n\t\t\t\t\\\t'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],\n\t\t\t\t\\\t'guis': [''],\n\t\t\t\t\\\t'cterms': [''],\n\t\t\t\t\\\t'operators': '_,_',\n\t\t\t\t\\\t'parentheses': ['start=/(/ end=/)/ fold', 'start=/\\[/ end=/\\]/ fold', 'start=/{/ end=/}/ fold'],\n\t\t\t\t\\\t'separately': {\n\t\t\t\t\\\t\t'*': {},\n\t\t\t\t\\\t\t'markdown': {\n\t\t\t\t\\\t\t\t'parentheses_options': 'containedin=markdownCode contained',\n\t\t\t\t\\\t\t},\n\t\t\t\t\\\t\t'lisp': {\n\t\t\t\t\\\t\t\t'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],\n\t\t\t\t\\\t\t},\n\t\t\t\t\\\t\t'haskell': {\n\t\t\t\t\\\t\t\t'parentheses': ['start=/(/ end=/)/ fold', 'start=/\\[/ end=/\\]/ fold', 'start=/\\v\\{\\ze[^-]/ end=/}/ fold'],\n\t\t\t\t\\\t\t},\n\t\t\t\t\\\t\t'vim': {\n\t\t\t\t\\\t\t\t'parentheses_options': 'containedin=vimFuncBody',\n\t\t\t\t\\\t\t},\n\t\t\t\t\\\t\t'perl': {\n\t\t\t\t\\\t\t\t'syn_name_prefix': 'perlBlockFoldRainbow',\n\t\t\t\t\\\t\t},\n\t\t\t\t\\\t\t'stylus': {\n\t\t\t\t\\\t\t\t'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'],\n\t\t\t\t\\\t\t},\n\t\t\t\t\\\t\t'css': 0,\n\t\t\t\t\\\t}\n\t\t\t\t\\}\n\t\t\t\tlet g:rainbow_active = 1\n\t\t\t\bcmd\bvim\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "https://hub.fastgit.xyz/luochen1990/rainbow"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "https://hub.fastgit.xyz/tami5/sqlite.lua"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0&packages.configs.ssymbols_outline\frequire\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://hub.fastgit.xyz/simrat39/symbols-outline.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim",
    url = "https://hub.fastgit.xyz/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://hub.fastgit.xyz/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-packer.nvim"] = {
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/telescope-packer.nvim",
    url = "https://hub.fastgit.xyz/nvim-telescope/telescope-packer.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n‚\t\0\0\t\0%\0M6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\25\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0005\5\a\0=\5\b\0045\5\r\0006\6\t\0009\6\n\0069\6\v\6'\b\f\0B\6\2\2=\6\14\0056\6\t\0009\6\n\0069\6\v\6'\b\15\0B\6\2\2=\6\16\0056\6\t\0009\6\n\0069\6\v\6'\b\17\0B\6\2\2=\6\18\0056\6\t\0009\6\n\0069\6\v\6'\b\19\0B\6\2\2=\6\20\0056\6\t\0009\6\n\0069\6\v\6'\b\21\0B\6\2\2=\6\22\5=\5\23\4=\4\24\3=\3\26\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\27\0'\2\28\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\27\0'\2\5\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\27\0'\2\24\0B\0\2\0016\0\t\0009\0\29\0'\2\30\0B\0\2\0016\0\t\0009\0\31\0009\0 \0'\2!\0'\3\"\0'\4#\0005\5$\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2E<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>\15<leader>fn\6n\20nvim_set_keymap\bapiø\3\t\t\t\tnnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>\n\t\t\t\tnnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>\n\t\t\t\tnnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>\n\t\t\t\tnnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>\n\t\t\t\tnnoremap <leader>fp :Telescope packer<cr>\n\t\t\t\t\" nnoremap <leader>fn <cmd>lua require('telescope').extensions.frecency()<cr>\n\t\t\t\bcmd\vpacker\19load_extension\15extensions\1\0\0\rfrecency\15workspaces\rJavaCore\21~/learn/JavaCore\ncsapp\18~/learn/csapp\ttcpl\17~/learn/tcpl\vconfig\14~/.config\tnvim\1\0\0\19~/.config/nvim\vexpand\afn\bvim\20ignore_patterns\1\3\0\0\f*.git/*\f*/tmp/*\1\0\3\19show_unindexed\2\16show_scores\1\21disable_devicons\1\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://hub.fastgit.xyz/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nŒ\5\0\0\5\0\26\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\2B\0\2\1K\0\1\0\nsigns\1\0\5\thint\bÔ†µ\nerror\bÔôô\fwarning\bÔî©\nother\bÔ´†\16information\bÔëâ\14auto_jump\1\2\0\0\20lsp_definitions\16action_keys\16toggle_fold\1\3\0\0\azA\aza\15open_folds\1\3\0\0\azR\azr\16close_folds\1\3\0\0\azM\azm\15jump_close\1\2\0\0\6o\ropen_tab\1\2\0\0\n<c-t>\16open_vsplit\1\2\0\0\n<c-v>\15open_split\1\2\0\0\n<c-x>\tjump\1\3\0\0\t<cr>\n<tab>\1\0\t\tnext\6j\frefresh\6r\nclose\6q\rprevious\6k\fpreview\6p\nhover\6K\vcancel\n<esc>\19toggle_preview\6P\16toggle_mode\6m\1\0\15\17auto_preview\2\15auto_close\2\25use_diagnostic_signs\1\tmode\26workspace_diagnostics\ngroup\2\14auto_fold\1\fpadding\2\14auto_open\2\17indent_lines\2\16fold_closed\bÔë†\14fold_open\bÔëº\nicons\2\nwidth\0032\vheight\3\n\rposition\vbottom\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://hub.fastgit.xyz/folke/trouble.nvim"
  },
  ["vista.vim"] = {
    config = { "\27LJ\2\n5\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\30\0=\1\2\0K\0\1\0\24vista_sidebar_width\6g\bvim\0" },
    loaded = true,
    path = "/home/songtx/.local/share/nvim/site/pack/packer/start/vista.vim",
    url = "https://hub.fastgit.xyz/liuchengxu/vista.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0 packages.configs.slspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: pears.nvim
time([[Config for pears.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\npears\frequire\0", "config", "pears.nvim")
time([[Config for pears.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nŸ\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\frainbow\1\0\2\venable\2\18extended_mode\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\3\15prefer_git\2\17sync_install\2\21ensure_installed\5\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\ng\0\1\5\0\a\0\0149\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\15\0\1\0X\2\6Ä6\1\3\0009\1\4\0019\1\5\0019\3\0\0'\4\6\0D\1\3\0K\0\1\0\t:t:r\16fnamemodify\afn\bvim\t%.md\nmatch\tnameá\4\0\0\f\0\23\1U4\0\0\0006\1\0\0009\1\1\0019\1\2\0016\2\0\0009\2\1\0029\2\3\2)\4\0\0005\5\5\0009\6\4\1=\6\2\5B\2\3\2\21\2\2\0006\3\0\0009\3\1\0039\3\3\3)\5\0\0005\6\a\0009\a\6\1=\a\2\6B\3\3\2\21\3\3\0006\4\0\0009\4\1\0049\4\3\4)\6\0\0005\a\t\0009\b\b\1=\b\2\aB\4\3\2\21\4\4\0006\5\0\0009\5\1\0059\5\3\5)\a\0\0005\b\v\0009\t\n\1=\t\2\bB\5\3\2\21\5\5\0\b\2\0\0X\6\tÄ6\6\f\0009\6\r\6\18\b\0\0005\t\15\0'\n\14\0\18\v\2\0&\n\v\n=\n\16\tB\6\3\1\b\3\0\0X\6\tÄ6\6\f\0009\6\r\6\18\b\0\0005\t\18\0'\n\17\0\18\v\3\0&\n\v\n=\n\16\tB\6\3\1\b\5\0\0X\6\tÄ6\6\f\0009\6\r\6\18\b\0\0005\t\20\0'\n\19\0\18\v\5\0&\n\v\n=\n\16\tB\6\3\1\b\4\0\0X\6\tÄ6\6\f\0009\6\r\6\18\b\0\0005\t\22\0'\n\21\0\18\v\4\0&\n\v\n=\n\16\tB\6\3\1L\0\2\0\1\0\1\nguifg\f#7EA9A7\n ÔÑ© \1\0\1\nguifg\f#A3BA5E\n Ôäú \1\0\1\nguifg\f#EFB839\n Ôî© \ttext\1\0\1\nguifg\f#EC5241\n Ôôô \vinsert\ntable\1\0\0\tHINT\1\0\0\tINFO\1\0\0\tWARN\1\0\0\nERROR\bget\rseverity\15diagnostic\bvim\0§\r\1\0\6\0\17\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\3\0003\4\4\0=\4\5\0034\4\3\0005\5\6\0>\5\1\4=\4\a\0035\4\t\0003\5\b\0=\5\n\4=\4\v\3=\3\r\2B\0\2\0016\0\14\0009\0\15\0'\2\16\0B\0\2\1K\0\1\0õ\a\t\t\t\tnnoremap <silent><leader>n :BufferLineCycleNext<CR>\n\t\t\t\tnnoremap <silent><leader>p :BufferLineCyclePrev<CR>\n\t\t\t\tnnoremap <silent><leader>N :BufferLineMoveNext<CR>\n\t\t\t\tnnoremap <silent><leader>P :BufferLineMovePrev<CR>\n\t\t\t\tnnoremap <silent><leader>be :BufferLineSortByExtension<CR>\n\t\t\t\tnnoremap <silent><leader>bd :BufferLineSortByDirectory<CR>\n\t\t\t\tnnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>\n\t\t\t\tnnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>\n\t\t\t\tnnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>\n\t\t\t\tnnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>\n\t\t\t\tnnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>\n\t\t\t\tnnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>\n\t\t\t\tnnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>\n\t\t\t\tnnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>\n\t\t\t\tnnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>\n\t\t\t\bcmd\bvim\foptions\1\0\0\17custom_areas\nright\1\0\0\0\foffsets\1\0\3\ttext\22Êó©‰∫õ‰ºëÊÅØ üòä\rfiletype\rNvimTree\15text_align\nright\19name_formatter\0\1\0\23\fsort_by\23relative_directory\19indicator_icon\tüò≠\25enforce_regular_tabs\1\24persist_buffer_sort\2\23left_mouse_command\14buffer %d\24right_mouse_command\16bdelete! %d\24show_tab_indicators\2\18close_command\16bdelete! %d\16diagnostics\rnvim_lsp\22show_buffer_icons\2\20separator_style\nslant\20show_close_icon\2\27always_show_bufferline\2!diagnostics_update_in_insert\1\28show_buffer_close_icons\2\rtab_size\3\18\22max_prefix_length\3\15\20max_name_length\3\18\23right_trunc_marker\bÔÇ®\22left_trunc_marker\bÔÇ©\15close_icon   Curiouser and curiouser  \18modified_icon\b‚óè\22buffer_close_icon\5\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n‚\t\0\0\t\0%\0M6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\25\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0005\5\a\0=\5\b\0045\5\r\0006\6\t\0009\6\n\0069\6\v\6'\b\f\0B\6\2\2=\6\14\0056\6\t\0009\6\n\0069\6\v\6'\b\15\0B\6\2\2=\6\16\0056\6\t\0009\6\n\0069\6\v\6'\b\17\0B\6\2\2=\6\18\0056\6\t\0009\6\n\0069\6\v\6'\b\19\0B\6\2\2=\6\20\0056\6\t\0009\6\n\0069\6\v\6'\b\21\0B\6\2\2=\6\22\5=\5\23\4=\4\24\3=\3\26\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\27\0'\2\28\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\27\0'\2\5\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\27\0'\2\24\0B\0\2\0016\0\t\0009\0\29\0'\2\30\0B\0\2\0016\0\t\0009\0\31\0009\0 \0'\2!\0'\3\"\0'\4#\0005\5$\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2E<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>\15<leader>fn\6n\20nvim_set_keymap\bapiø\3\t\t\t\tnnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>\n\t\t\t\tnnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>\n\t\t\t\tnnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>\n\t\t\t\tnnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>\n\t\t\t\tnnoremap <leader>fp :Telescope packer<cr>\n\t\t\t\t\" nnoremap <leader>fn <cmd>lua require('telescope').extensions.frecency()<cr>\n\t\t\t\bcmd\vpacker\19load_extension\15extensions\1\0\0\rfrecency\15workspaces\rJavaCore\21~/learn/JavaCore\ncsapp\18~/learn/csapp\ttcpl\17~/learn/tcpl\vconfig\14~/.config\tnvim\1\0\0\19~/.config/nvim\vexpand\afn\bvim\20ignore_patterns\1\3\0\0\f*.git/*\f*/tmp/*\1\0\3\19show_unindexed\2\16show_scores\1\21disable_devicons\1\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0&packages.configs.ssymbols_outline\frequire\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\n¯\1\0\0\4\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\b\0B\0\1\1K\0\1\0\tload\16diagnostics\1\0\3\15background\1\14undercurl\2\vdarker\1\15code_style\1\0\0\1\0\5\rcomments\vitalic\14variables\tbold\fstrings\vitalic\14functions\21italic,undercurl\rkeywords\tbold\nsetup\fonedark\frequire\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\nÒ\1\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\rmappings\1\0\3\nextra\2\rextended\2\nbasic\2\nextra\1\0\3\nabove\bgcO\beol\bgcA\nbelow\bgco\ropleader\1\0\2\tline\agc\nblock\agb\ftoggler\1\0\2\tline\bgcc\nblock\bgbc\1\0\2\vsticky\2\fpadding\2\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nŒ\5\0\0\5\0\26\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\2B\0\2\1K\0\1\0\nsigns\1\0\5\thint\bÔ†µ\nerror\bÔôô\fwarning\bÔî©\nother\bÔ´†\16information\bÔëâ\14auto_jump\1\2\0\0\20lsp_definitions\16action_keys\16toggle_fold\1\3\0\0\azA\aza\15open_folds\1\3\0\0\azR\azr\16close_folds\1\3\0\0\azM\azm\15jump_close\1\2\0\0\6o\ropen_tab\1\2\0\0\n<c-t>\16open_vsplit\1\2\0\0\n<c-v>\15open_split\1\2\0\0\n<c-x>\tjump\1\3\0\0\t<cr>\n<tab>\1\0\t\tnext\6j\frefresh\6r\nclose\6q\rprevious\6k\fpreview\6p\nhover\6K\vcancel\n<esc>\19toggle_preview\6P\16toggle_mode\6m\1\0\15\17auto_preview\2\15auto_close\2\25use_diagnostic_signs\1\tmode\26workspace_diagnostics\ngroup\2\14auto_fold\1\fpadding\2\14auto_open\2\17indent_lines\2\16fold_closed\bÔë†\14fold_open\bÔëº\nicons\2\nwidth\0032\vheight\3\n\rposition\vbottom\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nÂ\4\0\0\5\0\30\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\3=\3\23\0025\3\24\0004\4\0\0=\4\f\0034\4\0\0=\4\14\0035\4\25\0=\4\16\0035\4\26\0=\4\18\0034\4\0\0=\4\20\0034\4\0\0=\4\22\3=\3\27\0024\3\0\0=\3\28\0024\3\0\0=\3\29\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\27os.date('%a %m-%d %R')\14lualine_y\1\3\0\0\rprogress\rlocation\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\a%F\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\2\0\0\rNvimTree\23section_separators\1\0\2\tleft\bÓÇ∞\nright\bÓÇ≤\1\0\4\25component_separators\5\ntheme\fonedark\18icons_enabled\2\25always_divide_middle\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31packages.configs.nvim_tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: rainbow
time([[Config for rainbow]], true)
try_loadstring("\27LJ\2\nﬁ\b\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0æ\b \n\t\t\t\tlet g:rainbow_conf = {\n\t\t\t\t\\\t'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],\n\t\t\t\t\\\t'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],\n\t\t\t\t\\\t'guis': [''],\n\t\t\t\t\\\t'cterms': [''],\n\t\t\t\t\\\t'operators': '_,_',\n\t\t\t\t\\\t'parentheses': ['start=/(/ end=/)/ fold', 'start=/\\[/ end=/\\]/ fold', 'start=/{/ end=/}/ fold'],\n\t\t\t\t\\\t'separately': {\n\t\t\t\t\\\t\t'*': {},\n\t\t\t\t\\\t\t'markdown': {\n\t\t\t\t\\\t\t\t'parentheses_options': 'containedin=markdownCode contained',\n\t\t\t\t\\\t\t},\n\t\t\t\t\\\t\t'lisp': {\n\t\t\t\t\\\t\t\t'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],\n\t\t\t\t\\\t\t},\n\t\t\t\t\\\t\t'haskell': {\n\t\t\t\t\\\t\t\t'parentheses': ['start=/(/ end=/)/ fold', 'start=/\\[/ end=/\\]/ fold', 'start=/\\v\\{\\ze[^-]/ end=/}/ fold'],\n\t\t\t\t\\\t\t},\n\t\t\t\t\\\t\t'vim': {\n\t\t\t\t\\\t\t\t'parentheses_options': 'containedin=vimFuncBody',\n\t\t\t\t\\\t\t},\n\t\t\t\t\\\t\t'perl': {\n\t\t\t\t\\\t\t\t'syn_name_prefix': 'perlBlockFoldRainbow',\n\t\t\t\t\\\t\t},\n\t\t\t\t\\\t\t'stylus': {\n\t\t\t\t\\\t\t\t'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'],\n\t\t\t\t\\\t\t},\n\t\t\t\t\\\t\t'css': 0,\n\t\t\t\t\\\t}\n\t\t\t\t\\}\n\t\t\t\tlet g:rainbow_active = 1\n\t\t\t\bcmd\bvim\0", "config", "rainbow")
time([[Config for rainbow]], false)
-- Config for: vista.vim
time([[Config for vista.vim]], true)
try_loadstring("\27LJ\2\n5\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\30\0=\1\2\0K\0\1\0\24vista_sidebar_width\6g\bvim\0", "config", "vista.vim")
time([[Config for vista.vim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29packages.configs.snotify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28packages.configs.sfterm\frequire\0", "config", "FTerm.nvim")
time([[Config for FTerm.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
