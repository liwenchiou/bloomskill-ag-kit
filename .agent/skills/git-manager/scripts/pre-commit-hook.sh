#!/bin/bash
# Pre-commit hook to validate commit messages against Git Manager Constitution
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

commit_msg_file=$1
commit_msg=$(cat "$commit_msg_file")

# Standard format: [Category] Description (IssueID)
# 支援英文與中文類別
regex="^\[(feat|fix|refine|docs|refactor|test|功能|修正|調整|文件|重構|測試)\] .+"

if [[ ! $commit_msg =~ $regex ]]; then
    echo "❌ Error: Commit message does not follow Git Manager Constitution!"
    echo "Expected format: [Category] Description (IssueID)"
    echo "Allowed categories: feat, fix, refine, docs, refactor, test, 功能, 修正, 調整, 文件, 重構, 測試"
    exit 1
fi

echo "✅ Commit message validated."
exit 0
