return {
  "phpactor/phpactor",
  branch = "master",
  ft = "php",
  cmd = "Composer install --no-dev -o",
  config = function()
    vim.cmd [[
      augroup PhpactorMappings
        au!
        au FileType php nmap <buffer> <Leader>hm :PhpactorContextMenu<CR>
        au FileType php nmap <buffer> <Leader>hn :PhpactorClassNew<CR>
      augroup END
    ]]
  end,
}
