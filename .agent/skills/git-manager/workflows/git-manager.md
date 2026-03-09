---
description: Git Manager 總進入點：啟動完整的開發到 PR 流程
---

# Git Manager 總流程 (/git-manager)

這是 `git-manager` Skill 的核心進入點。它將根據「核心憲章」引導您完成標準的開發交付流程。

## 執行流程 (General Flow)

1. **[環境初始化]**: 檢查 Git 狀態。
   - **工具偵測**: 優先檢查是否具備 MCP GitHub 工具，其次檢查 `gh` 或 `tea` CLI。
   - **智能引導**: 若兩者皆無，主動提醒使用者可安裝 `gh` CLI 或配置 MCP 以獲得完整的 PR 自動化體驗。
// turbo
2. **[同步更新]**: 執行 `@[sub-sync]` 工作流，確保代碼最新。
3. **[變更檢核]**: 確認是否有未提交的工作。
4. **[提交與推送]**: 執行 `@[sub-commit]` 工作流。
5. **[PR 描述生成]**: 根據變更生成標準 PR 內容。
6. **[建立 PR]**: 執行 `/sub-create-pr` 將內容發布至 Gitea/GitHub。
7. **[結尾清理]**: 執行 `/sub-cleanup` 恢復環境。

---

> [!TIP]
> 如果您只需要執行特定步驟，也可以單獨呼叫對應的次級工作流 (如 `/sub-sync`)。
>
> - `/sub-create-pr`: 調用 `tea` 或 `gh` 指令建立 PR。
> - `/sub-cleanup`: **結尾清理流程**，包含合併 PR、切換回 main 並刪除已失效的分支。
