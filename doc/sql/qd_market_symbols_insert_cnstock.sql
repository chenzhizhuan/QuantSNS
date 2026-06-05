BEGIN;

INSERT INTO public.qd_market_symbols (market, symbol, name, exchange, currency, is_active, is_hot, sort_order)
VALUES
('CNStock', '002975', '博杰股份', 'SZSE', 'CNY', 1, 0, 0),
('CNStock', '002920', '德赛西威', 'SZSE', 'CNY', 1, 0, 0)
ON CONFLICT (market, symbol)
DO UPDATE SET
    name = EXCLUDED.name,
    exchange = EXCLUDED.exchange,
    currency = EXCLUDED.currency,
    is_active = EXCLUDED.is_active,
    is_hot = EXCLUDED.is_hot,
    sort_order = EXCLUDED.sort_order;


BEGIN;

INSERT INTO public.qd_market_symbols (market, symbol, name, exchange, currency, is_active, is_hot, sort_order)
VALUES
('CNStock', '600183', '生益科技', 'SSE', 'CNY', 1, 0, 0),
('CNStock', '002415', '海康威视', 'SZSE', 'CNY', 1, 0, 0),
('CNStock', '688188', '柏楚电子', 'SSE', 'CNY', 1, 0, 0),
('CNStock', '002558', '巨人网络', 'SZSE', 'CNY', 1, 0, 0)
ON CONFLICT (market, symbol)
DO UPDATE SET
    name = EXCLUDED.name,
    exchange = EXCLUDED.exchange,
    currency = EXCLUDED.currency,
    is_active = EXCLUDED.is_active,
    is_hot = EXCLUDED.is_hot,
    sort_order = EXCLUDED.sort_order;

COMMIT;
