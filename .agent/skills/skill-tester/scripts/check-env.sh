#!/bin/bash
# skill-tester - Environment Check Script (Mac/Linux)

echo "🔍 正在偵測運行環境 (Mac/Linux)..."

# Example Checks
if command -v node &> /dev/null; then
    echo "✅ Node.js is installed."
else
    echo "❌ Node.js is missing."
fi

echo "✅ 環境偵測完畢。"
exit 0
