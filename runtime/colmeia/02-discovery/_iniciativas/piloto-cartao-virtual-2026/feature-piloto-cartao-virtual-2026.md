---
favo: 02-discovery
iniciativa: piloto-cartao-virtual-2026
feature_id: FEAT-CV-ONBOARD-01
validacao_real: confirmada
status: aprovada-gate-03-scale
dry_run: true
---

# Feature — Onboarding enxuto cartão virtual

> **[DRY-RUN]**

## Outcome

KR1 — ativação 30d: 18% → 24% (seg. jovens prof.)

## Hipóteses validadas (SVM)

- H1 Strong — fluxo biometria enxuto
- H2 Iterate — checklist 1ª compra

## Histórias por valor + segmento

### Valor: Concluir emissão sem abandono (jovens_prof)

- **US-01:** Como correntista 25–35, quero ver progresso na biometria para saber que deu certo.
  - CA: indicador de etapa; mensagem de erro acionável; ≤4 etapas totais
- **US-02:** Como usuário Android, quero retry de selfie sem reiniciar o fluxo.
  - CA: retry na mesma sessão; não perder dados já informados

### Valor: Primeira compra rápida (jovens_prof)

- **US-03:** Como emissor novo, quero um checklist de onde usar o virtual logo após emissão.
  - CA: ≥3 opções de uso (e-commerce, wallet, contactless); deep link para wallet

## Fora de escopo

- Mudança de limite de crédito
- H3 prova social (SVM Weak)

## Validação real (Gate 03)

Confirmada em EXP-01 — 6/8 clientes reais completaram emissão [DRY-RUN].
