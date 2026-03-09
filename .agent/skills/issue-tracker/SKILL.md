---
name: issue-tracker
description: 負責 GitHub/Gitea 議題 (Issue) 的建立、管理與開發任務分發，實現開發閉環。
---

# Issue Tracker 核心憲章 (Constitution)

> [!IMPORTANT]
> ### 🎯 任務驅動開發原則
> 1. **主動偵測**: 執行任何任務發現 Bug、遺漏功能或技術債時，應主動詢問：「偵測到 [描述]，是否建立 Issue 進行追蹤？」
> 2. **建立優先**: 在開始大規模修復或新功能開發前，應引導使用者建立 Issue。
> 3. **結構化描述**: 建立 Issue 時必須包含：問題現狀、預期行為、修復建議（若 AI 已有思路）。

---

## 跨技能協助
1. **[與 Git Manager 聯動]**: 建立 Issue 後，應主動建議執行 `/git-manager` 並帶入該 Issue ID 建立分支。
2. **[開發技能橋接]**: 當開發技能遇到瓶頸時，可呼叫本技能將問題記錄。

---

## 第一條：建立與追蹤規範 (Issue Standards)
1. **[MCP 優先]**: 優先使用 `mcp_github` 進行 Issue 建立，其次使用 `gh` 或 `tea` CLI。
2. **[自動化偵測]**: 發現 Bug 或遺漏時，主動提議建立 Issue。
3. **[標籤管理]**: 自動根據內容分類標籤 (bug, feat, docs)。

## 第二條：PR 建立與關聯基準 (PR & Association)
1. **[Issue 閉環]**: 建立 PR 時，若存在對應 Issue，**必須**在 PR 描述中加入 `Closes #ID` 或 `Fixes #ID` 實現自動關閉。
2. **[內容生成]**: 使用 MCP 工具自動生成 PR 描述，並確保包含 Issue 連結。
3. **[跨技能呼叫]**: PR 建立任務完成後，仍須引導至 `git-manager` 進行分支清理或合併操作。

---
_本憲章為 issue-tracker 技能之最高行為與決策原則。_
