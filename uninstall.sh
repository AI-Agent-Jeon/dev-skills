#!/bin/bash
# dev-skills 제거 스크립트
# 심볼릭 링크만 제거 (패키지 폴더는 유지)

set -e

SKILLS_DIR="$HOME/.claude/skills"
PACKAGE_DIR="$SKILLS_DIR/dev-skills"

if [ ! -d "$PACKAGE_DIR" ]; then
  echo "dev-skills 패키지가 설치되어 있지 않습니다."
  exit 0
fi

removed=0

find "$PACKAGE_DIR" -name "SKILL.md" -type f | while read f; do
  skill_dir=$(dirname "$f")
  skill_name=$(basename "$skill_dir")
  target="$SKILLS_DIR/$skill_name"

  if [ -L "$target" ]; then
    link_target=$(readlink "$target")
    if echo "$link_target" | grep -q "dev-skills"; then
      rm "$target"
      echo "  - $skill_name"
      removed=$((removed + 1))
    fi
  fi
done

echo ""
echo "심볼릭 링크 제거 완료"
echo "패키지 폴더를 삭제하려면: rm -rf $PACKAGE_DIR"
