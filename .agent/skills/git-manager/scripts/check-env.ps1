$env_status = @{
    git = $false
    gh = $false
    tea = $false
    remote_type = "unknown"
}

# Check Git
if (Get-Command git -ErrorAction SilentlyContinue) {
    $env_status.git = $true
}

# Check GitHub CLI
if (Get-Command gh -ErrorAction SilentlyContinue) {
    $env_status.gh = $true
}

# Check Gitea CLI
if (Get-Command tea -ErrorAction SilentlyContinue) {
    $env_status.tea = $true
}

# Detect Remote Type via git remote
if ($env_status.git) {
    $remotes = git remote -v
    if ($remotes -match "github.com") {
        $env_status.remote_type = "github"
    } elseif ($remotes -match "gitea" -or $remotes -match "git.") {
        $env_status.remote_type = "gitea"
    }
}

return $env_status | ConvertTo-Json
