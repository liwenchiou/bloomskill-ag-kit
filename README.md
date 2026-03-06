# BloomSkill AI Kit

這是一個專門存放自定義 AI Skills 的工具庫。你可以將這裡的 Skill 資料夾直接複製到其他專案的 `.agent/skills/` 目錄下使用。

## 目錄結構

- `.agent/skills/`: 存放所有可重用的 AI Skills。
- `.agent/templates/`: 存放 Skill 的範本。

## 使用方法

1. 在本專案中開發或修改 Skill。
2. 將所需的 Skill 資料夾（例如 `.agent/skills/my-awesome-skill/`）複製。
3. 貼上到目標專案的 `.agent/skills/` 目錄。
4. 在目標專案中，Agent 即可識別並使用該 Skill。

## Skill 規範

每個 Skill 應包含：

- `SKILL.md`: 核心說明文件（包含 YAML frontmatter）。
- `scripts/`: (選填) 輔助腳本。
- `examples/`: (選填) 使用範例。
- `resources/`: (選填) 相關資源檔。
