#!/bin/bash
# ─── Deploy RNBO Synth → GitHub Pages ─────────────────────────────────────────
# Usage : ./deploy.sh
# Prérequis : gh CLI installé et authentifié (gh auth login)

set -e
cd "$(dirname "$0")"

REPO="rnbo-synth"
REMOTE=$(git remote get-url origin 2>/dev/null || echo "")

if [ -z "$REMOTE" ]; then
  echo "→ Création du repo GitHub '$REPO'…"
  gh repo create "$REPO" --public --source=. --remote=origin --push
  echo "→ Activation de GitHub Pages (branche main)…"
  gh api -X PUT "repos/$(gh api user --jq .login)/$REPO/pages" \
    -f source='{"branch":"main","path":"/"}' 2>/dev/null || true
else
  echo "→ Push vers GitHub…"
  git add -A
  git commit -m "deploy: $(date '+%Y-%m-%d %H:%M')" || echo "(rien à committer)"
  git push origin main
fi

# Affiche l'URL
LOGIN=$(gh api user --jq .login)
echo ""
echo "✓ Site disponible sur : https://$LOGIN.github.io/$REPO"
echo "  (peut prendre 1-2 min pour la 1ère publication)"
