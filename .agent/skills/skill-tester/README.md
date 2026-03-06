# skill-tester

> 讀取指定 Skill 的憲章與工作流，自動在沙盒環境中建立測試案例並驗證其行為是否符合規範。

## 🛰️ 階段式指令 (Workflow Pipeline)

本技能的執行依循 PDCA 嚴謹任務生命週期：
- `/ideate`: 階段一：詢問目標 Skill，讀取並解析其憲章內容。
- `/develop`: 階段二：依憲章守則生成對應測試案例清單。
- `/validate`: 階段三：審查案例完整性與合規性。
- `/test`: 階段四：於沙盒環境執行並輸出測試報告。

## 📦 安裝相依性

- 工具：`bash` (Mac/Linux) 或 `PowerShell` (Windows)
- 權限：對 `/tmp/` 目錄有讀寫權限
- 沙盒目錄：`/tmp/skill-sandbox/`（自動建立與清理）

---

_Created via BloomSkill AI Kit Template._
