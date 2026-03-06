# Git Manager Skill 說明文件

這是一個高度封裝的 AI Skill，旨在協助您管理 Git 分支、規範提交訊息，並自動化 Gitea PR 流程。

## 📦 目錄結構與功能

- `SKILL.md`: **核心憲章**。定義了 Agent 必須遵守的行為準則（如 Commit 格式、分支規則）。
- `workflows/`: **自動化指令集**。
  - `/git-manager`: **總入口流程**，會引導您完成從同步、提交到 PR 的完整動作。
  - `/sub-init`: 初始化 Git 環境與掛載 Hooks (`pre-commit-hook.sh`)。
  - `/sub-branch`: 統一開發分支命名規範，互動式建立分支。
  - `/sub-sync`: 同步遠端代碼。
  - `/sub-commit`: 互動式提交（自動確保單號與類別符合規範）。
  - `/report-format`: 生成結構化的變更報告，用於 PR 描述。
  - `/sub-create-pr`: 調用 `tea` 指令建立 PR。

- `scripts/`:
  - `check-env.ps1`: Windows 環境偵測腳本。
  - `check-env.sh`: Mac/Linux 環境偵測腳本。

## 🚀 如何使用

### 1. 快速啟動

在對話框輸入：

> `/git-manager`

工作流會自動判斷您的作業系統並執行正確的偵測腳本。

### 2. 進階操作

如果您只需要執行特定部分，可以使用對應的子指令，例如：

- `/sub-commit`: 只想提交並推送時。
- `/report-format`: 只想生成變更報告時。

## 🛠️ 安裝要求

- 確保系統已安裝 `git`。
- 如果需要建立 PR 功能，請安裝並配置 [Gitea CLI (tea)](https://gitea.com/gitea/tea)。

## 📝 開發規範

本 Skill 遵循以下 Commit 格式：
`[類別] 描述 (需求單號)`
例如：`[功能] 新增登入認證邏輯 (#123)`
