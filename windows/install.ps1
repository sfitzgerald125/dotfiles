if(-not (Get-Location).Path.Contains("dotfiles")) {
    Write-Output "Please run the script from the dotfiles root."
    exit
}

Write-Output "====================="
Write-Output "Creating Symlinks for vs-code files"
Write-Output "====================="
$BASEDIR = Split-Path $MyInvocation.MyCommand.Path
New-Item -ItemType SymbolicLink -Path "$HOME/Library/Application Support/Code/User/settings.json" -Target "$BASEDIR/vs-code/settings.json"
New-Item -ItemType SymbolicLink -Path "$HOME/Library/Application Support/Code/User/keybindings.json" -Target "$BASEDIR/vs-code/keybindings.json"