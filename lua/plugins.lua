local fn = vim.fn
local cmd = vim.cmd

-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git',       'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
	install_path
    })
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
cmd ([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

return require('packer').startup(function()
    
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    ---------- Add plugins here ----------

    -- nvim-lspconfig
    use 'neovim/nvim-lspconfig'

    -- nvim-treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({with_sync = true}) end
    }

    -- plenary
    use "nvim-lua/plenary.nvim"
    
    -- nvim-web-devicons
    use 'kyazdani42/nvim-web-devicons'

    -- telescope
    use({
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x'
    })

    -- nvim-tree
    use 'kyazdani42/nvim-tree.lua'

    -- mason
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"

    -- nvim-cmp
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lua'
    use({
        'hrsh7th/nvim-cmp',
		requires = {
	    	{'hrsh7th/cmp-nvim-lsp'},
	    	{'L3MON4D3/LuaSnip'},
	    	{'saadparwaiz1/cmp_luasnip'}
		}
    })
   
     -- Darcula Solid Theme
    use {
        "briones-gabriel/darcula-solid.nvim",
	requires = "rktjmp/lush.nvim"
    }

    -- Automatically set up your configuration after cloning packer.nvim
    if packer_bootstrap then
        require('packer').sync()
    end
end)

