---
description: [Sub-Workflow] 合併 PR 並進行環境清理
---

# 合併與清理 (/sub-cleanup)

此工作流在 PR 審核通過後執行，負責將變更合併至主分支並移除過期的開發分支。

## 執行邏輯

1. **環境評估**: 執行 `scripts/check-env.ps1` 判斷當前環境。
2. **⚠️ [合併確認]**: 提交合併與分支移除指令（例如：`gh pr merge --delete-branch`）。
3. **許可執行**: **待使用者確認其合併方案（如是否保留 Commit 歷史）後方可執行。**
4. **本地更新與清理**:
   - 切換回 `main`：`git checkout main`。
   - 同步最新代碼：`git pull origin main`。
   - 移除過期的本地追蹤、清理失效分支。
   - 以上所有 `git checkout`, `git pull` 等指令執行前均需條列供確認。

## 輸出結果

回報清理完成，目前處於乾淨的 `main` 分支。
