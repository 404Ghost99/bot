#!/bin/bash
cd /root/bot
DATE="$(date +"%Y-%m-%d_%H-%M")"
touch bot/${DATE}
COMMIT_DATE="$(date +"%d-%m-%Y ─ %R ─ %A")"
STATUS="$(git status)"
git add --all
git commit -m "${COMMIT_DATE}" -m "${STATUS}"
git push origin master

