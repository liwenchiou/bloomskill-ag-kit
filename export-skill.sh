# Usage: ./export-skill.sh <SkillName> <TargetProjectPath>

SKILL_NAME=$1
TARGET_PROJECT_PATH=$2

if [ -z "$SKILL_NAME" ] || [ -z "$TARGET_PROJECT_PATH" ]; then
    echo "Usage: ./export-skill.sh <SkillName> <TargetProjectPath>"
    exit 1
fi

SOURCE_PATH=".agent/skills/$SKILL_NAME"
DEST_PATH="$TARGET_PROJECT_PATH/.agent/skills/$SKILL_NAME"

# 🛑 [安全確認]
echo "⚠️  即將將技能 [$SKILL_NAME] 導出至：「$TARGET_PROJECT_PATH」"
read -p "是否確定執行複製動作？ [y/N]: " confirmation
if [[ ! $confirmation =~ ^[Yy]$ ]]; then
    echo "❌ 操作已取消。"
    exit 0
fi

if [ ! -d "$SOURCE_PATH" ]; then
    echo "❌ 錯誤：在 $SOURCE_PATH 找不到技能：'$SKILL_NAME'"
    exit 1
fi

mkdir -p "$TARGET_PROJECT_PATH/.agent/skills"
cp -R "$SOURCE_PATH" "$TARGET_PROJECT_PATH/.agent/skills/"

echo "✅ 成功：技能 '$SKILL_NAME' 已導出至 $DEST_PATH"
