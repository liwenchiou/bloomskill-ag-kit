---
description: Git Manager 總進入點：啟動完整的開發到 PR 流程
---

# Git Manager 總流程 (/git-manager)

這是 `git-manager` Skill 的核心進入點。它將根據「核心憲章」引導您完成標準的開發交付流程。

## 執行流程 (General Flow)

1. **[環境初始化]**: 檢查當前 Git 狀態與 Remote 連線。
2. **[同步更新]**: 執行 `@[sub-sync]` 工作流，確保本機代碼是最新的。
3. **[變更檢核]**: 確認是否有未提交的工作。
4. **[提交與推送]**: 執行 `@[sub-commit]` 工作流，依照憲章規範完成 Commit 並 Push 到遠端。
5. **[回報格式生成]**: 執行 `@[report-format]` 工作流，根據變更內容生成標準 PR 描述。
6. **[建立 PR]**: 執行 `/sub-create-pr` 工作流，將生成的內容發布到 Gitea/GitHub。
7. **[結尾清理]**: 執行 `/sub-cleanup` 工作流，合併後恢復乾淨環境。

---

> [!TIP]
> 如果您只需要執行特定步驟，也可以單獨呼叫對應的次級工作流 (如 `/sub-sync`)。
>
> - `/sub-create-pr`: 調用 `tea` 或 `gh` 指令建立 PR。
> - `/sub-cleanup`: **結尾清理流程**，包含合併 PR、切換回 main 並刪除已失效的分支。
