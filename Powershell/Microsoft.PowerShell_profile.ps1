oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/amro.omp.json" | Invoke-Expression
Import-Module Terminal-Icons

# Notepad3
Set-Alias pad "S:\UNISOFT\Notepad3\Notepad3.exe"

# winget 快速搜索别名
# ws 别名会执行 Search-Winget 函数，而后者传参调用 winget
function Search-Winget {
    winget search $args
}
Set-Alias ws "Search-Winget"

# winget 快速安装别名
function Install-Winget{
	winget install $args
}
Set-Alias wi "install-Winget"

# 快速编辑 $PROFILE 配置文件
function Edit-Profile{
	pad $PROFILE
}
Set-Alias pf "Edit-Profile"

# zoxide
Invoke-Expression (& {zoxide init powershell | Out-String})

# l -> ls
Set-Alias l ls

# ff -> spf
Set-Alias ff yazi

# deepdict
function Deep-Dict{
	& "S:\UNISOFT\Deep Dict\DeepDict.exe" $args
}
Set-Alias dd "Deep-Dict"

# vi
function NeoVim{
	& "nvim" $args
}
Set-Alias vi "NeoVim"

# ..
Set-Alias .. "cd.."


function Power-Off{
	shutdown -s -t 0
}
Set-Alias poweroff "Power-Off"

function Re-boot{
  shutdown -r -t 0
}
Set-Alias reboot "Re-boot"

Set-Alias eq "exit"

function Clip-Board{
	Set-Clipboard -Path $args
}
Set-Alias clip "Clip-Board"

#Set-Alias file "spf"

function Start-BitsTransfer-Func {
  Start-BitsTransfer $args
}
Set-Alias dl "Start-BitsTransfer-Func"

function Explorer{
	Explorer.exe $args
}
Set-Alias xp "explorer"

Set-Alias share "python -m http.server 8080 --bind 192.168.101.28"

function Scoop-Search {
  scoop search $args
}
function Scoop-Inst {
  scoop install -g $args
}
function Scoop-Config {
  scoop config $args
}
function Scoop-Uninst {
  scoop uninstall $args
}
function Scoop-Update {
  scoop update
}

Set-Alias scpd "Scoop-Update"
Set-Alias scpu "Scoop-Uninst"
Set-Alias scps "Scoop-Search"
Set-Alias scpc "Scoop-Config"
Set-Alias scpi "Scoop-Inst"

function ADB-Shell {
    adb shell $args
}
Set-Alias aas "ADB-Shell"

function ADB-Device {
    adb device $args
}
Set-Alias aad "ADB-Device"

function ADB-Push {
    adb push $args
}
Set-Alias aap "ADB-Push"

