---
description: 建立並處理一個全新的 Issue，並引導至開發流程。
---

# 建立 Issue 並修復 (/issue-tracker)

1. **[問題摘要]**: 描述發生的問題或需求功能。
2. **[建立 Issue]**: 
   // turbo
   - 呼叫 MCP 或 CLI 建立 Issue。
   - 獲取返回的 `#IssueID`。
3. **[開發建議]**: AI 提議：「Issue 已建立 (#ID)，是否立即由 /git-manager 接手建立分支並開始修復？」
4. **[接力執行]**: 獲得許可後，引導使用者或自行啟動 `/git-manager` 的分支建立流程。
