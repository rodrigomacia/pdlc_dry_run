# Spec técnica — comparador ciclo 2 [DRY-RUN]

- Serviço `cet-market-benchmark` (cache Redis 24h)
- Feature flags: `consignado_comparador_v1`, `consignado_comparador_ios_sticky`
- AppState listener + deep link `app://consignado/retomar-simulacao`
- iOS: `StickyComparadorView` no fluxo oferta existente
