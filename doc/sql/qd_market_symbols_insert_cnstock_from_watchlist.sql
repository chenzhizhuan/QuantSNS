BEGIN;

INSERT INTO public.qd_market_symbols (market, symbol, name, is_active, is_hot, sort_order)
SELECT
    market,
    symbol,
    MAX(name) AS name,
    1 AS is_active,
    0 AS is_hot,
    0 AS sort_order
FROM public.qd_watchlist
WHERE market = 'CNStock'
  AND name IS NOT NULL
  AND btrim(name) <> ''
GROUP BY market, symbol
ON CONFLICT (market, symbol)
DO UPDATE SET
    name = EXCLUDED.name,
    is_active = 1;

COMMIT;
