#!/bin/bash
# Pre-commit hook to validate commit messages against Git Manager Constitution

commit_msg_file=$1
commit_msg=$(cat "$commit_msg_file")

# Standard format: [Category] Description (#TicketID)
regex="^\[(功能|修正|調整|文件|重構|測試)\] .+"

if [[ ! $commit_msg =~ $regex ]]; then
    echo "❌ Error: Commit message does not follow Git Manager Constitution!"
    echo "Expected format: [Category] Description (#TicketID)"
    echo "Allowed categories: 功能, 修正, 調整, 文件, 重構, 測試"
    exit 1
fi

echo "✅ Commit message validated."
exit 0
