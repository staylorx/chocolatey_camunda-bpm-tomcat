$ErrorActionPreference = 'Stop'

$PackageName = 'camunda-bpm-tomcat'
$url32       = 'https://camunda.org/release/camunda-bpm/tomcat/7.11/camunda-bpm-tomcat-7.11.0.zip'
$url64       = 'https://camunda.org/release/camunda-bpm/tomcat/7.11/camunda-bpm-tomcat-7.11.0.zip'
$checksum32  = 'B669316E303895454231CE0D2759C63B26E0D3D912A49B3F161889A1F25633F7'
$checksum64  = 'B669316E303895454231CE0D2759C63B26E0D3D912A49B3F161889A1F25633F7'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  url64Bit       = $url64
  checksum       = $checksum32
  checksum64     = $checksum64
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs