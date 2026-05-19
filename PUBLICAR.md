# Publicar no GitHub

Repositório local já inicializado. Para criar o remoto:

```bash
cd dry-run-cursor   # ou clone após criar no GitHub
gh auth login
gh repo create pdlc_dry_run --public --source=. --remote=origin --push
```

URL esperada: `https://github.com/rodrigomacia/pdlc_dry_run`

Sem `gh`: crie o repositório vazio no GitHub e rode:

```bash
git remote add origin https://github.com/rodrigomacia/pdlc_dry_run.git
git push -u origin main
```
