---
name: git-manager
description: 負責管理 Git 分支、提交規範、跨平台(GitHub/Gitea) 流程的 AI Skill 套件。
---

# Git Manager 核心憲章 (Constitution)

本憲章定義了在此專案中所有 Git 相關操作的最高原則與標準。任何 Agent 在執行 Git 指令時，必須遵守此規範。

## 第一條：分支與環境原則

1. **[分支隔離]**: 嚴禁直接在 `main` 或穩定分支進行任何開發性 Commit。所有工作必須在 Feature Branch 開始。
2. **[開發狀態守衛]**: 在執行任何 `git add` 或 `git commit` 指令前，Agent 必須確認當前分支是否為 Feature Branch。若是 `main` 分支，必須強制提醒使用者先切換分支。
3. **[自適應環境]**: Agent 必須先執行偵測腳本（Windows 使用 `scripts/check-env.ps1`，Mac/Linux 使用 `scripts/check-env.sh`）自動偵測環境（如 GitHub 或 Gitea）。
4. **[禁止猜測原則]**: 絕對嚴禁猜測或預設使用者的環境資訊。
5. **[執行前確認原則]**: **在執行任何會改變專案狀態或遠端狀態的 Git 核心指令（如 `git commit`, `git push`, `git merge`, `git checkout` 等）之前，Agent 必須先將預計執行的指令完整條列並向使用者徵詢許可，待使用者明確回覆「執行」或類似肯定的意圖後，方可執行。**

## 第二條：提交規範 (Commit Standards)

- **格式**: `[類別] 描述 (需求單號)`
- **類別**: 包含 `功能`, `修正`, `調整`, `文件`, `重構`, `測試`。
- **[新] 自動推導**: Agent 應嘗試從分支名稱（如 `feat/abc-123`）中自動提取需求單號，減少使用者手動輸入。
- **描述**: 簡明扼要地說明變更內容。

## 第三條：PR 與 SOP

- **[PR 優先流程]**: 嚴禁將開發內容直接 Push 到 `main` 分支。標準流程為：`Feature Branch Commit` -> `Push to Remote` -> `Create PR` -> `Merge via PR`。
- **[彈性單號]**: 所有的 PR 必須經過 `/report-format` 回報格式化。發起 PR 時必須詢問「資訊需求單號」與「相關 Issue」。**若使用者表示無單號（輸入無或留空），Agent 必須在最終生成的 PR 描述中移除該欄位，嚴禁顯示留白或預設值。**
- 自動偵測環境 (`GitHub` 或 `Gitea`)，並調用對應的 CLI 工具 (`gh` 或 `tea`) 建立 Pull Request。

## 第四條：工具鏈

- 核心工具：`git`
- 擴充工具：`gh` (GitHub), `tea` (Gitea)
- 資源：`docs/PULL_REQUEST_TEMPLATE.md`, `docs/REPLY_TEMPLATE.md`, `scripts/pre-commit-hook.sh`

---

_本憲章為 Git Manager Skill 的最高行為準則，後續所有工作流 (Workflows) 均基於此憲章執行。_
