$ErrorActionPreference = "Stop"

$base = Join-Path (Get-Location) "assets\chapters"

New-Item -ItemType Directory -Force -Path $base | Out-Null

1..15 | ForEach-Object {
    $chapter = "ch{0:D2}" -f $_
    $folder = Join-Path $base $chapter
    $keepFile = Join-Path $folder ".gitkeep"

    New-Item -ItemType Directory -Force -Path $folder | Out-Null

    if (-not (Test-Path -LiteralPath $keepFile)) {
        New-Item -ItemType File -Path $keepFile | Out-Null
    }
}

Write-Host "Created chapter folders ch01 through ch15 under assets\chapters."
Write-Host "Next:"
Write-Host "  git add assets/chapters"
Write-Host "  git commit -m `"Add chapter asset folders`""
Write-Host "  git push"
