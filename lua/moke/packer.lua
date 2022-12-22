
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- File tree
    use 'preservim/nerdtree'

    --Deactivated in favor of Fuzzy Finder
    --use {
    --	'nvim-telescope/telescope.nvim', tag = '0.1.0',
    --	-- or                            , branch = '0.1.x',
    --	requires = { {'nvim-lua/plenary.nvim'} }
    --}

    -- Fuzzy Finder (search in files)
    use('junegunn/fzf', { run = ":fzf#install()" })
    use('junegunn/fzf.vim')

    -- Color scheme
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    -- Syntax Highlighting
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- Fast-switch between files
    use({'theprimeagen/harpoon',
		requires = { {'nvim-lua/plenary.nvim'} }
    })

    -- Changes history, allow undoing
    use('mbbill/undotree')

    -- Load GIT info
    use('tpope/vim-fugitive')

    -- LSP for C#
    use('OmniSharp/omnisharp-vim')

    -- Code completion
    use({ 'neoclide/coc.nvim', branch = 'release'})
end)
