## Orquestração — consignado-jovem-alta-renda-2026 · ciclo 02 · favo 03

**Status:** Gate 03 **APROVADO** · decisão **scale** · **[DRY-RUN]**

### Experimentos

| ID | Resultado | Decisão |
|----|-----------|---------|
| EXP-C02-01 (H4 comparador) | Safari 13%, 7/10 contratos | scale |
| EXP-C02-02 (H5 iOS sticky) | gap 0,3 pp | scale |

### Favo atual

**04 — Construção** (próximo)

### Próximas skills

1. `/spec-funcional consignado-jovem-alta-renda-2026` (ciclo 2 / FEAT-CONSIG-COMP-02)
2. `/spec-nao-funcional` · `/spec-tecnica` · `/decompor-tarefas`
3. `/implementar-tarefa` → **`/review-pr`** → `/ci-validar` → CD → canário
4. `/validar-rollout-head`

### Lacunas [FORNECER] produção

- API dados CET média mercado (BCB/regulatório)
- Feature flag comparador + cohort jovem AR
