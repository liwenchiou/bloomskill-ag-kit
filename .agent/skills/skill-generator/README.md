這是為 **BloomSkill AG Kit** 量身打造的生產工具。它能確保所有新開發的技能都符合相同的架構規範，並自動注入 PDCA 生命週期模組。

## 🛰️ 階段式指令 (Workflow Pipeline)

本技能的執行依循嚴謹的 AI 任務生命週期，您可以透過下方指令啟動：
- `/ideate`: **需求定義**。解析使用者的 Prompt，生成 AC 接收標準。
- `/develop`: **代碼生成**。自動建立 `SKILL.md`、`workflows/` 與腳本。
- `/validate`: **規範審查**。對照全域憲章驗證新技能的安全性。
- `/test`: **驗證測試**。呼叫 `/skill-tester` 進行最終沙盒驗證。

## 📦 產出規範
- **核心文件**: `SKILL.md` (憲章), `README.md` (說明)。
- **邏輯模組**: 至少包含一組 `workflows/*.md`。
- **目錄結構**: 符合 `.agent/skills/[name]/` 標準路徑。

---

_Created via BloomSkill AI Kit Template._
