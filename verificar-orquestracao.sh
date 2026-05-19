#!/usr/bin/env bash
# Verifica artefatos do dry-run (espelha lógica de /orquestrar-producao)
set -euo pipefail

ID="${1:-piloto-cartao-virtual-2026}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE="$ROOT/runtime/colmeia"

echo "═══════════════════════════════════════════════════════════"
echo "  Orquestração (dry-run) — $ID"
echo "═══════════════════════════════════════════════════════════"
echo ""

check() {
  if [[ -f "$1" ]]; then
    echo "  ✓ $(basename "$1")"
    return 0
  else
    echo "  ✗ FALTA: $1"
    return 1
  fi
}

FAVOS=(
  "01-contexto-estrategico:okr-2026-q2.md:tese-produto.md:okr-cascata.yaml:gate-01-registro.md"
  "02-discovery:visao-mercado.md:visao-produto.md:visao-cliente.md:hipoteses.yaml:feature-${ID}.md:gate-02-registro.md"
  "03-experimentacao:experiments-backlog.md:decisao-experimentos.md:gate-03-registro.md"
  "04-construcao:spec-funcional-${ID}.md:review-pr-${ID}.md:ci-status-${ID}.md:gate-04-registro.md"
  "05-operacao:metricas-review-2026-05.md:insights-discovery.md"
)

MISSING=0
FAVO_ATUAL="01"

for entry in "${FAVOS[@]}"; do
  favo="${entry%%:*}"
  rest="${entry#*:}"
  dir="$BASE/$favo/_iniciativas/$ID"
  echo "── Favo ${favo:0:2} ($favo) ──"
  ok_count=0
  total=0
  IFS=':' read -ra files <<< "$rest"
  for f in "${files[@]}"; do
    f="${f//\{id\}/$ID}"
    total=$((total + 1))
    if check "$dir/$f"; then ok_count=$((ok_count + 1)); else MISSING=$((MISSING + 1)); fi
  done
  if [[ $ok_count -eq $total ]]; then
    FAVO_ATUAL="$favo"
  fi
  echo ""
done

echo "── Handoffs ──"
HANDOFF_DIR="$BASE/_handoffs"
if [[ -d "$HANDOFF_DIR" ]]; then
  found=0
  for h in "$HANDOFF_DIR"/handoff-*-"$ID".md; do
    if [[ -f "$h" ]]; then
      echo "  ✓ $(basename "$h")"
      found=$((found + 1))
    fi
  done
  [[ $found -eq 0 ]] && echo "  ✗ Nenhum handoff encontrado"
else
  echo "  ✗ Pasta ausente: $HANDOFF_DIR"
fi

echo ""
echo "Favo mais avançado com artefatos completos: ${FAVO_ATUAL:0:2}"
[[ $MISSING -eq 0 ]] && echo "Status: ciclo dry-run COMPLETO (01→05)" || echo "Status: $MISSING artefato(s) ausente(s)"
echo ""
