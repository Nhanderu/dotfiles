# Helper functions for when I use Windows.

# prompt
function global:Prompt {
    
    $lec = $lastexitcode
    $user = $env:username
    $path = $pwd.providerpath -ireplace "c:[\\\/]users[\\\/]$user", "~"
    $host.ui.rawui.foregroundcolor = "White"
    
    write-host $user -nonewline -foregroundcolor "DarkGreen"
    write-host " at " -nonewline -foregroundcolor "White"
    write-host $path -nonewline -foregroundcolor "Green"
    if ($gitstatus) { checkgit($pwd.providerpath) }

    write-host ""
    write-host "λ" -nonewline -foregroundcolor "DarkGray"
    
    $global:lastexitcode = $lec
    
    return " "
}

# lsf
function Get-ForcedChildItem {
    get-childitem -force
}
set-alias lsf get-forcedchilditem
set-alias dirf get-forcedchilditem

# touch
function Create-EmptyFile {
    set-content -path $args[0] -value $null
}
set-alias touch create-emptyfile

# grep
set-alias grep select-string

# time
function Measure-Function ($fn) { (measure-command { & $fn }).ticks }
set-alias time measure-function
