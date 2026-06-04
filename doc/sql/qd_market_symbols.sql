--
-- PostgreSQL database dump
--

-- Dumped from database version 16.14
-- Dumped by pg_dump version 16.4

-- Started on 2026-06-05 01:14:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 271 (class 1259 OID 17081)
-- Name: qd_market_symbols; Type: TABLE; Schema: public; Owner: quantdinger
--

CREATE TABLE public.qd_market_symbols (
    id integer NOT NULL,
    market character varying(50) NOT NULL,
    symbol character varying(50) NOT NULL,
    name character varying(255) DEFAULT ''::character varying,
    exchange character varying(50) DEFAULT ''::character varying,
    currency character varying(10) DEFAULT ''::character varying,
    is_active integer DEFAULT 1,
    is_hot integer DEFAULT 0,
    sort_order integer DEFAULT 0,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.qd_market_symbols OWNER TO quantdinger;

--
-- TOC entry 270 (class 1259 OID 17080)
-- Name: qd_market_symbols_id_seq; Type: SEQUENCE; Schema: public; Owner: quantdinger
--

CREATE SEQUENCE public.qd_market_symbols_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.qd_market_symbols_id_seq OWNER TO quantdinger;

--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 270
-- Name: qd_market_symbols_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quantdinger
--

ALTER SEQUENCE public.qd_market_symbols_id_seq OWNED BY public.qd_market_symbols.id;


--
-- TOC entry 3410 (class 2604 OID 17084)
-- Name: qd_market_symbols id; Type: DEFAULT; Schema: public; Owner: quantdinger
--

ALTER TABLE ONLY public.qd_market_symbols ALTER COLUMN id SET DEFAULT nextval('public.qd_market_symbols_id_seq'::regclass);


--
-- TOC entry 3568 (class 0 OID 17081)
-- Dependencies: 271
-- Data for Name: qd_market_symbols; Type: TABLE DATA; Schema: public; Owner: quantdinger
--

COPY public.qd_market_symbols (id, market, symbol, name, exchange, currency, is_active, is_hot, sort_order, created_at) FROM stdin;
1	USStock	AAPL	Apple Inc.	NASDAQ	USD	1	1	100	2026-06-03 09:54:45.166165
2	USStock	MSFT	Microsoft Corporation	NASDAQ	USD	1	1	99	2026-06-03 09:54:45.166165
3	USStock	GOOGL	Alphabet Inc.	NASDAQ	USD	1	1	98	2026-06-03 09:54:45.166165
4	USStock	AMZN	Amazon.com Inc.	NASDAQ	USD	1	1	97	2026-06-03 09:54:45.166165
5	USStock	TSLA	Tesla, Inc.	NASDAQ	USD	1	1	96	2026-06-03 09:54:45.166165
6	USStock	META	Meta Platforms Inc.	NASDAQ	USD	1	1	95	2026-06-03 09:54:45.166165
7	USStock	NVDA	NVIDIA Corporation	NASDAQ	USD	1	1	94	2026-06-03 09:54:45.166165
8	USStock	JPM	JPMorgan Chase & Co.	NYSE	USD	1	1	93	2026-06-03 09:54:45.166165
9	USStock	V	Visa Inc.	NYSE	USD	1	1	92	2026-06-03 09:54:45.166165
10	USStock	JNJ	Johnson & Johnson	NYSE	USD	1	1	91	2026-06-03 09:54:45.166165
11	Crypto	BTC/USDT	Bitcoin	Binance	USDT	1	1	100	2026-06-03 09:54:45.166165
12	Crypto	ETH/USDT	Ethereum	Binance	USDT	1	1	99	2026-06-03 09:54:45.166165
13	Crypto	BNB/USDT	BNB	Binance	USDT	1	1	98	2026-06-03 09:54:45.166165
14	Crypto	SOL/USDT	Solana	Binance	USDT	1	1	97	2026-06-03 09:54:45.166165
15	Crypto	XRP/USDT	Ripple	Binance	USDT	1	1	96	2026-06-03 09:54:45.166165
16	Crypto	ADA/USDT	Cardano	Binance	USDT	1	1	95	2026-06-03 09:54:45.166165
17	Crypto	DOGE/USDT	Dogecoin	Binance	USDT	1	1	94	2026-06-03 09:54:45.166165
18	Crypto	DOT/USDT	Polkadot	Binance	USDT	1	1	93	2026-06-03 09:54:45.166165
19	Crypto	POL/USDT	Polygon	Binance	USDT	1	1	92	2026-06-03 09:54:45.166165
20	Crypto	AVAX/USDT	Avalanche	Binance	USDT	1	1	91	2026-06-03 09:54:45.166165
21	Crypto	LINK/USDT	Chainlink	Binance	USDT	1	1	90	2026-06-03 09:54:45.166165
22	Crypto	UNI/USDT	Uniswap	Binance	USDT	1	1	89	2026-06-03 09:54:45.166165
23	Crypto	ATOM/USDT	Cosmos	Binance	USDT	1	1	88	2026-06-03 09:54:45.166165
24	Crypto	LTC/USDT	Litecoin	Binance	USDT	1	1	87	2026-06-03 09:54:45.166165
25	Crypto	FIL/USDT	Filecoin	Binance	USDT	1	1	86	2026-06-03 09:54:45.166165
26	Crypto	NEAR/USDT	NEAR Protocol	Binance	USDT	1	1	85	2026-06-03 09:54:45.166165
27	Crypto	APT/USDT	Aptos	Binance	USDT	1	1	84	2026-06-03 09:54:45.166165
28	Crypto	SUI/USDT	Sui	Binance	USDT	1	1	83	2026-06-03 09:54:45.166165
29	Crypto	ARB/USDT	Arbitrum	Binance	USDT	1	1	82	2026-06-03 09:54:45.166165
30	Crypto	OP/USDT	Optimism	Binance	USDT	1	1	81	2026-06-03 09:54:45.166165
31	Crypto	SEI/USDT	Sei	Binance	USDT	1	1	80	2026-06-03 09:54:45.166165
32	Crypto	TIA/USDT	Celestia	Binance	USDT	1	1	79	2026-06-03 09:54:45.166165
33	Crypto	INJ/USDT	Injective	Binance	USDT	1	1	78	2026-06-03 09:54:45.166165
34	Crypto	FTM/USDT	Fantom	Binance	USDT	1	1	77	2026-06-03 09:54:45.166165
35	Crypto	ALGO/USDT	Algorand	Binance	USDT	1	1	76	2026-06-03 09:54:45.166165
36	Crypto	HBAR/USDT	Hedera	Binance	USDT	1	1	75	2026-06-03 09:54:45.166165
37	Crypto	ICP/USDT	Internet Computer	Binance	USDT	1	1	74	2026-06-03 09:54:45.166165
38	Crypto	VET/USDT	VeChain	Binance	USDT	1	1	73	2026-06-03 09:54:45.166165
39	Crypto	SAND/USDT	The Sandbox	Binance	USDT	1	1	72	2026-06-03 09:54:45.166165
40	Crypto	MANA/USDT	Decentraland	Binance	USDT	1	1	71	2026-06-03 09:54:45.166165
41	Crypto	AAVE/USDT	Aave	Binance	USDT	1	1	70	2026-06-03 09:54:45.166165
42	Crypto	MKR/USDT	Maker	Binance	USDT	1	1	69	2026-06-03 09:54:45.166165
43	Crypto	CRV/USDT	Curve DAO	Binance	USDT	1	1	68	2026-06-03 09:54:45.166165
44	Crypto	COMP/USDT	Compound	Binance	USDT	1	1	67	2026-06-03 09:54:45.166165
45	Crypto	SNX/USDT	Synthetix	Binance	USDT	1	1	66	2026-06-03 09:54:45.166165
46	Crypto	SUSHI/USDT	SushiSwap	Binance	USDT	1	1	65	2026-06-03 09:54:45.166165
47	Crypto	DYDX/USDT	dYdX	Binance	USDT	1	1	64	2026-06-03 09:54:45.166165
48	Crypto	LDO/USDT	Lido DAO	Binance	USDT	1	1	63	2026-06-03 09:54:45.166165
49	Crypto	PENDLE/USDT	Pendle	Binance	USDT	1	1	62	2026-06-03 09:54:45.166165
50	Crypto	JUP/USDT	Jupiter	Binance	USDT	1	1	61	2026-06-03 09:54:45.166165
51	Crypto	SHIB/USDT	Shiba Inu	Binance	USDT	1	1	60	2026-06-03 09:54:45.166165
52	Crypto	PEPE/USDT	Pepe	Binance	USDT	1	1	59	2026-06-03 09:54:45.166165
53	Crypto	WIF/USDT	dogwifhat	Binance	USDT	1	1	58	2026-06-03 09:54:45.166165
54	Crypto	FLOKI/USDT	Floki	Binance	USDT	1	1	57	2026-06-03 09:54:45.166165
55	Crypto	BONK/USDT	Bonk	Binance	USDT	1	1	56	2026-06-03 09:54:45.166165
56	Crypto	MEME/USDT	Memecoin	Binance	USDT	1	1	55	2026-06-03 09:54:45.166165
57	Crypto	TURBO/USDT	Turbo	Binance	USDT	1	1	54	2026-06-03 09:54:45.166165
58	Crypto	NEIRO/USDT	Neiro	Binance	USDT	1	1	53	2026-06-03 09:54:45.166165
59	Crypto	RENDER/USDT	Render	Binance	USDT	1	1	52	2026-06-03 09:54:45.166165
60	Crypto	FET/USDT	Fetch.ai	Binance	USDT	1	1	51	2026-06-03 09:54:45.166165
61	Crypto	RNDR/USDT	Render Network	Binance	USDT	1	1	50	2026-06-03 09:54:45.166165
62	Crypto	TAO/USDT	Bittensor	Binance	USDT	1	1	49	2026-06-03 09:54:45.166165
63	Crypto	WLD/USDT	Worldcoin	Binance	USDT	1	1	48	2026-06-03 09:54:45.166165
64	Crypto	AR/USDT	Arweave	Binance	USDT	1	1	47	2026-06-03 09:54:45.166165
65	Crypto	STX/USDT	Stacks	Binance	USDT	1	1	46	2026-06-03 09:54:45.166165
66	Crypto	ORDI/USDT	ORDI	Binance	USDT	1	1	45	2026-06-03 09:54:45.166165
67	Crypto	TRX/USDT	Tron	Binance	USDT	1	1	44	2026-06-03 09:54:45.166165
68	Crypto	ETC/USDT	Ethereum Classic	Binance	USDT	1	1	43	2026-06-03 09:54:45.166165
69	Crypto	THETA/USDT	Theta Network	Binance	USDT	1	1	42	2026-06-03 09:54:45.166165
70	Crypto	EOS/USDT	EOS	Binance	USDT	1	1	41	2026-06-03 09:54:45.166165
71	Crypto	XLM/USDT	Stellar	Binance	USDT	1	1	40	2026-06-03 09:54:45.166165
72	Crypto	GALA/USDT	Gala	Binance	USDT	1	1	39	2026-06-03 09:54:45.166165
73	Crypto	IMX/USDT	Immutable X	Binance	USDT	1	1	38	2026-06-03 09:54:45.166165
74	Crypto	CFX/USDT	Conflux	Binance	USDT	1	1	37	2026-06-03 09:54:45.166165
75	Crypto	JASMY/USDT	JasmyCoin	Binance	USDT	1	1	36	2026-06-03 09:54:45.166165
76	Crypto	CHZ/USDT	Chiliz	Binance	USDT	1	1	35	2026-06-03 09:54:45.166165
77	Crypto	GMT/USDT	STEPN	Binance	USDT	1	1	34	2026-06-03 09:54:45.166165
78	Crypto	CAKE/USDT	PancakeSwap	Binance	USDT	1	1	33	2026-06-03 09:54:45.166165
79	Crypto	1INCH/USDT	1inch	Binance	USDT	1	1	32	2026-06-03 09:54:45.166165
80	Crypto	ENS/USDT	Ethereum Name Service	Binance	USDT	1	1	31	2026-06-03 09:54:45.166165
81	Crypto	BLUR/USDT	Blur	Binance	USDT	1	1	30	2026-06-03 09:54:45.166165
82	Forex	XAUUSD	Gold/USD	Forex	USD	1	1	100	2026-06-03 09:54:45.166165
83	Forex	XAGUSD	Silver/USD	Forex	USD	1	1	99	2026-06-03 09:54:45.166165
84	Forex	EURUSD	Euro/US Dollar	Forex	USD	1	1	98	2026-06-03 09:54:45.166165
85	Forex	GBPUSD	British Pound/US Dollar	Forex	USD	1	1	97	2026-06-03 09:54:45.166165
86	Forex	USDJPY	US Dollar/Japanese Yen	Forex	USD	1	1	96	2026-06-03 09:54:45.166165
87	Forex	AUDUSD	Australian Dollar/US Dollar	Forex	USD	1	1	95	2026-06-03 09:54:45.166165
88	Forex	USDCAD	US Dollar/Canadian Dollar	Forex	USD	1	1	94	2026-06-03 09:54:45.166165
89	Forex	NZDUSD	New Zealand Dollar/US Dollar	Forex	USD	1	1	93	2026-06-03 09:54:45.166165
90	Forex	USDCHF	US Dollar/Swiss Franc	Forex	EUR	1	1	92	2026-06-03 09:54:45.166165
91	Forex	EURJPY	Euro/Japanese Yen	Forex	EUR	1	1	91	2026-06-03 09:54:45.166165
92	Futures	CL	WTI Crude Oil	NYMEX	USD	1	1	100	2026-06-03 09:54:45.166165
93	Futures	GC	Gold	COMEX	USD	1	1	99	2026-06-03 09:54:45.166165
94	Futures	SI	Silver	COMEX	USD	1	1	98	2026-06-03 09:54:45.166165
95	Futures	NG	Natural Gas	NYMEX	USD	1	1	97	2026-06-03 09:54:45.166165
96	Futures	HG	Copper	COMEX	USD	1	1	96	2026-06-03 09:54:45.166165
97	Futures	ZC	Corn	CBOT	USD	1	1	95	2026-06-03 09:54:45.166165
98	Futures	ZS	Soybeans	CBOT	USD	1	1	94	2026-06-03 09:54:45.166165
99	Futures	ZW	Wheat	CBOT	USD	1	1	93	2026-06-03 09:54:45.166165
100	Futures	ES	S&P 500 E-mini	CME	USD	1	1	92	2026-06-03 09:54:45.166165
101	Futures	NQ	NASDAQ 100 E-mini	CME	USD	1	1	91	2026-06-03 09:54:45.166165
112	HKStock	00700	腾讯控股	HKEX	HKD	1	1	100	2026-06-03 09:54:45.166165
113	HKStock	09988	阿里巴巴-W	HKEX	HKD	1	1	99	2026-06-03 09:54:45.166165
114	HKStock	03690	美团-W	HKEX	HKD	1	1	98	2026-06-03 09:54:45.166165
115	HKStock	01810	小米集团-W	HKEX	HKD	1	1	97	2026-06-03 09:54:45.166165
116	HKStock	00939	建设银行	HKEX	HKD	1	1	96	2026-06-03 09:54:45.166165
117	HKStock	01299	友邦保险	HKEX	HKD	1	1	95	2026-06-03 09:54:45.166165
118	HKStock	02318	中国平安	HKEX	HKD	1	1	94	2026-06-03 09:54:45.166165
119	HKStock	00388	香港交易所	HKEX	HKD	1	1	93	2026-06-03 09:54:45.166165
120	HKStock	00883	中国海洋石油	HKEX	HKD	1	1	92	2026-06-03 09:54:45.166165
121	HKStock	01398	工商银行	HKEX	HKD	1	1	91	2026-06-03 09:54:45.166165
122	MOEX	SBER	Сбербанк	MOEX	RUB	1	1	100	2026-06-03 09:54:45.166165
123	MOEX	GAZP	Газпром	MOEX	RUB	1	1	99	2026-06-03 09:54:45.166165
124	MOEX	LKOH	Лукойл	MOEX	RUB	1	1	98	2026-06-03 09:54:45.166165
125	MOEX	ROSN	Роснефть	MOEX	RUB	1	1	97	2026-06-03 09:54:45.166165
126	MOEX	GMKN	Норильский Никель	MOEX	RUB	1	1	96	2026-06-03 09:54:45.166165
127	MOEX	NVTK	Новатэк	MOEX	RUB	1	1	95	2026-06-03 09:54:45.166165
128	MOEX	TATN	Татнефть	MOEX	RUB	1	1	94	2026-06-03 09:54:45.166165
129	MOEX	VTBR	ВТБ	MOEX	RUB	1	1	93	2026-06-03 09:54:45.166165
130	MOEX	MGNT	Магнит	MOEX	RUB	1	1	92	2026-06-03 09:54:45.166165
131	MOEX	YNDX	Яндекс	MOEX	RUB	1	1	91	2026-06-03 09:54:45.166165
132	MOEX	SBERP	Сбербанк-п	MOEX	RUB	1	1	90	2026-06-03 09:54:45.166165
133	MOEX	PLZL	Полюс	MOEX	RUB	1	1	89	2026-06-03 09:54:45.166165
134	MOEX	CHMF	Северсталь	MOEX	RUB	1	1	88	2026-06-03 09:54:45.166165
135	MOEX	ALRS	АЛРОСА	MOEX	RUB	1	1	87	2026-06-03 09:54:45.166165
136	MOEX	MOEX	Московская Биржа	MOEX	RUB	1	1	86	2026-06-03 09:54:45.166165
\.


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 270
-- Name: qd_market_symbols_id_seq; Type: SEQUENCE SET; Schema: public; Owner: quantdinger
--

SELECT pg_catalog.setval('public.qd_market_symbols_id_seq', 7970, true);


--
-- TOC entry 3421 (class 2606 OID 17095)
-- Name: qd_market_symbols qd_market_symbols_market_symbol_key; Type: CONSTRAINT; Schema: public; Owner: quantdinger
--

ALTER TABLE ONLY public.qd_market_symbols
    ADD CONSTRAINT qd_market_symbols_market_symbol_key UNIQUE (market, symbol);


--
-- TOC entry 3423 (class 2606 OID 17093)
-- Name: qd_market_symbols qd_market_symbols_pkey; Type: CONSTRAINT; Schema: public; Owner: quantdinger
--

ALTER TABLE ONLY public.qd_market_symbols
    ADD CONSTRAINT qd_market_symbols_pkey PRIMARY KEY (id);


--
-- TOC entry 3418 (class 1259 OID 17097)
-- Name: idx_market_symbols_is_hot; Type: INDEX; Schema: public; Owner: quantdinger
--

CREATE INDEX idx_market_symbols_is_hot ON public.qd_market_symbols USING btree (market, is_hot);


--
-- TOC entry 3419 (class 1259 OID 17096)
-- Name: idx_market_symbols_market; Type: INDEX; Schema: public; Owner: quantdinger
--

CREATE INDEX idx_market_symbols_market ON public.qd_market_symbols USING btree (market);


-- Completed on 2026-06-05 01:14:18

--
-- PostgreSQL database dump complete
--

