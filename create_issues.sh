#!/usr/bin/env bash

REPO="Kofi-Astro/decentralized-comm-client"
TOKEN="$GITHUB_TOKEN"
API="https://api.github.com"

declare -a tasks=(
"Day 01 — Repo Setup||Initialize repo, add scaffolding files"
"Day 02 — ChatList UI (static)||Implement static ChatList screen"
"Day 03 — ChatRoom UI||Implement static ChatRoom screen"
"Day 04 — Onboarding UI||Implement identity generation screen"
"Day 05 — Local Storage||Add Hive/Drift message model"
"Day 06 — Riverpod Setup||Add providers and architecture"
"Day 07 — Tests + CI||Add test baseline + GH actions"
"Day 08 — Backend Scaffold||Create FastAPI backend + /health"
"Day 09 — WebSocket Relay||Implement WS broadcast"
"Day 10 — Flutter ↔ WebSocket||Connect Flutter to backend WS"
"Day 11 — Message Receipts||Add delivered/read states"
"Day 12 — Dockerize Backend||Add Dockerfile + compose"
"Day 13 — Logging + Metrics||Add logs and /metrics endpoint"
"Day 14 — Env & Security||Add .env support and secure configs"
"Day 15 — Keypair Generation||Generate X25519 keypair"
"Day 16 — Encrypt Messages||AES-GCM / ChaCha20 prototype"
"Day 17 — Key Exchange||DH session key flow"
"Day 18 — Offline Queue||Store unsent messages"
"Day 19 — Group Chat||Add simple group room flow"
"Day 20 — Backend CI||Add backend GH actions"
"Day 21 — Cloud Deploy||Deploy backend to Render/Fly"
"Day 22 — TLS / Proxy||Enable wss://"
"Day 23 — Monitoring||Add Prometheus + Grafana"
"Day 24 — Kubernetes||Run backend in Minikube"
"Day 25 — GitOps||Automated deploy pipeline"
"Day 26 — Admin Panel||Simple metrics dashboard"
"Day 27 — Performance||Optimize Flutter renders"
"Day 28 — Reliability||Reconnects, NAT, long messages"
"Day 29 — Release v0.1||Tag + notes + APK"
"Day 30 — Retrospect||Write lessons-learned blog"
)

for item in "${tasks[@]}"; do
  title="${item%%||*}"
  body="${item##*||}"

  curl -s -X POST \
    -H "Authorization: token $TOKEN" \
    -H "Accept: application/vnd.github+json" \
    "https://api.github.com/repos/$REPO/issues" \
    -d "{\"title\":\"$title\", \"body\":\"$body\"}"

  sleep 0.3
done

echo "Done creating issues!"
