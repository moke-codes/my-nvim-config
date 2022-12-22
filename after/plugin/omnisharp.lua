-- OminiSharp configuration
--
-- Don't autoselect first omnicomplete option, show options even if there is
-- only one (so the preview documentation is accessible). Remove 'preview' if 
-- you don't want to see any documentation whatsoever.
vim.opt.completeopt = longest,menuone,preview

-- Set desired preview window height for viewing documentation.
-- You might also want to look at the echodoc plugin.
vim.opt.previewheight = 5

-- Use the stdio OmniSharp-roslyn server
vim.g.OmniSharp_server_stdio = 1

vim.g.OmniSharp_server_use_net6 = 1
-- vim.g.OmniSharp_server_use_mono = 0
vim.g.OmniSharp_timeout = 5
vim.g.omnicomplete_fetch_full_documentation = 1
vim.g.OmniSharp_autoselect_existing_sln = 1
vim.g.OmniSharp_popup_position = 'peek'
vim.g.OmniSharp_popup_options = {
    ['winhl'] = 'Normal:NormalFloat,FloatBorder:ModeMsg',
    ['border'] = 'rounded'
}
vim.g.OmniSharp_popup_mappings = {
    ['sigNext'] = '<C-n>',
    ['sigPrev'] = '<C-p>',
    ['pageDown'] = {'<C-f>', '<PageDown>'},
    ['pageUp'] = {'<C-b>', '<PageUp>'}
}
vim.g.OmniSharp_highlighting = 3
vim.g.OmniSharp_diagnostic_exclude_paths = {
    'obj\\',
    '[Tt]emp\\',
    '.nuget\\',
    '<AssemblyInfo.cs>'
}
-- Update semantic highlighting on BufEnter and InsertLeave
vim.g.OmniSharp_highlight_types = 2
vim.g.OmniSharp_highlight_groups = {
    ['ExcludedCode'] = 'NonText'
}

--local cmd = vim.cmd

--cmd [[
--augroup omnisharp_commands
--autocmd!
--
---- Show type information automatically when the cursor stops moving.
---- Note that the type is echoed to the Vim command line, and will overwrite
---- any other messages in this space including e.g. ALE linting messages.
--autocmd CursorHold *.cs OmniSharpTypeLookup
--
--autocmd FileType cs noremap <buffer> <F12>d :OmniSharpGotoDefinition<CR> 
--autocmd FileType cs noremap <buffer> <Leader><Space> :OmniSharpGetCodeActions<CR> 
--autocmd FileType cs xnoremap <buffer> <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>
--autocmd FileType cs noremap <buffer> <Leader>pd :OmniSharpPreviewDefinition<CR>
--autocmd FileType cs noremap <buffer> <Leader>pi :OmniSharpPreviewImplementation<CR>
--autocmd FileType cs noremap <buffer> <F2> :OmniSharpRename<CR>
--autocmd FileType cs noremap <buffer> <Leader>cf :OmniSharpCodeFormat<CR>
--autocmd FileType cs noremap <buffer> <F12>i :OmniSharpFindImplementations<CR>
--autocmd FileType cs noremap <buffer> <F12>s :OmniSharpFindSymbol<CR>
--autocmd FileType cs noremap <buffer> <F12>u :OmniSharpFindUsages<CR>
--autocmd FileType cs noremap <buffer> <S-D> :OmniSharpDocumentation<CR>
--autocmd FileType cs noremap <buffer> <Leader>cc :OmniSharpGlobalCodeCheck<CR>
--autocmd FileType cs noremap <buffer> <Leader>rt :OmniSharpRunTest<CR>
--autocmd FileType cs noremap <buffer> <Leader>rT :OmniSharpRunTestsInFile<CR>
--autocmd FileType cs noremap <buffer> <Leader>ss :OmniSharpStartServer<CR>
--autocmd FileType cs noremap <buffer> <Leader>sp :OmniSharpStopServer<CR>
--autocmd FileType cs nnoremap <buffer> <C-Space> :OmniSharpSignatureHelp<CR> 
--autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>
--autocmd BufWritePre *.cs :OmniSharpCodeFormat
--augroup END
--
--autocmd FileType ts nmap <silent> gd :call CocActionAsync('jumpDefinition')<CR>
--autocmd FileType html nmap <silent> gd :call CocActionAsync('jumpDefinition')<CR>
--]]

-- The following commands are contextual, based on the cursor position.
-- autocmd FileType cs nnoremap <buffer>
-- autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
