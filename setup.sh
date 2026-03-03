#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PARENT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

echo "🐿️ 다람쥐 회사 설치"
echo ""
echo "설치 위치를 선택하세요:"
echo "  1) 전역 (~/.claude/) — 모든 프로젝트에서 사용"
echo "  2) 로컬 ($PARENT_DIR/.claude/) — 해당 프로젝트에서만 사용"
echo ""
read -p "선택 [1/2]: " choice

case "$choice" in
  1)
    TARGET="$HOME/.claude"
    echo ""
    echo "📦 전역 설치: $TARGET"
    ;;
  2)
    TARGET="$PARENT_DIR/.claude"
    echo ""
    echo "📦 로컬 설치: $TARGET"
    ;;
  *)
    echo "❌ 잘못된 선택"
    exit 1
    ;;
esac

# 디렉토리 생성
mkdir -p "$TARGET/agents"
mkdir -p "$TARGET/commands"

# 에이전트 파일 설치
cp "$SCRIPT_DIR/boss_daramg.md"    "$TARGET/agents/boss_daramg.md"
cp "$SCRIPT_DIR/explore_daramg.md" "$TARGET/agents/explore_daramg.md"
cp "$SCRIPT_DIR/work_daramg.md"    "$TARGET/agents/work_daramg.md"
cp "$SCRIPT_DIR/review_daramg.md"  "$TARGET/agents/review_daramg.md"

# /ramg 커맨드 설치
cp "$SCRIPT_DIR/commands/ramg.md" "$TARGET/commands/ramg.md"

echo ""
echo "✅ 설치 완료!"
echo ""
echo "📁 설치된 항목:"
echo "  $TARGET/agents/boss_daramg.md"
echo "  $TARGET/agents/explore_daramg.md"
echo "  $TARGET/agents/work_daramg.md"
echo "  $TARGET/agents/review_daramg.md"
echo "  $TARGET/commands/ramg.md"
echo ""
echo "💬 사용법:"
echo "  /ramg 새 기능 추가해줘   → 사장 다람쥐에게 지시"
