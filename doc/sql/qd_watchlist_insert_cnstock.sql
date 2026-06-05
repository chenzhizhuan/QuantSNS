BEGIN;

WITH cnstock_symbols AS (
    SELECT DISTINCT ON (market, symbol)
        market,
        symbol,
        name
    FROM public.qd_market_symbols
    WHERE market = 'CNStock'
    ORDER BY market, symbol, (NULLIF(name, '') IS NOT NULL) DESC, id DESC
)
INSERT INTO public.qd_watchlist (user_id, market, symbol, name)
SELECT
    1 AS user_id,
    market,
    symbol,
    name
FROM cnstock_symbols
ON CONFLICT (user_id, market, symbol)
DO UPDATE SET name = EXCLUDED.name, updated_at = now();

COMMIT;

