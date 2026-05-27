param([switch]$Clean,[switch]$Deploy,[string]$IsoName="MuOS",[string]$OutputDir="$PWD\output")
$ErrorActionPreference="Stop"
Write-Host "MuOS Docker Builder (Arch Linux)" -ForegroundColor Green
if ($Clean) { Remove-Item -Recurse -Force "$OutputDir" -ErrorAction SilentlyContinue }
New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
docker build -t mu-os-builder -f Dockerfile.arch .
docker run --privileged -v "${PWD}:/workspace" -e ISO_NAME="$IsoName" mu-os-builder
Write-Host "MuOS build complete" -ForegroundColor Green
