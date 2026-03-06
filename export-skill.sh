#!/bin/bash

# Usage: ./export-skill.sh <SkillName> <TargetProjectPath>

SKILL_NAME=$1
TARGET_PROJECT_PATH=$2

if [ -z "$SKILL_NAME" ] || [ -z "$TARGET_PROJECT_PATH" ]; then
    echo "Usage: ./export-skill.sh <SkillName> <TargetProjectPath>"
    exit 1
fi

SOURCE_PATH=".agent/skills/$SKILL_NAME"
DEST_PATH="$TARGET_PROJECT_PATH/.agent/skills/$SKILL_NAME"

if [ ! -d "$SOURCE_PATH" ]; then
    echo "❌ Error: Skill '$SKILL_NAME' not found in $SOURCE_PATH"
    exit 1
fi

if [ ! -d "$TARGET_PROJECT_PATH" ]; then
    echo "❌ Error: Target project path does not exist: $TARGET_PROJECT_PATH"
    exit 1
fi

# Create target directory if it doesn't exist
mkdir -p "$TARGET_PROJECT_PATH/.agent/skills"

# Copy skill folder
cp -R "$SOURCE_PATH" "$TARGET_PROJECT_PATH/.agent/skills/"

echo "✅ Success: Skill '$SKILL_NAME' exported to $DEST_PATH"
