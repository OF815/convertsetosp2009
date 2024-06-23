<#
.SYNOPSIS
    App Deployer

.AUTHOR
    KAZU

.COPYRIGHT
    Copyright (C) 2024 KAZU. - All Right reserved. 
    No unauthorized reproduction or reuse is allowed. 
    Do not use source codes and materials without my permission.

#>

$s0 = @{ ".\7z2406-x64.exe" = "/S"; ".\Firefox Setup 127.0.1.exe" = "/S"; }
$lf = ".\App.log"
function f-Cmp {
    param ( [string]$m ); $ts = Get-Date -Format "yyyy-MM-dd HH:mm:ss"; $lm = "$ts - $m"; Add-Content -Path $lf -Value $lm
}
foreach ($sp in $s0.Keys) {
    $para = $s0[$sp]
    if (Test-Path $sp) {
        f-Cmp "execute $sp with $para."
        try {
            Start-Process -FilePath $sp -ArgumentList $para -Wait; f-Cmp "Installation of $sp completed successfully."
        } catch {
            f-Cmp "$sp is failed. $_"
        }
    }
}

