$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://staruml.io/api/download/releases-v7/StarUML%20Setup%207.1.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'staruml'
  checksum      = '65A2CE954AB576092F89A248EFC8191AC0E2038FDE7EE317CACBFC50FC38E031'
  checksumType  = 'sha256'
  silentArgs='/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
