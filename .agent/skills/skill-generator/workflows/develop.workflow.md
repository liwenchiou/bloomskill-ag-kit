---
description: [階段二] 代碼生成與腳本撰寫 (實體化新技能)
---

# 階段二：代碼生成與腳本撰寫 (/develop)

在使用者確認藍圖後，依據 `/ideate` 發展出的設計，開始複製與修改產生新技能實體。

## 執行邏輯

1. **環境前置檢查**: 執行 `scripts/check-env.sh` 或 `.ps1` 確保所需工具齊全。
2. **高速實作**: 
   - 建立目標路徑 `.agent/skills/<技能名稱>/`。
   - **複製模板**：將 `.agent/templates/skill-template/` 內的所有檔案與目錄，複製一份至上述新技能路徑。
   - **替換變數**：
     - 開啟新複製過去的 `SKILL.md`，把預設的 `{{SKILL_NAME}}` 佔位符號替換為輸入的「真實技能名稱」，並將 `{{SKILL_DESCRIPTION}}` 替換為「用途描述」。
     - 開啟新複製過去的 `README.md`，同步替換 `{{SKILL_NAME}}` 與 `{{SKILL_DESCRIPTION}}` 標籤。
   - 根據使用者的選擇，保留或移除多餘的 `scripts/` 或 `workflows/` 目錄。
3. **⛔ [強制停頓 - Phase Gate]**: 
   - 顯示建立完成的目錄樹。
   - 詢問使用者：**「我已完成新技能的初始化代碼，想親自檢閱代碼，還是同意我進行安全性審查 (/validate) 呢？」**
