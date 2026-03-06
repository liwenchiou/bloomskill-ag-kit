# 🌸 BloomSkill AI Kit

![BloomSkill Banner](file:///C:/Users/user/.gemini/antigravity/brain/bece884b-5a43-425d-9105-b56cffcab4c8/bloomskill_banner_1772768248588.png)

> **"Empower your AI Agent with premium, production-ready skills."**

BloomSkill AI Kit 是一個專為現代 AI Agent（如 Antigravity, Cursor, Claude 等）打造的**高度封裝、跨平台**的指令與技術庫。這是我個人用於加速開發的私藏工具，現在開源分享給所有希望提升 AI 自動化效率的開發者。

---

## 🚀 為什麼選擇 BloomSkill？

一般檔案層級的指令往往過於簡碎，且缺乏跨平台兼容性。我們將「知識」與「執行」完美結合：

- **封裝性 (Encapsulation)**: 每個 Skill 包含完整的憲章 (SKILL.md)、工作流 (Workflows) 與說明 (README)。
- **全平台支援**: 自動偵測偵測環境，適配 Windows (PowerShell) 與 Mac/Linux (Bash)。
- **SOP 導向**: 內建專業的開發標準與 PR 模板，確保代碼品質。

---

## 🛠️ 現有技能庫 (Skill Inventory)

### 🛰️ [Git Manager](.agent/skills/git-manager/)

**核心功能**: 自動化管理 Git 流程與 Gitea/GitHub 集成。

- **Slash Commands**:
  - `/git-manager`: 總入口，引導您完成標準開發交付流程。
  - `/report-format`: 自動分析變更並生成精美的 PR 描述。
  - `/sub-commit`: 互動式提交，自動檢查需求單號規範。
- **特色**: 內建跨平台偵測指令，支援 `gh` 與 `tea` 雙平台。

---

## 📦 如何使用 (Usage Guide)

### 方法 A：自動導出 (推薦)

如果您在 Windows 環境下，可以使用專用腳本一鍵分發：

```powershell
.\export-skill.ps1 -SkillName "git-manager" -TargetProjectPath "D:\YourProject"
```

### 方法 B：手動搬運

1. 進入 `.agent/skills/` 目錄。
2. 將所需的技能資料夾（如 `git-manager/`）複製。
3. 貼上至您目標專案的 `.agent/skills/` 目錄。
4. 重啟或刷新您的 AI Agent，即可開始使用 `/` 指令。

---

## 📝 專案結構預覽

```text
bloomskill-ag-kit/
├── .agent/              # AI Agent 核心目錄
│   ├── skills/          # 精選技能庫
│   └── templates/       # 技能開發範本
├── export-skill.ps1     # 快速導出工具
└── README.md            # 本文件
```

---

## 🤝 貢獻與開發

1. 從 `.agent/templates/skill-template/` 複製範本。
2. 遵循「禁止猜測原則」與「環境自適應」規範撰寫。
3. 歡迎提交 PR 擴展更多實用的 AI Skills！

---

_Created with ❤️ by [liwenchiou](https://github.com/liwenchiou). 讓 AI 更有「智」感。_
