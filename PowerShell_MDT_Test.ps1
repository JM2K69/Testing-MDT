<#
.Synopsis
    Sample script For Testing MDT
.DESCRIPTION
    Created: 2017-01-07
    Version: 1.2

    Author : Jérôme Bezet-Torres
    Twitter: @JM2K69
    Blog   : http://JM2K69.github.io

    Disclaimer: This script is provided "AS IS" with no warranties, confers no rights and 
    is not supported by the author or DeploymentArtist..
.EXAMPLE
    NA
#>

If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
		[Security.Principal.WindowsBuiltInRole] "Administrator"))
{
	Write-Warning "Oupps, you need to run this script from an elevated PowerShell prompt!`nPlease start the PowerShell prompt as an Administrator and re-run the script."
	Write-Warning "Aborting script..."
	Break
}


set-location C:\MDT
 & './GatherPs.cmd'
Set-Location $env:USERPROFILE\Desktop

