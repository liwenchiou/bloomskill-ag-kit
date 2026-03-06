---
description: [Sub-Workflow] 提交變更並推送至遠端
---

# 提交與推送 (/sub-commit)

1. 列出目前變更的檔案。
2. 根據 Git Manager 憲章，提示使用者進行 Stage (`git add`)。
3. 自動分析變更範圍。
4. **互動式提交**:
   - 詢問變更類別 (功能/修正/...)。
   - 詢問需求單號。
   - 合併成符合規範的 Commit Message。
5. 執行 `git push -u origin [current-branch]`。
