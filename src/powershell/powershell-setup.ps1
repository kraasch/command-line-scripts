#!/bin/powershell

Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -EditMode Emacs

