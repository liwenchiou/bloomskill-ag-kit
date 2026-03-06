---
name: git-manager
description: 負責管理 Git 分支、提交規範、跨平台(GitHub/Gitea) 流程的 AI Skill 套件。
---

# Git Manager 核心憲章 (Constitution)

> [!CAUTION]
>
> ### 🛑 執行前強制確認
>
> **「在執行任何會改變專案狀態或遠端狀態的 Git 核心指令（如 `git commit`, `git push`, `git merge`, `git checkout` 等）之前，Agent 必須先將預計執行的指令完整條列並向使用者徵詢許可，獲得使用者明確回覆『執行』、內容肯定或類似意圖後，方可發起下一個 Tool Call。」**
>
> **禁止在預告指令的當下直接執行。必須有一個明確的回合等待使用者指令。**

---

## 第一條：分支與環境原則

1. **[分支隔離]**: 嚴禁直接在 `main` 或穩定分支進行任何開發性 Commit。所有工作必須在 Feature Branch 開始。
2. **[開發狀態守衛]**: 執行任何 `add/commit` 前檢查分支，若是 `main` 必須提醒切換。
3. **[自適應環境]**: 必須先執行偵測腳本（PS1/SH）偵測環境（GH/Gitea）。
4. **[禁止猜測原則]**: 絕對嚴禁猜測或預設使用者環境資訊。

## 第二條：提交規範 (Commit Standards)

- **格式**: `[類別] 描述 (需求單號)`
- **類別**: 包含 `功能`, `修正`, `調整`, `文件`, `重構`, `測試`。
- **[新] 自動推導**: 嘗試從分支名稱（如 `feat/abc-123`）中自動提取需求單號。

## 第三條：PR 與 SOP

- **[PR 優先流程]**: 嚴禁將開發內容直接 Push 到 `main`。
- **[彈性單號]**: PR 時必須詢問單號。若無單號，必須徹底移除該欄位，嚴禁留白。
- 自動偵測環境 (`GitHub` 或 `Gitea`) 調用 CLI 工具。

## 第四條：工具鏈

- 核心工具：`git`
- 擴充工具：`gh` (GitHub), `tea` (Gitea)
- 資源：`docs/PULL_REQUEST_TEMPLATE.md`, `docs/REPLY_TEMPLATE.md`, `scripts/pre-commit-hook.sh`

---

_本憲章為 Git Manager Skill 的最高行為準則，後續所有工作流 (Workflows) 均基於此憲章執行。_
