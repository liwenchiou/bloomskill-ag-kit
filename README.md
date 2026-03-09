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
  - `/sub-commit`: AI 主動分析變更並提議提交訊息與 Stage 範圍。
- **特色**: 整合 GitHub MCP Server 與 `gh` CLI，支援智能環境降級。

---

### 📋 [Issue Tracker](.agent/skills/issue-tracker/)

**核心功能**: 負責 GitHub Issue 的建立、管理與開發任務分發，實現開發閉環。

- **Slash Commands**:
  - `/issue-tracker`: 主動偵測問題並引導建立 GitHub Issue 與任務盤點。
  - `/sub-create-pr-linked`: 自動建立 PR 並關聯對應的 Issue (#ID)，實現自動化結案。
- **特色**: 強化「Issue First」開發準則，確保所有變更有跡可循。

---

### 🔨 [Skill Generator](.agent/skills/skill-generator/)

**核心功能**: 用於快速產生、模板化與初始化新的 BloomSkill Agent 技能套件。

- **Slash Commands**: `/ideate` → `/develop` → `/validate` → `/test` (PDCA 四階段)。
- **特色**: 嚴格遵循模板規範，自動產出具備 PDCA 生命週期與安全防護的標準化技能。

---

### 🧪 [Skill Tester](.agent/skills/skill-tester/)

**核心功能**: 讀取指定 Skill 的憲章與工作流，自動在沙盒中建立測試案例並驗證其行為。

- **Slash Commands**: 調用後自動選擇目標 Skill 並開始 AC 驗證。
- **特色**: **沙盒隔離 (Sanbox Isolation)** 原則，確保測試過程不污染原始項目。

---

### 🛡️ [Security Reporter](.agent/skills/security-reporter/)

**核心功能**: 雙重核實資安通報產出流，確保資訊 100% 正確不誤導。

- **Slash Commands**: `/verified-security-report`
- **特色**: 結合事實查核 (165防騙網、事實查核中心) 與自動化草稿生成，自動修正不實案例。

---

### 🧠 [5-Whats Analyzer](.agent/skills/5-whats-analyzer/)

**核心功能**: 使用資深諮詢師視角，透過 5 Whats 邏輯深度剖析問題根源。

- **Slash Commands**: `/5-whats-analyzer`
- **特色**: 犀利提問、剝離情緒，自動產出具備心理學理論支撐的系統性分析報告。

---

## 📦 如何使用 (Usage Guide)

### 方法 A：自動導出 (推薦)

根據您的作業系統選用對應的指令：

**Windows (PowerShell)**:

```powershell
.\export-skill.ps1 -SkillName "git-manager" -TargetProjectPath "D:\YourProject"
```

**Mac / Linux (Bash)**:

```bash
chmod +x export-skill.sh
./export-skill.sh git-manager /path/to/your/project
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
├── export-skill.ps1     # 快速導出工具 (Win)
├── export-skill.sh      # 快速導出工具 (Mac/Linux)
└── README.md            # 本文件
```

---

## 🤝 貢獻與開發

1. 從 `.agent/templates/skill-template/` 複製範本。
2. 遵循「禁止猜測原則」與「環境自適應」規範撰寫。
3. 歡迎提交 PR 擴展更多實用的 AI Skills！

---

_Created with ❤️ by [liwenchiou](https://github.com/liwenchiou). 讓 AI 更有「智」感。_
