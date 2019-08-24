$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName = $env:ChocolateyPackageName
  file        = "$toolsDir\CoolSoft_VirtualMIDISynth_2.7.3.exe"
  silentArgs  = "/S"
}

Install-ChocolateyInstallPackage @packageArgs
