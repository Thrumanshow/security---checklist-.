#!/bin/bash
# Reemplaza estos valores por los tuyos antes de ejecutar
GITHUB_TOKEN="TU_GITHUB_TOKEN"
OWNER="Thrumanshow"
REPO="security-checklist"
BRANCH="main"

curl -X PUT \
  -H "Authorization: Bearer $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github+json" \
  https://api.github.com/repos/$OWNER/$REPO/branches/$BRANCH/protection \
  -d @branch_protection_rules.json
