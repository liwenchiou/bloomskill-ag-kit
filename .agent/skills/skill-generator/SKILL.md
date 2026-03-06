---
name: skill-generator
description: 用於快速產生、模板化與初始化新的 BloomSkill Agent 技能套件。
---

# skill-generator 核心憲章 (Constitution)

> [!CAUTION]
> ### 👑 至高無上原則 (Supreme Directive)
> **只要觸發與執行本技能，本文件的每一項條款即為最高判斷標準。Agent 的任何決策與操作，無論使用者的指令為何，都絕對不得凌駕或違背本憲章之規範。**

> [!IMPORTANT]
>
> ### ⚡ 核心開發規範 (Core Principles)
>
> **1. PDCA 執行生命週期 (Plan-Do-Check-Act)：**
>
> - **[Plan / /ideate]**: 蒐集新技能名稱、描述與目錄規劃，整理接收標準 (AC)，與使用者確認。
> - **[Do / /develop]**: 直接從 `.agent/templates/skill-template/` 複製，替換 `{{SKILL_NAME}}` 與 `{{SKILL_DESCRIPTION}}` 佔位符。
> - **[Check / /validate]**: 掃描是否有殘留未替換的變數標籤，確認目錄結構正確。
> - **[Act / /test]**: 以指令列印目錄結構確認完工。若 Check 失敗則退回 Do 修正，自癒上限 **3 次**。超限輸出 `[ERROR_LOG]`，觸發 **[RULE-005]** 等待人類介入。
>
> **2. 高速實作：**
>
> - 目錄與檔案建立時，寫入後必須摘要說明修改了哪些內容。
> - **獨立運作**: 本技能完成所有代碼生成後，即結束當前任務。嚴禁自行執行任何 `git add` 或 `git commit` 版控操作。

## 第一條：Skill 標準結構 (基於模板)

產生的新 Skill 目錄**必須直接複製自預設模板 `.agent/templates/skill-template/`**，並替換其中的標籤變數以維持一致的結構：
1. `SKILL.md`：核心憲章，由模板直接帶入「PDCA 生命週期」與「安全與執行體驗守則」。
2. `README.md`：說明文件，由模板直接帶入。
3. `workflows/`：選用目錄，根據需要保留或新增。
4. `scripts/`：選用目錄，建立預設腳本檔。

## 第二條：指令與工作流

- `/ideate`: 階段一，需求定義與架構設計。
- `/develop`: 階段二，複製模板與替換變數。
- `/validate`: 階段三，安全性與規範審查。
- `/test`: 階段四，結構驗證與完工宣告。
