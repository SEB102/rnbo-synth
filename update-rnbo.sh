#!/bin/bash
# ─── Republier après modification du patch RNBO dans Max ──────────────────────
# 1. Dans Max : ouvrez synth.maxpat
# 2. Modifiez le sous-patch rnbo~
# 3. File → Export to Code → Web Export → choisissez CE dossier, nommez "patch.export"
# 4. Lancez ce script : ./update-rnbo.sh

set -e
cd "$(dirname "$0")"

if [ ! -f "patch.export.json" ]; then
  echo "ERREUR : patch.export.json introuvable. Exportez d'abord depuis Max."
  exit 1
fi

echo "→ Commit et push du nouveau patch RNBO…"
git add patch.export.json
git commit -m "rnbo: update patch $(date '+%Y-%m-%d %H:%M')"
git push origin main

LOGIN=$(gh api user --jq .login)
REPO=$(basename "$(git remote get-url origin)" .git)
echo ""
echo "✓ Mis à jour : https://$LOGIN.github.io/$REPO"
echo "  (rechargez la page dans ~1 min)"
