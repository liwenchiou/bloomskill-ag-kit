---
description: [Sub-Workflow] 生成標準 PR 回報格式
---

# 報告格式生成器 (/report-format)

此工作流根據最近的變更與 `docs/PULL_REQUEST_TEMPLATE.md` 範本生成精美的 PR 描述內容。

## 執行邏輯

1. **讀取範本**: 從 `docs/PULL_REQUEST_TEMPLATE.md` 載入結構。
2. **填充關聯資訊**:
   - 詢問「資訊需求單號」與「相關 Issue」。
   - **條件處理**: 若使用者回覆「無」或「留空」，則在最終 PR 描述中「徹底移除」該相關區塊，嚴禁保留該欄位與冒號。
3. **分析 Git LOG**:
   - 透過 `git log -n 5` 提取最近的提交紀錄。
   - 透過 `git diff --stat` 指出受影響的模組。
4. **格式化輸出**: 將分析結果注入範本對應位置。

## 輸出結果

生成的內容將會儲存於臨時標記中，並套用 `docs/REPLY_TEMPLATE.md` 格式回報給使用者確認。
