--
-- PostgreSQL database dump
--

-- Dumped from database version 16.14
-- Dumped by pg_dump version 16.4

-- Started on 2026-06-03 10:47:50

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
-- TOC entry 253 (class 1259 OID 16861)
-- Name: qd_watchlist; Type: TABLE; Schema: public; Owner: quantdinger
--

CREATE TABLE public.qd_watchlist (
    id integer NOT NULL,
    user_id integer DEFAULT 1,
    market character varying(50) NOT NULL,
    symbol character varying(50) NOT NULL,
    name character varying(100) DEFAULT ''::character varying,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.qd_watchlist OWNER TO quantdinger;

--
-- TOC entry 252 (class 1259 OID 16860)
-- Name: qd_watchlist_id_seq; Type: SEQUENCE; Schema: public; Owner: quantdinger
--

CREATE SEQUENCE public.qd_watchlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.qd_watchlist_id_seq OWNER TO quantdinger;

--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 252
-- Name: qd_watchlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quantdinger
--

ALTER SEQUENCE public.qd_watchlist_id_seq OWNED BY public.qd_watchlist.id;


--
-- TOC entry 3410 (class 2604 OID 16864)
-- Name: qd_watchlist id; Type: DEFAULT; Schema: public; Owner: quantdinger
--

ALTER TABLE ONLY public.qd_watchlist ALTER COLUMN id SET DEFAULT nextval('public.qd_watchlist_id_seq'::regclass);


--
-- TOC entry 3565 (class 0 OID 16861)
-- Dependencies: 253
-- Data for Name: qd_watchlist; Type: TABLE DATA; Schema: public; Owner: quantdinger
--

COPY public.qd_watchlist (id, user_id, market, symbol, name, created_at, updated_at) FROM stdin;
1	1	Crypto	BTC/USDT	Bitcoin	2026-06-03 01:54:55.802104	2026-06-03 01:54:55.802104
2	1	Crypto	ETH/USDT	Ethereum	2026-06-03 01:54:55.802104	2026-06-03 01:54:55.802104
3	1	Crypto	SOL/USDT	Solana	2026-06-03 01:54:55.802104	2026-06-03 01:54:55.802104
4	1	USStock	AAPL	Apple	2026-06-03 01:54:55.802104	2026-06-03 01:54:55.802104
5	1	USStock	NVDA	NVIDIA	2026-06-03 01:54:55.802104	2026-06-03 01:54:55.802104
6	1	USStock	TSLA	Tesla	2026-06-03 01:54:55.802104	2026-06-03 01:54:55.802104
7	1	USStock	MSFT	Microsoft	2026-06-03 01:54:55.802104	2026-06-03 01:54:55.802104
8	1	CNStock	600737	中粮糖业	2026-06-03 02:43:44.558703	2026-06-03 02:43:44.558703
\.


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 252
-- Name: qd_watchlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: quantdinger
--

SELECT pg_catalog.setval('public.qd_watchlist_id_seq', 8, true);


--
-- TOC entry 3417 (class 2606 OID 16870)
-- Name: qd_watchlist qd_watchlist_pkey; Type: CONSTRAINT; Schema: public; Owner: quantdinger
--

ALTER TABLE ONLY public.qd_watchlist
    ADD CONSTRAINT qd_watchlist_pkey PRIMARY KEY (id);


--
-- TOC entry 3419 (class 2606 OID 16872)
-- Name: qd_watchlist qd_watchlist_user_id_market_symbol_key; Type: CONSTRAINT; Schema: public; Owner: quantdinger
--

ALTER TABLE ONLY public.qd_watchlist
    ADD CONSTRAINT qd_watchlist_user_id_market_symbol_key UNIQUE (user_id, market, symbol);


--
-- TOC entry 3415 (class 1259 OID 16878)
-- Name: idx_watchlist_user_id; Type: INDEX; Schema: public; Owner: quantdinger
--

CREATE INDEX idx_watchlist_user_id ON public.qd_watchlist USING btree (user_id);


--
-- TOC entry 3420 (class 2606 OID 16873)
-- Name: qd_watchlist qd_watchlist_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: quantdinger
--

ALTER TABLE ONLY public.qd_watchlist
    ADD CONSTRAINT qd_watchlist_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.qd_users(id) ON DELETE CASCADE;


-- Completed on 2026-06-03 10:47:51

--
-- PostgreSQL database dump complete
--

