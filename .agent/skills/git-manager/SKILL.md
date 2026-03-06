---
name: git-manager
description: 負責管理 Git 分支、提交規範、跨平台(GitHub/Gitea) 流程的 AI Skill 套件。
---

# Git Manager 核心憲章 (Constitution)

本憲章定義了在此專案中所有 Git 相關操作的最高原則與標準。任何 Agent 在執行 Git 指令時，必須遵守此規範。

## 第一條：分支與環境原則

1. **[分支隔離]**: 嚴禁直接在 `main` 或穩定分支進行實驗性開發，必須在 Feature Branch 進行工作。
2. **[自適應環境]**: Agent 必須先執行偵測腳本（Windows 使用 `scripts/check-env.ps1`，Mac/Linux 使用 `scripts/check-env.sh`）自動偵測環境（如 GitHub 或 Gitea），並根據偵測結果調用對應的 CLI 工具 (`gh` 或 `tea`)。
3. **[禁止猜測原則]**: **絕對嚴禁猜測或預設使用者的環境資訊（如 Remote URL、專案路徑等）。** 若偵測結果不明確或資訊不完整，必須主動詢問使用者，獲得明確指令後方可執行任何變更。

## 第二條：提交規範 (Commit Standards)

- **格式**: `[類別] 描述 (需求單號)`
- **類別**: 包含 `功能`, `修正`, `調整`, `文件`, `重構`, `測試`。
- **描述**: 簡明扼要地說明變更內容。

## 第三條：PR 與 SOP

- 所有的 PR 必須經過 `/report-format` 工作流生成的標準回報格式。
- PR 描述中必須包含「資訊需求單號」與「相關 Issue」。

## 第四條：工具鏈

- 核心工具：`git`
- 擴充工具：`gh` (GitHub), `tea` (Gitea)
- 資源：`docs/PULL_REQUEST_TEMPLATE.md`, `docs/REPLY_TEMPLATE.md`

---

_本憲章為 Git Manager Skill 的最高行為準則，後續所有工作流 (Workflows) 均基於此憲章執行。_
