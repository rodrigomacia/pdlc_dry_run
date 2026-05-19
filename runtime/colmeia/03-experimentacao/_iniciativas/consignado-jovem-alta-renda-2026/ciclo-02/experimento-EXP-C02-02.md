---
experimento: EXP-C02-02
iniciativa: consignado-jovem-alta-renda-2026
ciclo: 2
hipotese_ref: H5
historia_ids: [US-06]
kr_ref: KR1
tipo: ab
dry_run: true
---

# Experimento EXP-C02-02 — comparador sticky iOS

> **[DRY-RUN]**

## Hipótese

Variante iOS com comparador sticky reduz gap iOS/Android em conversão em ≥1,5 pp.

## Critérios (ANTES da execução)

| Sinal | Sucesso | Falha |
|-------|---------|-------|
| Conversão iOS (piloto) | ≥12% | <10% |
| Gap vs Android no piloto | ≤0,5 pp | >1,5 pp |

## Execução

- n=10 · 5 iOS / 5 Android · mesmo protótipo + sticky só iOS

## Resultado

| Sinal | Resultado |
|-------|-----------|
| Conversão iOS | **12,4%** ✓ |
| Gap iOS/Android | **0,3 pp** ✓ |

## Decisão

**scale** — incluir US-06 no pacote de construção
