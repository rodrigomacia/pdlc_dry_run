---
favo: 02-discovery
iniciativa: consignado-jovem-alta-renda-2026
ciclo: 2
feature_id: FEAT-CONSIG-COMP-02
validacao_real: confirmada
status: aprovada-gate-03-scale
experimentos_ref: [EXP-C02-01, EXP-C02-02]
dry_run: true
---

# Feature — Comparador regulatório in-app (ciclo 02)

> **[DRY-RUN]**

## Outcome

KR1 — 11,2% → 14% · reduzir saída Safari e fechar no app

## Histórias

- **US-04:** Ver minha CET vs faixa de mercado (BCB/regulatório) na tela de oferta.
  - CA: fonte citada; atualização diária; linguagem simples
- **US-05:** Alerta se usuário sair do app durante simulação (deep link retorno).
  - CA: push/in-app ao retorno; preservar simulação
- **US-06 (iOS):** Comparador sticky no scroll da oferta.
  - CA: sempre visível CET vs média; A11y

## Depende de

Ciclo 01 (FEAT-CONSIG-SIM-01) em produção.

## Validação real (Gate 03 ciclo 02)

EXP-C02-01: 7/10 contrataram · Safari 13% · EXP-C02-02: gap iOS/Android 0,3 pp [DRY-RUN]
