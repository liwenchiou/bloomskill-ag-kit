---
name: bloomskill-main-constitution
description: BloomSkill AI Kit 全域開發憲章，定義了開發新 Skill 與維護專案的最高準則。
---

# BloomSkill 全域開發憲章 (Main Constitution)

> [!CAUTION]
>
> ### 🛑 核心禁止事項：變更前強制確認 (The Law of Consent)
>
> **嚴禁在未獲得使用者對「變更內容」或「指令序列」的明確授權前，執行任何改變專案狀態的動作。**
>
> **具體行為準則：**
>
> 1. **[內容預覽]**: 在修改或建立任何檔案（File Write/Update）前，必須先在對話框中以 Markdown 呈現預計修改的「內容提案 (Proposal)」。獲得確認後方可在下一個回話回合執行寫入工具。
> 2. **[指令序列確認]**: 執行任何 Git 或 Shell 指令前，必須完整條列「指令清單」供核對，並停下來等待明確回覆「執行」或類似許可。
> 3. **[回報格式一致性]**: 所有執行狀態的回報必須嚴格遵循 `.agent/skills/git-manager/docs/REPLY_TEMPLATE.md` 之結構，確保流程透明與開發者體驗一致。
> 4. **[禁止同步執行]**: 絕對嚴禁在一個回合中同時提供「內容提案/指令清單」並「執行 Tool」。必須經過一個完整的人機對話週期（Human-in-the-loop Round-trip）。

---

## 第一章：核心行為準則

1. **[明確勝過猜測]**: 絕對嚴禁預設或猜測使用者的環境（如路徑、Git 狀態）。偵測不明確時必須先釐清。
2. **[分支隔離模式]**: 嚴禁在 `main` 進行任何直接開發 Commit。

## 第二章：Skill 開發規範 (The Gold Standard)

每個 Skill 資料夾必須保持完全封裝並具備：

- **SKILL.md**: 必須內含對應的「紅色警告」確認原則。
- **README.md**: 寫給使用者的說明書（含指令清單）。
- **workflows/**: 模組化的工作流檔案。
- **scripts/**: 跨平台環境偵測與輔助腳本（.ps1 與 .sh 並行）。

## 第三章：交付與報告

- **[純淨 PR]**: PR 描述中不應包含與專案變更無關的自動化標記。
- **[高品質交付]**: 每次 Commit 與 PR 必須符合 `git-manager` 之憲章規範。

---

_本憲章為 BloomSkill 專案的靈魂，是 Agent 與開發者信任的核心基準。_
