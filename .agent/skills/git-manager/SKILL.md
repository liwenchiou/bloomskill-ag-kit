---
name: git-manager
description: 管理 Git 分支、提交規範與 GitHub/Gitea 流程。
---

# Git Manager 核心憲章 (Constitution)

> [!IMPORTANT]
> ### ⚡ 高效率執行優先
> 1. **修改回報**: 完成檔案寫入後，必須摘要修改內容，無需事前詢問。
> 2. **Git 確認門檻**: 所有開發完成後，完整條列 Git 指令並徵詢許可。獲得明確回覆「執行」或肯定意圖後方可執行。
> 3. **禁止同步**: 不得在列出指令時同時執行，為使用者留出最終審核空間。

---

## 跨技能協約
其他 Skill 完成修改後，**必須**提議執行 `/git-manager` 收尾。**嚴禁**自行執行 `git push/commit`。

---

## 第一條：分支與環境原則
1. **[分支隔離]**: 嚴禁在 `main` 或穩定分支進行開發性 Commit。
2. **[自動化守衛]**: 執行任何操作前檢查分支，若是 `main` 必須提醒切換。
3. **[MCP 優選]**: **(NEW)** 若偵測到 `mcp_github` 服務，優先使用 MCP Tool 進行 GitHub 操作 (如搜尋、PR、Issue)；否則使用 `gh` 或 `tea` CLI。
4. **[命名規範]**: 新分支呼叫 `/sub-branch`，遵守 `[Type]/[IssueID]-[Description]`。

## 第二條：提交規範 (Commit Standards)
- **格式**: `[Category] Description (IssueID)`
- **自動化推導**: AI 應根據變更內容「主動建議」類別與描述，若分支名含單號則自動提取，減少使用者輸入負擔。
- **類別**: `feat`, `fix`, `refine`, `docs`, `refactor`, `test`。

## 第三條：PR 流程
- **[PR 優先]**: 嚴禁直接 Push 到 `main`。
- **[單號處理]**: PR 時確認單號；若無單號，必須從模板中移除該欄位，不得留空。

## 第四條：安全性與工具
- **[文字處理]**: 嚴禁在 Shell 直接 `grep` 中文字，務必改用 `grep_search`。
- **[逾時自癒]**: 指令上限 10 秒，掛起應中斷並嘗試備選方案 (如從 CLI 切換至 MCP)。

---
_本憲章為本技能之最高行為原則。_
