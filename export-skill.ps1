param (
    [string]$SkillName,
    [string]$TargetProjectPath
)

if (-not $SkillName -or -not $TargetProjectPath) {
    Write-Host "使用方式: .\export-skill.ps1 -SkillName 'git-manager' -TargetProjectPath 'D:\專案路徑'" -ForegroundColor Yellow
    exit 1
}

$SourcePath = ".agent\skills\$SkillName"
$DestPath = Join-Path $TargetProjectPath ".agent\skills\$SkillName"

# 🛑 [安全確認]
Write-Host "⚠️  即將將技能 [$SkillName] 導出至：「$TargetProjectPath」" -ForegroundColor Cyan
$Confirmation = Read-Host "是否確定執行複製動作？ [y/N]"
if ($Confirmation -notmatch "^[Yy]$") {
    Write-Host "❌ 操作已取消。" -ForegroundColor Red
    exit 0
}

if (-not (Test-Path $SourcePath)) {
    Write-Host "❌ 錯誤：找不到該技能路徑 $SourcePath" -ForegroundColor Red
    exit 1
}

if (-not (Test-Path $TargetProjectPath)) {
    New-Item -ItemType Directory -Force -Path $TargetProjectPath | Out-Null
}

$TargetSkillDir = Join-Path $TargetProjectPath ".agent\skills"
if (-not (Test-Path $TargetSkillDir)) {
    New-Item -ItemType Directory -Force -Path $TargetSkillDir | Out-Null
}

Copy-Item -Path $SourcePath -Destination $TargetSkillDir -Recurse -Force
Write-Host "✅ 成功：技能 '$SkillName' 已成功導出至 $DestPath" -ForegroundColor Green
