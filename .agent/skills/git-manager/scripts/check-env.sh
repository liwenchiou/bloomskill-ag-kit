#!/bin/bash

# Initialize status variables
git_installed=false
gh_installed=false
tea_installed=false
remote_type="unknown"

# Check Git
if command -v git &> /dev/null; then
    git_installed=true
fi

# Check GitHub CLI
if command -v gh &> /dev/null; then
    gh_installed=true
fi

# Check Gitea CLI
if command -v tea &> /dev/null; then
    tea_installed=true
fi

# Detect Remote Type
if [ "$git_installed" = true ]; then
    remotes=$(git remote -v 2>/dev/null)
    if echo "$remotes" | grep -q "github.com"; then
        remote_type="github"
    elif echo "$remotes" | grep -qE "gitea|git\."; then
        remote_type="gitea"
    fi
fi

# Output JSON
cat <<EOF
{
    "git": $git_installed,
    "gh": $gh_installed,
    "tea": $tea_installed,
    "remote_type": "$remote_type"
}
EOF
