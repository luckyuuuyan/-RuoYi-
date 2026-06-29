$frontendPath = Join-Path $PSScriptRoot 'VueProjectFront2\VueProjectFront'

Set-Location $frontendPath
npm.cmd run dev
