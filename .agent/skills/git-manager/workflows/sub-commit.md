---
description: [Sub-Workflow] 提交變更並推送至遠端
---

# 提交與推送 (/sub-commit)

1. **[變更分析]**: 列出變更檔案並分析其內容。
2. **[自動化建議]**: 根據變更內容與憲章規範，AI 主動提議：
   - Stage 的檔案範圍 (`git add`)。
   - 推薦的 Commit Message (含 Category 與推導出的 IssueID)。
3. **⚠️ [核心確認]**: 將完整的 `git commit -m "..."` 與 `git push` 指令列出，詢問使用者是否執行或需要微調。
4. **許可執行**: 獲得許可後，發起 Tool Call 執行指令。
