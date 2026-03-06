---
description: [Sub-Workflow] 於遠端建立 Pull Request (支援 GitHub / Gitea)
---

# 建立 PR (/sub-create-pr)

此工作流會根據 `scripts/check-env.ps1` 的偵測結果，調用對應的 CLI 工具建立 PR。

## 執行邏輯

1. **偵測環境**: 執行 `scripts/check-env.ps1`。
2. **準備指令**:
   - **如果為 GitHub 環境**: 準備 `gh pr create` 命令及其參數。
   - **如果為 Gitea 環境**: 準備 `tea pr create` 命令及其參數。
3. **⚠️ [核心確認]**: 完整的 PR 指令（標題、內文、關聯單號等）與遠端網址。
4. **許可執行**: **待使用者明確回覆「是」或「執行」後，方可發出 PR 命令。**
5. **結果回報**: 顯示 PR 建立成功的連結或相關狀態。
