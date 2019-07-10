#!/usr/bin/env bash
set -euo pipefail

exec ttyd --port 8080 -R nyancat -n
