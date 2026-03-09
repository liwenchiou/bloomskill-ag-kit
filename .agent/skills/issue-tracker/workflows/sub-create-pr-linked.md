---
description: 針對指定的 Issue 建立 PR 並實現自動關聯關閉。
---

# 建立 PR 並關聯 Issue (/sub-create-pr-linked)

1. **[單號核對]**: 確認要關聯的 `#IssueID`。
2. **[內容生成]**: 
   - 摘要當前分支的變更內容。
   - 自動在描述中加入 `Closes #IssueID` 關鍵字。
3. **[PR 發布]**: 
   // turbo
   - 呼叫 `mcp_github_create_pull_request` (或 `gh pr create`)。
4. **[後續引導]**: 提醒使用者 PR 已建立且已關聯 Issue，建議執行 `/git-manager` 進行合併後清理。
