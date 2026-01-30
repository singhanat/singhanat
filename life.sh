#!/usr/bin/env bash
set -euo pipefail

# life.sh — a tiny CLI profile
# Usage:
#   ./life.sh
#   ./life.sh now
#   ./life.sh stack
#   ./life.sh contact

cmd="${1:-help}"

header() { printf "\n%s\n" "$1"; printf "%s\n" "----------------------------------------"; }

case "$cmd" in
  ""|help|-h|--help)
    cat <<'EOF'
life.sh — CLI profile

Commands:
  now       what I'm doing lately
  build     what I build
  teach     what I teach
  art       engineering-for-art
  stack     tools & stack
  contact   how to reach me
  all       print everything

Examples:
  ./life.sh all
  ./life.sh now
EOF
    ;;

  now)
    header "NOW"
    cat <<'EOF'
- Building data systems & metadata workflows
- Designing hands-on labs for real-world learning
- Exploring engineering-for-art projects
EOF
    ;;

  build)
    header "BUILD"
    cat <<'EOF'
- Data pipelines, ETL/ELT, orchestration
- Metadata, lineage, quality, governance patterns
- Small tools that reduce friction for teams
EOF
    ;;

  teach)
    header "TEACH"
    cat <<'EOF'
- Data Engineering essentials (Python/SQL)
- DataOps practices: reliability, automation, observability
EOF
    ;;

  art)
    header "ENGINEERING-FOR-ART"
    cat <<'EOF'
- Systems as experience
- Data as material
- Interfaces that make people reflect
EOF
    ;;

  stack)
    header "STACK"
    cat <<'EOF'
Python • SQL • Docker • k8s • Airflow
PostgreSQL • MSSQL • OpenMetadata • Laravel
EOF
    ;;

  contact)
    header "CONTACT"
    cat <<'EOF'
GitHub: https://github.com/singhanat
Twitter: https://twitter.com//osot 
EOF
    ;;

  all)
    "$0" now
    "$0" build
    "$0" teach
    "$0" art
    "$0" stack
    "$0" contact
    ;;

  *)
    echo "[ERROR] Unknown command: $cmd" >&2
    echo "Run: ./life.sh --help" >&2
    exit 2
    ;;
esac
