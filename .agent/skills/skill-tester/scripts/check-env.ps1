# skill-tester - Environment Check Script (Windows)

Write-Output "🔍 正在偵測運行環境 (Windows PS)..."

# Example Checks
if (Get-Command node -ErrorAction SilentlyContinue) {
    Write-Output "✅ Node.js is installed."
} else {
    Write-Output "❌ Node.js is missing."
}

Write-Output "✅ 環境偵測完畢。"
exit 0
