---
experimento: EXP-C02-01
iniciativa: consignado-jovem-alta-renda-2026
ciclo: 2
hipotese_ref: H4
historia_ids: [US-04, US-05]
kr_ref: KR1
tipo: prototipo
dry_run: true
---

# Experimento EXP-C02-01 — comparador CET in-app

> **[DRY-RUN]**

## Hipótese

Comparador CET in-app (vs média mercado regulatória) reduz saída Safari em ≥8 pp e aumenta conversão ≥2 pp.

## Critérios (ANTES da execução)

| Sinal | Sucesso | Falha |
|-------|---------|-------|
| Saída Safari pós-simulação | ≤14% (vs 22% baseline) | >18% |
| Conversão simulação→contrato | ≥6/10 participantes | ≤4/10 |
| Compreensão CET (pergunta pós-teste) | ≥8/10 "entendi" | <6/10 |

## Execução

- n=10 jovens AR · moderado remoto · protótipo Figma+InVision
- **Evidência cliente real** — não SVM

## Resultado

| Sinal | Resultado |
|-------|-----------|
| Saída Safari | **13%** ✓ |
| Contratação | **7/10** ✓ |
| Compreensão | **9/10** ✓ |

## Decisão

**scale** → favo 04 (com EXP-C02-02)
