param (
    [Parameter(Mandatory=$true)]
    [string]$SkillName,

    [Parameter(Mandatory=$true)]
    [string]$TargetProjectPath
)

$SourcePath = Join-Path $PSScriptRoot ".agent\skills\$SkillName"
$DestPath = Join-Path $TargetProjectPath ".agent\skills\$SkillName"

if (!(Test-Path $SourcePath)) {
    Write-Error "找不到名為 '$SkillName' 的 Skill。請確認路徑: $SourcePath"
    return
}

if (!(Test-Path $TargetProjectPath)) {
    Write-Error "目標專案路徑不存在: $TargetProjectPath"
    return
}

if (!(Test-Path (Join-Path $TargetProjectPath ".agent\skills"))) {
    New-Item -ItemType Directory -Path (Join-Path $TargetProjectPath ".agent\skills") -Force | Out-Null
    Write-Host "已建立目標計畫的 .agent\skills 目錄。"
}

Copy-Item -Path $SourcePath -Destination (Join-Path $TargetProjectPath ".agent\skills\") -Recurse -Force

Write-Host "成功將 '$SkillName' 複製到 $DestPath" -ForegroundColor Green
