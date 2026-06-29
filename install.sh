#!/bin/bash
# crypto-legal-skill — installer
# Copies the skill, commands, agents, and rules into ~/.claude/ for Claude Code.
# Informational developer tool — NOT legal advice.

set -euo pipefail

# Colors
GREEN='\033[0;32m'; YELLOW='\033[1;33m'; CYAN='\033[0;36m'; RED='\033[0;31m'; NC='\033[0m'

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="${CLAUDE_HOME:-$HOME/.claude}"
SKILL_DEST="$CLAUDE_DIR/skills/crypto-legal"

SKIP_CONFIRM=false
while [[ $# -gt 0 ]]; do
  case "$1" in
    -y|--yes) SKIP_CONFIRM=true; shift ;;
    -h|--help)
      echo "crypto-legal-skill installer"
      echo "Usage: ./install.sh [-y|--yes] [-h|--help]"
      echo "Installs into \$CLAUDE_HOME (default ~/.claude):"
      echo "  skills/crypto-legal/   commands/   agents/   rules/"
      exit 0 ;;
    *) echo "Unknown option: $1 (use --help)"; exit 1 ;;
  esac
done

echo -e "${CYAN}crypto-legal-skill${NC} → ${CLAUDE_DIR}"
echo -e "${YELLOW}Reminder: informational developer tool, NOT legal advice.${NC}"
if [ "$SKIP_CONFIRM" = false ]; then
  read -r -p "Install now? [y/N] " ans
  case "$ans" in [yY]|[yY][eE][sS]) ;; *) echo "Aborted."; exit 0 ;; esac
fi

mkdir -p "$SKILL_DEST" "$CLAUDE_DIR/commands" "$CLAUDE_DIR/agents" "$CLAUDE_DIR/rules"

# Skill files (entry point + topic files + templates)
cp -R "$SCRIPT_DIR/skill/." "$SKILL_DEST/"
echo -e "  ${GREEN}✓${NC} skill → $SKILL_DEST"

# Commands, agents, rules (namespaced filenames to avoid collisions)
for f in "$SCRIPT_DIR"/commands/*.md; do [ -e "$f" ] && cp "$f" "$CLAUDE_DIR/commands/"; done
echo -e "  ${GREEN}✓${NC} commands → $CLAUDE_DIR/commands (/legal-triage, /token-launch-review)"
for f in "$SCRIPT_DIR"/agents/*.md;   do [ -e "$f" ] && cp "$f" "$CLAUDE_DIR/agents/";   done
echo -e "  ${GREEN}✓${NC} agents → $CLAUDE_DIR/agents (crypto-counsel)"
cp "$SCRIPT_DIR/rules/legal-guardrails.md" "$CLAUDE_DIR/rules/legal-guardrails.md"
echo -e "  ${GREEN}✓${NC} rules → $CLAUDE_DIR/rules/legal-guardrails.md"

echo
echo -e "${GREEN}Installed.${NC} Try: ask a crypto-legal question, or run ${CYAN}/legal-triage${NC}."
echo -e "Entry point: $SKILL_DEST/SKILL.md"
