$ErrorActionPreference = "Stop"

$repoRoot = "C:\Users\antho\Downloads\rankless-site-v5"
$base = Join-Path $repoRoot "assets\chapters"

if (-not (Test-Path -LiteralPath $repoRoot)) {
    throw "Repo folder not found: $repoRoot"
}

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

Write-Host "Created chapter folders ch01 through ch15 under:"
Write-Host "  $base"
Write-Host ""
Write-Host "Next, from the repo folder, run:"
Write-Host "  cd `"$repoRoot`""
Write-Host "  git add assets/chapters"
Write-Host "  git commit -m `"Add chapter asset folders`""
Write-Host "  git push"
