#!/bin/powershell

# interesting article: https://jdhao.github.io/2018/11/15/neovim_configuration_windows/

md ~\AppData\Local\nvim\autoload

$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\AppData\Local\nvim\autoload\plug.vim"
  )
)
