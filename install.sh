#!/bin/bash
# dev-skills 설치 스크립트
# 패키지 클론 후 각 스킬을 ~/.claude/skills/ 최상위에 심볼릭 링크로 등록

set -e

SKILLS_DIR="$HOME/.claude/skills"
PACKAGE_DIR="$SKILLS_DIR/dev-skills"

# 패키지 존재 확인
if [ ! -d "$PACKAGE_DIR" ]; then
  echo "dev-skills 패키지를 클론합니다..."
  git clone https://github.com/AI-Agent-Jeon/dev-skills.git "$PACKAGE_DIR"
fi

# 심볼릭 링크 생성
linked=0
skipped=0

find "$PACKAGE_DIR" -name "SKILL.md" -type f | while read f; do
  skill_dir=$(dirname "$f")
  skill_name=$(basename "$skill_dir")
  target="$SKILLS_DIR/$skill_name"

  if [ ! -e "$target" ]; then
    ln -s "$skill_dir" "$target"
    echo "  + $skill_name"
    linked=$((linked + 1))
  else
    skipped=$((skipped + 1))
  fi
done

echo ""
echo "dev-skills 설치 완료"
echo "  스킬 경로: $PACKAGE_DIR"
echo ""
echo "Claude Code를 재시작하면 /cm-init 등 슬래시 명령어를 사용할 수 있습니다."
