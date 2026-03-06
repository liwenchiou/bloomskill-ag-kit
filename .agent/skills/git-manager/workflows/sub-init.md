---
description: [Sub-Workflow] 初始化 Git 環境與掛載 Hooks
---

# 環境初始化 (/sub-init)

此工作流負責將 `git-manager` 的增強與防護腳本掛載至專案的 `.git/hooks` 目錄中，並給予執行權限。

## 執行邏輯

1. **檢查 Hook 狀態**: 檢查 `.git/hooks/commit-msg` 是否已經存在且其內容符合當前版本。
2. **準備掛載指令**:
   - 指令：`cp .agent/skills/git-manager/scripts/pre-commit-hook.sh .git/hooks/commit-msg && chmod +x .git/hooks/commit-msg`
3. **⚠️ [掛載確認]**: 首次執行時，列出上述指令詢問使用者是否允許安裝 Commit 防護 Hook。
4. **許可執行**: 待使用者同意後，執行指令，將 `git-manager` 的提交流程保護正式生效。
