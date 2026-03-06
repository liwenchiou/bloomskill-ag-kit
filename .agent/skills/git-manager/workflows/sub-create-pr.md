---
description: [Sub-Workflow] 於遠端建立 Pull Request (支援 GitHub / Gitea)
---

# 建立 PR (/sub-create-pr)

此工作流會根據 `scripts/check-env.ps1` 的偵測結果，調用對應的 CLI 工具建立 PR。

## 執行邏輯

1. **偵測環境**: 執行 `scripts/check-env.ps1`。
2. **條件分支執行**:
   - **如果為 GitHub 環境**:
     - 調用 `gh pr create` 命令。
     - 使用 `/report-format` 生成的內容作為 `--body`。
     - 使用最新 Commit Message 作為 `--title`。
   - **如果為 Gitea 環境**:
     - 調用 `tea pr create` 命令。
     - 使用 `/report-format` 生成的內容作為內容主體。
3. **錯誤處理**: 如果偵測不到 `gh` 或 `tea`，則生成回報訊息引導使用者手動操作或安裝工具。

## 輸出結果

回報 PR 建立成功的連結或相關狀態。
