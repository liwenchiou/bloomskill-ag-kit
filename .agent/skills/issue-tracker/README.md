# 📋 Issue Tracker Skill

這是為 **BloomSkill AG Kit** 量身打造的開發閉環技能。它能讓 AI 在發現問題時，主動協助開發者進行 GitHub Issue 管理。

## 🌟 核心特色
- **環境偵測**: 自動偵測 MCP GitHub 與 `gh` CLI。
- **任務驅動**: 強化「Issue First」原則，所有修改建議先發單。
- **自動化 PR**: 建立 PR 時自動關聯並關閉 Issue，實現開發閉環。

## 🛠️ 指令說明
- `/issue-tracker`: 主動偵測當前環境中的問題或建議。
- `/sub-create-pr-linked`: 建立關聯 Issue 的 PR (內部子流程)。
