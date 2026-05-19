# PDLC Dry Run

Repositório de **simulações do Ciclo de Produção Digital** (Cursor / agentes).  
**Repositório:** [github.com/rodrigomacia/pdlc_dry_run](https://github.com/rodrigomacia/pdlc_dry_run)  
Framework oficial: [github.com/rodrigomacia/pdlc_devin_cli](https://github.com/rodrigomacia/pdlc_devin_cli)

Execução em pasta isolada — não altera o runtime `colmeia/` do framework.

| Campo | Valor |
|-------|--------|
| **Iniciativas** | `piloto-cartao-virtual-2026` · `consignado-jovem-alta-renda-2026` |
| **Executor** | Cursor Agent (dry run) |
| **Data** | 2026-05-18 |
| **Runtime** | `dry-run-cursor/runtime/colmeia/` (espelha `colmeia/*/_iniciativas/`) |

## Como ler

1. **[REGISTRO-EXECUCAO.md](./REGISTRO-EXECUCAO.md)** — linha do tempo e vereditos de gates
2. **[orquestracao/](./orquestracao/)** — saídas de `/orquestrar-producao` em cada marco
3. **`runtime/colmeia/`** — artefatos por favo (todos com banner `[DRY-RUN]`)

## Regras deste teste

- Dados de negócio são **fictícios e rotulados** — não são recomendação de produto
- MCP/OKR/CI/CD **simulados** em logs (`OKR-SYNC-01`, `commit_hash` fake)
- Grill-me registrado com veredito **APROVAR** após respostas simuladas do Head
- O runtime oficial em `colmeia/` **não foi alterado**

## Repetir verificação

```bash
./dry-run-cursor/verificar-orquestracao.sh piloto-cartao-virtual-2026
./dry-run-cursor/verificar-orquestracao.sh consignado-jovem-alta-renda-2026
```

| Iniciativa | Registro |
|------------|----------|
| Cartão virtual | [REGISTRO-EXECUCAO.md](./REGISTRO-EXECUCAO.md) |
| Consignado jovem AR | [REGISTRO-consignado-jovem-alta-renda-2026.md](./REGISTRO-consignado-jovem-alta-renda-2026.md) |
| Consignado **ciclo 02** | [ciclo02 início](./orquestracao/consignado-ciclo02-inicio.md) → [favo 03](./orquestracao/consignado-ciclo02-favo03.md) Gate 03 ✓ → **favo 04** |

## Publicar

Ver [PUBLICAR.md](./PUBLICAR.md) — remoto sugerido: `rodrigomacia/pdlc_dry_run`
