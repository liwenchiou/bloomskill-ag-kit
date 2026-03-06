#!/bin/bash
# skill-tester - 沙盒環境清理腳本 (Mac/Linux)

SANDBOX_DIR="/tmp/skill-sandbox"

echo "🧹 正在清理沙盒測試環境..."
rm -rf "$SANDBOX_DIR"
echo "✅ 沙盒環境已清理完畢。"
exit 0
