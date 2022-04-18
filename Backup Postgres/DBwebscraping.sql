--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

--
-- Name: webscraping_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.webscraping_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.webscraping_id_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: produtos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produtos (
    in_codigo integer DEFAULT nextval('public.webscraping_id_seq'::regclass) NOT NULL,
    st_name character varying(200) NOT NULL,
    st_sku character varying(20),
    st_department character varying(20) NOT NULL,
    st_category character varying(50) NOT NULL,
    st_url character varying(50),
    st_image character varying(200),
    in_price_to numeric NOT NULL,
    st_discount character varying(5),
    st_available character varying(1),
    in_stock_qty smallint DEFAULT 0,
    st_store character varying(50) NOT NULL,
    dt_created_at date NOT NULL,
    dh_hour time without time zone NOT NULL,
    CONSTRAINT produtos_in_price_to_check CHECK ((in_price_to > (0)::numeric))
);


ALTER TABLE public.produtos OWNER TO postgres;

--
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produtos (in_codigo, st_name, st_sku, st_department, st_category, st_url, st_image, in_price_to, st_discount, st_available, in_stock_qty, st_store, dt_created_at, dh_hour) FROM stdin;
7678	AÇÚCAR CRISTAL ORGÂNICO UNIÃO 1KG	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/57c9aec9-2709-4726-92a9-7a02da89c5db.jpg	7.09	\N	S	0	Shopper	2022-04-17	22:37:24
7679	AÇÚCAR DEMERARA NATURALE UNIÃO 1KG	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/4afa24c2-b9e4-4074-aeb0-e4643b35be8c.jpg	6.49	\N	S	0	Shopper	2022-04-17	22:37:24
7680	AÇÚCAR REFINADO GRANULADO EM CUBOS PREMIUM UNIÃO 250G	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/493cf70f-4e5f-47c1-a131-4704a140cf53.jpg	9.29	\N	S	0	Shopper	2022-04-17	22:37:25
7681	AÇÚCAR REFINADO GRANULADO PREMIUM UNIÃO 1KG	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/d445a555-bfc3-45e0-b5e4-b4acd0c4aba4.jpg	6.89	\N	S	0	Shopper	2022-04-17	22:37:25
7682	AÇÚCAR UNIÃO MASCAVO 1KG	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/285bae54-f611-4689-89e6-c642c05dc0f7.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:37:26
7683	AÇÚCAR REFINADO FIT UNIÃO 500G	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/7ca05ef6-23cf-409c-8128-5843a4398210.jpg	4.99	\N	S	0	Shopper	2022-04-17	22:37:26
7684	AÇÚCAR REFINADO UNIÃO 1KG	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/aafa7ccf-1929-48a1-810e-444e1a87faf9.jpg	4.99	\N	S	0	Shopper	2022-04-17	22:37:26
7685	AÇÚCAR CRISTAL UNIÃO 1KG	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/277d5e7e-8dd4-4ebf-ae7f-df1736c0ddec.jpg	5.39	\N	S	0	Shopper	2022-04-17	22:37:27
7686	AÇÚCAR DE CONFEITEIRO GLAÇÚCAR UNIÃO 500G	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/36e32f39-48ae-497c-829c-4618965c06cb.jpg	3.79	\N	S	0	Shopper	2022-04-17	22:37:27
7687	AÇÚCAR UNIÃO SACHÊ DE 5G C/ 40UN	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/52e1380c-c2c1-4dfd-b84b-b63180fafa00.jpg	4.09	\N	S	0	Shopper	2022-04-17	22:37:28
7688	AÇÚCAR GUARANI REFINADO 1KG	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1467654689_76w4o0uV4U8vVyfJyJ6AqlMAj857qz.png	4.49	\N	S	0	Shopper	2022-04-17	22:37:28
7689	AÇÚCAR MASCAVO MAIS VITA 1KG	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/31.jpg	24.99	\N	S	0	Shopper	2022-04-17	22:37:28
7690	ADOÇANTE EM PÓ ZERO-CAL SUCRALOSE 40G C/ 50UN	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1438723782_KAa1iwU1T4ZU6Fe14hj0e4oAO3VjLg.jpg	9.49	\N	S	0	Shopper	2022-04-17	22:37:29
7691	ADOÇANTE SACARINA LÍQUIDO ZERO-CAL 100ML	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/ZEROCAL_SACARINA_485.jpg	6.09	\N	S	0	Shopper	2022-04-17	22:37:29
7692	ADOÇANTE DIETÉTICO LÍQUIDO STEVITA DE STEVIA 30ML	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/stevialiquidostevita30ml4568.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:37:30
7693	ADOÇANTE DIETÉTICO LÍQUIDO STEVITA DE STEVIA 80ML	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/STEVITA80MLADOCANTE354643.jpg	16.49	\N	S	0	Shopper	2022-04-17	22:37:30
7694	ADOÇANTE DIETÉTICO ORGÂNICO STEVITA DE STEVIA C/ 50UN	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/stevitaorganicoadocante50env546.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:37:30
7695	ADOÇANTE LÍQUIDO ZERO-CAL SUCRALOSE 100ML	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/FH.jpg	10.29	\N	S	0	Shopper	2022-04-17	22:37:31
7696	AÇÚCAR DEMERARA ORGÂNICO NATIVE 1KG	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/4b85186d-94da-40fb-9ae5-810430f55a97.jpg	7.19	\N	S	0	Shopper	2022-04-17	22:37:31
7697	ADOÇANTE EM PÓ LINEA SUCRALOSE 40G C/ 50UN	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/6df19203-399c-481b-bcd4-c675d4d2a114.png	10.29	\N	S	0	Shopper	2022-04-17	22:37:32
7698	AÇÚCAR MASCAVO ORGÂNICO JASMINE 500G	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/acucarmascavo330.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:37:32
7699	AÇÚCAR MASCAVO VITAO 500G	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/aucar.jpg	11.09	\N	S	0	Shopper	2022-04-17	22:37:32
7700	AÇÚCAR MASCAVO ORGÂNICO VITALIN 500G	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/ACUCAR_ORGANICO_MASCAVO_VITALIN_500G_32365845_1fiwp2x.png	13.99	\N	S	0	Shopper	2022-04-17	22:37:33
7701	AÇÚCAR DE COCO COPRA 100G	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/acucar-de-coco-100g-copra-coco.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:37:33
7702	ADOÇANTE EM PÓ COM STEVIA LOWÇUCAR PLUS C/ 50UN	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/lowcucarstevia50saches953.jpg	12.59	\N	S	0	Shopper	2022-04-17	22:37:34
7703	ADOÇANTE FINN XILITOL 65ML	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/ADOXILI12605_hm3RZwP.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:37:34
7704	ADOÇANTE DIETÉTICO EM PÓ MAGRINS DE XILITOL E STEVIA C/ 50UN	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/xilitolpotestevia1254.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:37:35
7705	ADOÇANTE DIETÉTICO EM PÓ MAGRINS DE XILITOL E STEVIA POUCH 250G	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/xilitolstevia4558.jpg	27.49	\N	S	0	Shopper	2022-04-17	22:37:35
7706	ADOÇANTE DIETÉTICO EM PÓ MAGRINS DE XILITOL POTE 200G	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/xilitolmagrins200g45643.jpg	25.49	\N	S	0	Shopper	2022-04-17	22:37:35
7707	ADOÇANTE EM PÓ VEGANO MAGRINS ERITRITOL + STEVIA POUCH 250G	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/1ffa59fb-c2cd-49d3-961c-02914b169e42.jpg	30.49	\N	S	0	Shopper	2022-04-17	22:37:36
7708	ADOÇANTE LÍQUIDO MAGRINS ERITRITOL 65ML	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/c8c815b5-5baf-43cb-8458-873371f642ef.jpg	14.89	\N	S	0	Shopper	2022-04-17	22:37:36
7709	ADOÇANTE FORNO E FOGÃO LINEA 70G	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/fornoefogaolinea70g345.jpg	17.99	\N	S	0	Shopper	2022-04-17	22:37:37
7710	ADOÇANTE LÍQUIDO LINEA STEVIA 60ML	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/STEVIALINEA60ML3728.jpg	15.29	\N	S	0	Shopper	2022-04-17	22:37:37
7711	ADOÇANTE LÍQUIDO LINEA SUCRALOSE 75ML	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/lineasucralose75ml327.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:37:37
7712	ADOÇANTE DIETÉTICO FIT STEVIA DE SUCRALOSE C/ 50UN	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/adocantefitsteviasucra411.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:37:38
7713	ADOÇANTE EM PÓ LINEA STEVIA C/ 50UN	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/lineastevia50saches9843.jpg	12.09	\N	S	0	Shopper	2022-04-17	22:37:38
7714	ADOCANTE ERITRITOL LOWÇUCAR 300G	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/ba2ffb94-74c7-49ba-8dc9-6565095a1f07.jpg	47.90	\N	S	0	Shopper	2022-04-17	22:37:39
7715	ADOÇANTE LIQUIDO BLENDA LOWÇUCAR COM SUCRALOSE 80ML	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/adocanteblendalowcucar748.jpg	13.39	\N	S	0	Shopper	2022-04-17	22:37:39
7716	ADOÇANTE FORNO E FOGÃO LOWÇUCAR 95G	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/lowcucarfornoefogao748.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:37:39
7717	ADOÇANTE LÍQUIDO LOWÇUCAR SÓSTEVIA 80ML	\N	Alimentos	acucar e adocantes	\N	https://d2om08pcbtz1n1.cloudfront.net/sostevialowcucar74114.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:37:40
7718	ARROZ  INTEGRAL CAMIL 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/e3397402-9ab7-4f42-955c-2d33deb66c16.jpg	6.49	\N	S	0	Shopper	2022-04-17	22:37:48
7719	ARROZ  POLIDO LONGO FINO CAMIL TIPO 1 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/8ff8ac60-be41-4dd1-b17b-5e00d1eeece9.jpg	5.29	\N	S	0	Shopper	2022-04-17	22:37:48
7720	ARROZ  PARBOILIZADO CAMIL TIPO 1 5KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/7dc4a769-4b0c-4838-b8c8-46356e1d5d7b.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:37:49
7721	ARROZ  POLIDO LONGO FINO CAMIL TIPO 1 5KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/687ea190-7987-4569-83d1-120ecd7e2c14.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:37:49
7722	FEIJÃO  CARIOCA CAMIL 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/03d63017-2cb4-41f5-97ef-0ac3c4c55c0c.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:37:50
7723	FEIJÃO  PRETO CAMIL 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/43b38330-9e29-410b-bebd-bbffaf879075.jpg	9.09	\N	S	0	Shopper	2022-04-17	22:37:50
7724	ARROZ COZINHA & SABOR TIO JOÃO COM GALINHA 175G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/galinha.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:37:50
7725	ARROZ COZINHA FÁCIL TIO JOÃO À GREGA 250G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/grega.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:37:51
7726	ARROZ COZINHA FÁCIL TIO JOÃO COM ERVAS FINAS 250G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/tiojoaoarrozervasfinas2654.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:37:51
7727	ARROZ  POLIDO LONGO FINO TIPO 1 TIO JOÃO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/tiojoao1kg.jpg	6.49	\N	S	0	Shopper	2022-04-17	22:37:52
7728	ARROZ  POLIDO LONGO FINO TIPO 1 TIO JOÃO 5KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/tiojoao.jpg	29.49	\N	S	0	Shopper	2022-04-17	22:37:52
7729	ARROZ PARBOILIZADO INTEGRAL TIO JOÃO COM 8 SAQUINHOS 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/integral_xsA1Gts.jpg	7.49	\N	S	0	Shopper	2022-04-17	22:37:52
7730	ARROZ PARBOILIZADO INTEGRAL TIPO 1 TIO JOÃO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/5_WRJ2vOM.jpg	6.69	\N	S	0	Shopper	2022-04-17	22:37:53
7731	ARROZ PARBOILIZADO TIPO 1 TIO JOÃO 5KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/3_VRdeDQZ.jpg	28.49	\N	S	0	Shopper	2022-04-17	22:37:53
7732	ARROZ 7 CEREAIS INTEGRAIS + SOJA TIO JOÃO 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/d31290fd-9dd1-4336-ab01-497178e0db0a.png	8.39	\N	S	0	Shopper	2022-04-17	22:37:54
7733	ARROZ 7 GRÃOS INTEGRAIS TIO JOÃO 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/tiojoao1.jpg	10.59	\N	S	0	Shopper	2022-04-17	22:37:54
7734	ARROZ BASMATI TIO JOÃO COZINHA INDIANA 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/321fbaaa-f4d8-4d76-80ad-e649c4d6fb66.jpg	17.99	\N	S	0	Shopper	2022-04-17	22:37:54
7735	ARROZ CARNAROLI TIO JOÃO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/italiana1.jpg	17.99	\N	S	0	Shopper	2022-04-17	22:37:55
7736	ARROZ ORGÂNICO AGULHINHA INTEGRAL KORIN 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/korinorganicointegral1kg53465.jpg	15.29	\N	S	0	Shopper	2022-04-17	22:37:55
7737	ARROZ ORGÂNICO AGULHINHA POLIDO KORIN 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/korinorganicopolido53465.jpg	15.29	\N	S	0	Shopper	2022-04-17	22:37:56
7738	ARROZ INTEGRAL RÁRIS 7 CEREAIS INTEGRAIS 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/aac999b4-aa0a-4cda-8fcd-b356f49c2e1b.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:37:56
7739	ARROZ INTEGRAL RÁRIS 7 GRÃOS CENOURA 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/d77cf38d-74f5-42c3-8046-90278b2d0b53.jpg	19.49	\N	S	0	Shopper	2022-04-17	22:37:56
7740	ARROZ INTEGRAL RÁRIS 7 GRÃOS INTEGRAIS 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/14cd0a48-e95b-489e-aa1f-f6b88115b10f.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:37:57
7741	ARROZ INTEGRAL UNCLE BENS 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/7fbcaac6-4c6d-469b-aaed-56362d4eb4c6.jpg	7.29	\N	S	0	Shopper	2022-04-17	22:37:57
7742	ARROZ RÁRIS 7 GRÃOS CENOURA 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/cb28d37c-7018-4b50-acf7-78bae49304de.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:37:58
7743	ARROZ RÁRIS 7 GRÃOS E ALHO PORÓ 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/18df7fe8-2b57-4850-aa4e-4b3542adc432.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:37:58
7744	ARROZ RÁRIS INTEGRAL LONGO FINO TIPO 1 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/08eb0507-290a-4218-a651-a287970bdc93.jpg	9.29	\N	S	0	Shopper	2022-04-17	22:37:58
7745	FEIJÃO CARIOCA ORGÂNICO KORIN 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/korinfeijaocariocaorg500g216.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:37:59
7746	ARROZ POLIDO LONGO FINO ORGÂNICO TIO JOÃO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/81556006-c422-42ed-b41e-4a58bc2f2c3b.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:37:59
7747	ARROZ INTEGRAL PANTERA 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/e3479890-1e07-4b84-b4a8-95135d3a261e.jpg	6.49	\N	S	0	Shopper	2022-04-17	22:38:00
7748	ARROZ LONGO FINO TIPO 1 PANTERA 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ae9661e3-8b88-44da-869a-c2ddbaa8e7cc.jpg	6.49	\N	S	0	Shopper	2022-04-17	22:38:00
7749	ARROZ LONGO FINO TIPO 1 PANTERA 5KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/fd4ae1ce-4f77-4b6a-8908-a048cfe3b990.jpg	27.49	\N	S	0	Shopper	2022-04-17	22:38:00
7750	FEIJÃO CARIOCA ORGÂNICO PANTERA 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/3af41ae5-a3ee-443d-800b-7c817a42839e.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:38:01
7751	FEIJÃO CARIOCA PANTERA 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/db689618-d6b7-4e99-bd4b-4402d9cfaf47.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:38:01
7752	FEIJÃO PRETO PANTERA 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/7e560b6a-28de-481a-87ff-ff8a7aca4888.jpg	10.09	\N	S	0	Shopper	2022-04-17	22:38:02
7753	FEIJÃO BRANCO BONDUELLE LATA 400G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/BONDUELLEFEIJAO236.jpg	18.79	\N	S	0	Shopper	2022-04-17	22:38:02
7754	ARROZ 15 MINUTOS BLUE VILLE COM FRANGO E TOMATE 250G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZFRANGOCTOMATE576.jpg	5.59	\N	S	0	Shopper	2022-04-17	22:38:02
7755	ARROZ AROMÁTICO BLUE VILLE THAI JASMIN 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/bluevillethaijasmim875.jpg	13.59	\N	S	0	Shopper	2022-04-17	22:38:03
7756	ARROZ INTEGRAL BLUE VILLE CATETO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZCATETO576.jpg	10.99	\N	S	0	Shopper	2022-04-17	22:38:03
7757	ARROZ INTEGRAL BLUE VILLE SAQUINHOS DE 125G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZINTEGRALSAQUINHO576.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:38:04
7758	ARROZ NEGRO BLUE VILLE SELVAGEM 200G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/bluevillearroznegro200g657.jpg	27.99	\N	S	0	Shopper	2022-04-17	22:38:04
7759	ARROZ PARA CULINÁRIA BLUE VILLE NATURALISTA 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZJNATURALISTA576.jpg	11.29	\N	S	0	Shopper	2022-04-17	22:38:04
7760	ARROZ  PARBOILIZADO BLUE VILLE SAQUINHOS DE 125G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZPARBOILIZADOSAQUINHO576.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:38:05
7761	ARROZ À GREGA BLUE VILLE 250G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZGREGA265.jpg	5.59	\N	S	0	Shopper	2022-04-17	22:38:05
7762	ARROZ ARBORIO RISO INVERNI 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1458849779_Pu0Ssbxj5Jvtx5xR1V2lY6u9ACdHa5.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:38:06
7763	ARROZ BASMATI LA PASTINA 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/9c95e418-d423-4a9c-94de-9f0d5a2f9867.jpg	17.99	\N	S	0	Shopper	2022-04-17	22:38:06
7764	ARROZ E CIA BLUE VILLE ERVAS FINAS 250G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZERVASFINAS576.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:38:07
7765	ARROZ E CIA BLUE VILLE ESPINAFRE 250G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZESPINAFRE576.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:38:07
7766	ARROZ ITALIANO ARBORIO LA PASTINA 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/f74489c0-547d-47dc-9ef3-7f9bbf490111.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:38:07
7767	ARROZ PARA PAELLA LA PASTINA 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ba273e31-9fe8-4492-a120-896a3b758c15.jpg	24.49	\N	S	0	Shopper	2022-04-17	22:38:08
7768	ARROZ SABORIZADO BLUE VILLE ÁRABE 250G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZARABE265.jpg	5.59	\N	S	0	Shopper	2022-04-17	22:38:08
7769	AR_RO_Z E C_IA BL_UE VI_LL_E CE_NO_UR_A 25_0G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZCENOURA576.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:38:09
7770	ARROZ  PARBOILIZADO BLUE VILLE 5KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZPARBOILIZADO265.jpg	25.99	\N	S	0	Shopper	2022-04-17	22:38:09
7771	ARROZ ARBORIO NOR FOODS 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/a76076a0-a713-4bf4-8262-267abe49b2e9.jpg	17.29	\N	S	0	Shopper	2022-04-17	22:38:09
7772	ARROZ CARNAROLI NOR FOODS 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/9512c14a-2d5d-4269-b3b0-597169c433e8.jpg	17.29	\N	S	0	Shopper	2022-04-17	22:38:10
7773	ARROZ E CIA BLUE VILLE BETERRABA 250G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZBETERRABA576.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:38:10
7774	ARROZ E CIA BLUE VILLE CEBOLA 250G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZCEBOLA576.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:38:11
7775	ARROZ PARA SUSHI BLUE VILLE CULINÁRIA JAPONESA 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZJAPONES576.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:38:11
7776	ARROZ E CIA BLUE VILLE AÇAFRÃO 250G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZACAFRAO576.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:38:11
7777	ARROZ ARBÓRIO BLUE VILLE CULINÁRIA ITALIANA 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZJARBORIO576.jpg	14.39	\N	S	0	Shopper	2022-04-17	22:38:12
7778	ARROZ BLUE VILLE ENRIQUECIDO COM FERRO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZFERRO576.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:38:12
7779	ARROZ BRANCO BLUE VILLE TIPO 1 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROZBRANCO576.jpg	4.69	\N	S	0	Shopper	2022-04-17	22:38:13
7780	ARROZ JAPONÊS MOMIJI LONGO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/f5236d92-223f-488b-b70c-30bffb50973d.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:38:13
7781	ARROZ JAPONÊS MOMIJI LONGO 5KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/c84de101-063b-4e7f-ae4e-5d6222c27eb6.jpg	48.90	\N	S	0	Shopper	2022-04-17	22:38:13
7782	ARROZ BRANCO MINUTO CASEIRO CAMIL 240G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/a409801d-09b7-472e-b868-b369c4bdae37.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:38:14
7783	ARROZ  AGULHINHA TIPO 1 LONGO FINO CAMIL RESERVA ESPECIAL 5KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/ed3d3765-111e-4a1d-9b1c-ffb50cb201a6.jpg	30.49	\N	S	0	Shopper	2022-04-17	22:38:14
7784	ARROZ  POLIDO LONGO FINO PRATO FINO TIPO 1 5KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/eafd2cc7-f20a-4c1b-bb38-72a53770d12f.jpg	29.49	\N	S	0	Shopper	2022-04-17	22:38:15
7785	ARROZ  PARBOILIZADO PRATO FINO TIPO 1 5KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/f3e636c0-c522-4a69-bc7b-771710ed779c.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:38:15
7786	ARROZ  POLIDO LONGO FINO PRATO FINO TIPO 1 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/137c4c4a-745a-427c-8aa8-9b53f49b510c.jpg	6.49	\N	S	0	Shopper	2022-04-17	22:38:15
7787	ARROZ INTEGRAL PRATO FINO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/50b158eb-e1d5-497f-be89-0f9f77e51507.jpg	6.19	\N	S	0	Shopper	2022-04-17	22:38:16
7788	ARROZ PRATO FINO HEALTHY SELECTION MULTIGRAOS 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/43a3145a-f12c-44a2-83c3-1e6cb8082b25.png	9.99	\N	S	0	Shopper	2022-04-17	22:38:16
7789	FEIJÃO  CARIOCA URBANO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/981f5122-6122-4cb5-ae7c-9f347f317455.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:38:17
7790	FEIJÃO  PRETO URBANO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/59fc490a-76fb-4671-bcde-75cdb354adf4.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:38:17
7791	ARROZ BRANCO TIO URBANO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/1755fdda-2877-49c2-96eb-685416976304.jpg	5.19	\N	S	0	Shopper	2022-04-17	22:38:17
7792	ARROZ BRANCO TIO URBANO 5KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/d428cb14-cf68-47a7-8edf-4f4e8e4c00c8.jpg	24.49	\N	S	0	Shopper	2022-04-17	22:38:18
7793	ARROZ PREMIUM URBANO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/c876bf49-e941-42a7-87dd-66315113f128.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:38:18
7794	ARROZ PREMIUM URBANO 5KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/7b8f54ec-bb28-4bb4-ace5-b492f857499f.jpg	27.49	\N	S	0	Shopper	2022-04-17	22:38:19
7795	ARROZ PARBOILIZADO URBANO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/f364fd4e-74c6-4bf6-8c10-943cfb395f97.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:38:19
7796	ARROZ PARBOILIZADO URBANO 5KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/5089903f-d215-45d0-a4f5-b9e95e3d99c0.jpg	24.49	\N	S	0	Shopper	2022-04-17	22:38:19
7797	ARROZ 7 GRAOS URBANO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/5e2ed5a1-79cb-402a-9393-7aedec9ee129.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:38:20
7798	ARROZ 7 GRAOS URBANO SAQUINHO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/a82efa27-0e5b-4b88-833f-e6dc8bdba64c.jpg	17.29	\N	S	0	Shopper	2022-04-17	22:38:20
7799	ARROZ BRANCO URBANO SAQUINHO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/eb736240-13f1-4b12-9eac-cd9fe16cd0c5.jpg	7.29	\N	S	0	Shopper	2022-04-17	22:38:21
7800	ARROZ INTEGRAL URBANO SAQUINHO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/16cfa097-886c-4397-a1a0-d3ba56e887ad.jpg	7.69	\N	S	0	Shopper	2022-04-17	22:38:21
7801	ARROZ PARBOILIZADO URBANO SAQUINHO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/f65be282-0216-42ab-91c5-683851c365a0.jpg	6.79	\N	S	0	Shopper	2022-04-17	22:38:21
7802	ARROZ POLIDO LONGO FINO TIPO 1 NAMORADO 5KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/9acd09f8-3767-4d3f-8c89-8e0398506a40.jpg	24.49	\N	S	0	Shopper	2022-04-17	22:38:22
7803	FEIJÃO CARIOCA NAMORADO TIPO 1 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/e8e27b77-4b48-4438-bd0f-abe31ed72fc0.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:38:22
7804	FEIJÃO AZUKI BLUE VILLE 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/FEIJAOAZUKI458.jpg	12.79	\N	S	0	Shopper	2022-04-17	22:38:23
7805	FEIJÃO BRANCO BLUE VILLE 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/FEIJAOBRANCO458.jpg	6.79	\N	S	0	Shopper	2022-04-17	22:38:23
7806	FEIJÃO FRADINHO BLUE VILLE 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/c4b4521b-1cb4-4a93-aad3-26afd5c0b8f8.jpg	7.49	\N	S	0	Shopper	2022-04-17	22:38:23
7807	FEIJÃO VERMELHO BLUE VILLE 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/FEIJAOVERMELHO458.jpg	8.29	\N	S	0	Shopper	2022-04-17	22:38:24
7808	ARROZ  INTEGRAL BLUE VILLE 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/blue.jpg	5.39	\N	S	0	Shopper	2022-04-17	22:38:24
7809	FEIJÃO VERMELHO TIPO 1 KICALDO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/FeijaoVermelho_qca36lE.jpg	12.89	\N	S	0	Shopper	2022-04-17	22:38:25
7810	FEIJÃO  CARIOCA KICALDO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/kicaldo-feijao-carioca.jpg	8.89	\N	S	0	Shopper	2022-04-17	22:38:25
7811	FEIJÃO  PRETO KICALDO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/FeijaoPreto.jpg	9.59	\N	S	0	Shopper	2022-04-17	22:38:25
7812	FEIJÃO BRANCO KICALDO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/FEIJAOBRANCO236.jpg	12.49	\N	S	0	Shopper	2022-04-17	22:38:26
7813	FEIJÃO CARIOCA BROTO LEGAL 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/891167fa-f851-4816-a8ce-0156bd0cdb6f.png	9.39	\N	S	0	Shopper	2022-04-17	22:38:26
7814	ARROZ POLIDO TIPO 1 BROTO LEGAL 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/7257a9f1-180a-4f69-9808-cce9cdb3319f.png	6.59	\N	S	0	Shopper	2022-04-17	22:38:27
7815	FEIJÃO BRANCO BROTO LEGAL 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/00dc5cc7-87c9-42be-b196-cdba31a64525.jpg	9.39	\N	S	0	Shopper	2022-04-17	22:38:27
7816	FEIJÃO RAJADO BROTO LEGAL 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/b552eda8-85db-4391-bb34-034c20919deb.png	8.59	\N	S	0	Shopper	2022-04-17	22:38:28
7817	FEIJÃO PRETO BROTO LEGAL 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/FEIJAOPRETO236.jpg	9.39	\N	S	0	Shopper	2022-04-17	22:38:28
7818	ARROZ PREMIUM TIPO 1 D'MARIA 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/f2070964-a0b2-419e-b6ce-26ce4c26cf50.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:38:28
7819	ARROZ PREMIUM TIPO 1 D'MARIA 5KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/436d68ed-cd22-402f-9a9f-0486d2464266.jpg	29.49	\N	S	0	Shopper	2022-04-17	22:38:29
7820	FEIJAO PREMIUM D' MARIA 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/4410243d-73b2-4221-954d-190e15a13896.jpg	8.89	\N	S	0	Shopper	2022-04-17	22:38:29
7821	GRÃO DE BICO KICALDO 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/AF_Mockup_Grao_de_Bico_sem_sombra.jpg	11.19	\N	S	0	Shopper	2022-04-17	22:38:30
7822	GRÃO DE BICO YOKI 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/1894.jpg	15.29	\N	S	0	Shopper	2022-04-17	22:38:30
7823	GRÃO DE BICO CAMIL 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/9fe8388b-e0cd-47c9-afd3-ff1026e3a161.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:38:30
7824	LENTILHA KICALDO 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/AF_Mockup_Lentilha_sem_sombra.jpg	10.59	\N	S	0	Shopper	2022-04-17	22:38:31
7825	CANJICA MILHO BRANCO CAMIL 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/aff47fc4-e828-47af-97dd-2412aa100415.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:38:31
7826	LENTILHA CAMIL 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/1fbdb5d6-90aa-4990-8cd2-8f47da939474.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:38:32
7827	MILHO PIPOCA CAMIL 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/e1f8795e-4303-4f7a-bead-8dbb6aa9220c.jpg	5.69	\N	S	0	Shopper	2022-04-17	22:38:32
8276	LEITE CONDENSADO ITAMBÉ LATA 395G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/SHOP736.jpg	6.49	\N	S	0	Shopper	2022-04-17	22:42:04
7828	PROTEÍNA TEXTURIZADA DE SOJA CLARA CAMIL 400G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/db388cbc-d4ad-4907-b926-d9ac49a795a1.jpg	5.49	\N	S	0	Shopper	2022-04-17	22:38:32
7829	PROTEÍNA TEXTURIZADA ESCURA CAMIL 400G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/532b58d2-6866-4c35-aaf9-7a148dfd2d88.jpg	5.49	\N	S	0	Shopper	2022-04-17	22:38:33
7830	SOJA CAMIL 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/0a3b0250-63b9-4c46-b0ee-cbd055f99a14.jpg	4.59	\N	S	0	Shopper	2022-04-17	22:38:33
7831	ERVILHA CAMIL 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/fc1ec941-4acc-4f44-b65b-ebd1582eb208.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:38:34
7832	ERVILHA KICALDO 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/AF_Mockup_Ervilha_sem_sombra_pjirE9F.jpg	7.19	\N	S	0	Shopper	2022-04-17	22:38:34
7833	FEIJÃO CARIOCA PRONTO C/ TEMPERO CAMIL 380G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/5e8e6333-60df-465c-bff0-6bd4a978ba59.jpg	6.69	\N	S	0	Shopper	2022-04-17	22:38:34
7834	FEIJÃO CARIOCA SEM TEMPERO PRONTO CAMIL 490G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/54083524-a93a-4fcd-a861-279c91d55a49.jpg	6.79	\N	S	0	Shopper	2022-04-17	22:38:35
7835	ERVILHA YOKI 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/533.jpg	11.39	\N	S	0	Shopper	2022-04-17	22:38:35
7836	CANJICA YOKI 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/1345.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:38:36
7837	MILHO DE PIPOCA PREMIUM YOKI 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/847.jpg	4.99	\N	S	0	Shopper	2022-04-17	22:38:36
7838	MILHO PARA PIPOCA PREMIUM KICALDO 500G	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/AF_Mockup_Milho_de_Pipoca_sem_sombra.jpg	4.79	\N	S	0	Shopper	2022-04-17	22:38:36
7839	ARROZ À VÁCUO AGULHINHA INTEGRAL ORGÂNICO RAÍZES DO CAMPO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/45abe612-7f32-4920-85b5-d05ab80d10a7.jpg	17.79	\N	S	0	Shopper	2022-04-17	22:38:37
7840	ARROZ À VÁCUO AGULHINHA POLIDO ORGÂNICO RAÍZES DO CAMPO 1KG	\N	Alimentos	arroz feijao e graos	\N	https://d2om08pcbtz1n1.cloudfront.net/b433d8e5-3b70-4bab-a7f5-961a9928b548.jpg	17.79	\N	S	0	Shopper	2022-04-17	22:38:37
7841	PÃO FRANCÊS INTEGRAL CONGELADO 220G C/ 2UN + PÃO RECHEADO DE CALABRESA CONGELADO BRICO 220G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/a219724b-084d-4ff6-be44-675a18163493.jpg	24.19	\N	S	0	Shopper	2022-04-17	22:38:49
7842	PÃO FRANCÊS INTEGRAL CONGELADO BRICO 220G C/ 4UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/50036e4c-6611-4e3e-899e-1b7c204502a3.jpg	25.20	\N	S	0	Shopper	2022-04-17	22:38:49
7843	PÃO FRANCÊS TRADICIONAL CONGELADO 220G C/ 2UN + PÃO FRANCÊS INTEGRAL CONGELADO BRICO 220G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/124b373a-6fd2-48ff-afdb-f22aa2b9f51b.jpg	20.98	\N	S	0	Shopper	2022-04-17	22:38:50
7844	PÃO FRANCÊS TRADICIONAL CONGELADO 220G C/ 2UN + PÃO RECHEADO DE CALABRESA CONGELADO BRICO 220G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/28eb7e8b-1b7b-4690-a876-69506882808a.jpg	19.47	\N	S	0	Shopper	2022-04-17	22:38:50
7845	PÃO FRANCÊS TRADICIONAL CONGELADO BRICO 220G C/ 4UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/e5bee821-2904-4855-9294-a7e8df5a7c8a.jpg	17.96	\N	S	0	Shopper	2022-04-17	22:38:50
7846	PÃO RECHEADO DE CALABRESA CONGELADO BRICO 220G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/e185bbe7-fffa-4287-ae12-b8ae7cc91961.jpg	20.98	\N	S	0	Shopper	2022-04-17	22:38:51
7847	WAFFLE DE PÃO DE QUEIJO FORNO DE MINAS 210G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/WAFFLE-DE-PaO-DE-QUEIJO-FORNO-DE-MINAS_kAqOG0p.jpg	28.38	\N	S	0	Shopper	2022-04-17	22:38:51
7848	MANTEIGA COM SAL TIROLEZ 200G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/MANTEIGA-COM-SAL-TIROLEZ-200G_9465.jpg	22.68	\N	S	0	Shopper	2022-04-17	22:38:52
7849	MANTEIGA SEM SAL TIROLEZ 200G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/MANTEIGA-SEM-SAL-TIROLEZ-200G_789125.jpg	22.68	\N	S	0	Shopper	2022-04-17	22:38:52
7850	BOLO DE CHOCOLATE CASA SUIÇA CAFÉ DA MANHÃ 250G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/46a7f2aa-cce6-42f6-acb5-13ca6df99a9f.jpg	8.59	\N	S	0	Shopper	2022-04-17	22:38:52
7851	BOLO DE GOTAS DE CHOCOLATE CASA SUIÇA 250G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/3052675d-b6c3-4a05-b85e-5f390734a39c.jpg	8.59	\N	S	0	Shopper	2022-04-17	22:38:53
7852	BOLO DE LARANJA CASA SUIÇA CAFÉ DA MANHÃ 250G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/95b3d451-ae02-4f57-bba0-72bdea9d34f9.jpg	8.59	\N	S	0	Shopper	2022-04-17	22:38:53
7853	BOLO CLÁSSICO CASA SUIÇA DE CHOCOLATE 370G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/f4662274-2b25-4fdb-9836-48775970fea1.jpg	17.79	\N	S	0	Shopper	2022-04-17	22:38:54
7854	BOLO DE FRUTAS CASA SUIÇA CLÁSSICO 350G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/331f563a-457a-44f3-a598-dc338958132c.jpg	17.79	\N	S	0	Shopper	2022-04-17	22:38:54
7855	BOLO DE LARANJA CASA SUIÇA ZERO AÇÚCAR 280G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/09ea7eba-beab-4cab-aada-d40fd427013e.jpg	19.49	\N	S	0	Shopper	2022-04-17	22:38:54
7856	BOLO DE NOZES CASA SUIÇA ZERO AÇÚCAR 280G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/49321a77-3b6c-4719-8a08-e39ef050a897.jpg	19.49	\N	S	0	Shopper	2022-04-17	22:38:55
7857	MANTEIGA COM SAL LA MOTTE 250G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/4d31d53d-7f9c-4390-9631-b6480a0166d5.jpg	27.49	\N	S	0	Shopper	2022-04-17	22:38:55
7858	AVEIA EM FLOCOS QUAKER FINOS 165G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/151fi.jpg	4.09	\N	S	0	Shopper	2022-04-17	22:38:56
7859	AVEIA EM FLOCOS QUAKER ORGÂNICA 170G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/13922eec-2907-42b7-9cb2-cc63b00d5d7c.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:38:56
7860	AVEIA EM FLOCOS QUAKER REGULAR 165G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/152reg.jpg	4.39	\N	S	0	Shopper	2022-04-17	22:38:56
7861	AVEIA OBRAN QUAKER ORGÂNICO 150G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/a37a0d76-7b7c-4039-bc45-b05254cdd13f.jpg	7.69	\N	S	0	Shopper	2022-04-17	22:38:57
7862	CEREAL MATINAL CRUNCH 230G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/9a83bddb-2473-4fef-b28a-f7ef0359940d.png	15.79	\N	S	0	Shopper	2022-04-17	22:38:57
7863	CEREAL MATINAL INTEGRAL MEL CHEERIOS 4 CEREAIS 210G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/5c6bf82a-12f8-4cd8-93a8-b88580f53017.jpg	9.69	\N	S	0	Shopper	2022-04-17	22:38:58
7864	CEREAL MATINAL SNOW FLAKES CAIXA 230G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/5081f029-c3d6-490b-84f2-291e46c1b645.png	9.49	\N	S	0	Shopper	2022-04-17	22:38:58
7865	CEREAL MATINAL SNOW FLAKES SABOR MORANGO CAIXA 230G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/170c179a-3897-4ec3-b529-cd4bed616e6f.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:38:58
7866	MANTEIGA GHEE VEG COM SAL DO HIMALAIA BENNI 150G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/4aa0a31e-ea7b-48ef-8efd-aeec73220197.png	27.49	\N	S	0	Shopper	2022-04-17	22:38:59
7867	MANTEIGA TRADICIONAl GHEE BENNI 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/f5f86f9b-d297-4b18-a437-308a235d73da.jpg	30.49	\N	S	0	Shopper	2022-04-17	22:38:59
7868	MANTEIGA TRADICIONAL GHEE COM SAL DO HIMALAIA BENNI 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/49506083-f6a7-40ea-8310-b168a6b7b6b8.jpg	30.49	\N	S	0	Shopper	2022-04-17	22:39:00
7869	MANTEIGA VEG GHEE BENNI 150G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/a932489c-16ac-4267-aadc-49a2334854e5.png	20.99	\N	S	0	Shopper	2022-04-17	22:39:00
7870	MANTEIGA EXTRA GRAN MESTRI COM SAL LATA 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/8821.png	14.69	\N	S	0	Shopper	2022-04-17	22:39:00
7871	MANTEIGA EXTRA GRAN MESTRI COM SAL ZERO LACTOSE LATA 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/8820.png	17.29	\N	S	0	Shopper	2022-04-17	22:39:01
7872	MANTEIGA EXTRA GRAN MESTRI SEM SAL LATA 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/8822.png	14.69	\N	S	0	Shopper	2022-04-17	22:39:01
7873	MANTEIGA EXTRA GRAN MESTRI COM SAL POTE 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/4f971cb9-1f92-42b5-ac3c-b864eaa3375f.jpg	10.99	\N	S	0	Shopper	2022-04-17	22:39:02
7874	MANTEIGA EXTRA GRAN MESTRI SEM SAL POTE 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/01400b0e-d910-4c2c-bdf2-2a120985bcea.jpg	10.99	\N	S	0	Shopper	2022-04-17	22:39:02
7875	MANTEIGA GHEE DOM AFONSO COM ERVAS 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/gheervas933.jpg	25.49	\N	S	0	Shopper	2022-04-17	22:39:02
7876	MANTEIGA GHEE DOM AFONSO COM SAL ROSA 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/gheesalrosa822.jpg	25.49	\N	S	0	Shopper	2022-04-17	22:39:03
7877	MANTEIGA GHEE DOM AFONSO FLOR DE SAL  200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/gheeflordesal014.jpg	25.49	\N	S	0	Shopper	2022-04-17	22:39:03
7878	MANTEIGA GHEE DOM AFONSO NATURAL 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/gheetradicional750.jpg	29.49	\N	S	0	Shopper	2022-04-17	22:39:04
7879	BISCOITO CELIVITA DE BAUNILHA 100G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/CELIVITABISCOITOBAUNILHAPOSITIVA258.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:39:04
7880	BISCOITO CELIVITA DE COCO 100G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/CELIVITABISCOITOCOCOPOSITIVA258.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:39:04
7881	BISCOITO DE COCO CELVITA COM COBERTURA DE CHOCOLATE 40G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/CELIVITACHOCOBASEPOSITIVA258.jpg	5.09	\N	S	0	Shopper	2022-04-17	22:39:05
7882	BISCOITO MULTIGRÃOS CELIVITA DE BAUNILHA 100G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/CELIVITABISCOITOBAUNILHAGRAOSPOSITIVA258.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:39:05
7883	BISCOITO MULTIGRÃOS CELIVITA DE CACAU 100G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/CELIVITABISCOITOCACAUGRAOSPOSITIVA258.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:39:06
7884	BOLINHO CELIVITA DE MEL 40G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/CELIVITABOLINHOMELPOSITIVA258.jpg	4.19	\N	S	0	Shopper	2022-04-17	22:39:06
7885	BOLINHO DE BAUNILHA SEM AÇÚCAR CELIVITA 35G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/6b115851-f9b7-4a65-bd56-38ccc47de9ba.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:39:06
7886	BOLINHO DE CACAU CELIVITA 35G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/CELIVITABOLINHOCACAUPOSITIVA258.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:39:07
7887	BOLINHO DE CACAU SEM AÇÚCAR CELIVITA 35G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/8e4bd721-d0db-451d-b584-7970d82499a7.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:39:07
7888	BOLINHO DE COCO SEM AÇÚCAR CELIVITA 35G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/e429026b-6d07-4568-b6a0-000cc5917f55.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:39:08
7889	BOLINHO DE LARANJA CELIVITA 35G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/CELIVITABOLOLARANJAPOSITIVA258.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:39:08
7890	BOLINHO DE LARANJA CELVITA COM COBETURA DE CHOCOLATE 40G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/CELIVITABOLOLARANJACOMCHOCOLATEPOSITIVA258.jpg	4.19	\N	S	0	Shopper	2022-04-17	22:39:09
7891	BOLINHO DE LARANJA SEM AÇÚCAR CELIVITA 35G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/738d8c93-b982-4d51-b778-7f0227acaec6.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:39:09
7892	PÃO ARTESANO PULLMAN 500G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/8615.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:39:09
7893	BOLINHO DE BAUNILHA CELIVITA 35G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/CELIVITABOLINHOFUBAPOSITIVA258.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:39:10
7894	MARGARINA CREMOSA COM SAL DORIANA 500G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/68a62167-0b57-4d08-a3e5-943c281eab61.png	13.68	\N	S	0	Shopper	2022-04-17	22:39:10
7895	MARGARINA CREMOSA SEM SAL DORIANA 500G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/8967df4e-5672-40f1-8da9-be9acd463e80.png	13.68	\N	S	0	Shopper	2022-04-17	22:39:11
7896	AVEIA EM FLOCOS FINOS YOKI 170G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/406ff77c-dbd1-45d4-959f-e82715ff03bf.jpg	4.19	\N	S	0	Shopper	2022-04-17	22:39:11
7897	TAPIOCA WRAPIOCA 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/wrapioca658.jpg	9.29	\N	S	0	Shopper	2022-04-17	22:39:11
7898	PANETTONE BITES BAUDUCCO 107G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/11bbd18b-9691-4a12-9bad-1dfd88867d57.jpg	11.39	\N	S	0	Shopper	2022-04-17	22:39:12
7899	PASTA DE AMENDOIM NAKED NUTS COM CHOCOLATE BRANCO 150G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/1aec10d3-2115-4a33-b565-01c9f2aab97a.jpg	17.79	\N	S	0	Shopper	2022-04-17	22:39:12
7900	BOLO DE CHOCOLATE PULLMAN 250G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/6886.jpg	7.69	\N	S	0	Shopper	2022-04-17	22:39:13
7901	BOLO DE LARANJA PULLMAN 250G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/6885.jpg	7.69	\N	S	0	Shopper	2022-04-17	22:39:13
7902	PRESUNTO COZIDO MAGRO FATIADO SADIA SOLTÍSSIMO 200G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/PRESUNTO-COZIDO-MAGRO-FATIADO-SADIA-SOLTISSIMO-200G_MbOwsxs.jpg	20.98	\N	S	0	Shopper	2022-04-17	22:39:13
7903	SALAME HAMBURGUÊS FATIADO SADIA 100G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/SALAME-HAMBURGUeS-FATIADO-SADIA-100G.jpg	48.90	\N	S	0	Shopper	2022-04-17	22:39:14
7904	SALAME ITALIANO SADIA FATIADO 100G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/SALAME-ITALIANO-SADIA-FATIADO-100G.jpg	51.90	\N	S	0	Shopper	2022-04-17	22:39:14
7905	MORTADELA BOLOGNA C/ PISTACHE CERATTI 150G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/MORTADELA-BOLOGNA-C-PISTACHE-CERATTI-150G_P2CTLBB.jpg	16.78	\N	S	0	Shopper	2022-04-17	22:39:15
7906	MORTADELA BOLOGNA LIGHT FATIADA CERATTI 100G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/MORTADELA-BOLOGNA-LIGHT-FATIADA-CERATTI-100G_jiMdQbZ.jpg	21.96	\N	S	0	Shopper	2022-04-17	22:39:15
7907	MORTADELA BOLOGNA TRADICIONAL CERATTI 150G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/MORTADELA-BOLOGNA-TRADICIONAL-CERATTI-150G_XLuuK9R.jpg	28.47	\N	S	0	Shopper	2022-04-17	22:39:15
7908	REQUEIJÃO CREMOSO VIGOR 200G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/7ac27f65-f0d3-4a08-8e5f-2e458d47e735.jpg	15.08	\N	S	0	Shopper	2022-04-17	22:39:16
7909	QUEIJO MUSSARELA LIGHT TIROLEZ 150G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/QUEIJO-MUSSARELA-LIGHT-TIROLEZ-150G_ARWTndh.jpg	33.99	\N	S	0	Shopper	2022-04-17	22:39:16
7910	QUEIJO PRATO LIGHT TIROLEZ 150G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/QUEIJO-PRATO-LIGHT-TIROLEZ-150G_FlIjQDK.jpg	33.99	\N	S	0	Shopper	2022-04-17	22:39:17
7911	QUEIJO PRATO LIGHT ZERO LACTOSE TIROLEZ 150G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/QUEIJO-PRATO-LIGHT-ZERO-LACTOSE-TIROLEZ-150G_YIJtfh5.jpg	34.59	\N	S	0	Shopper	2022-04-17	22:39:17
7912	QUEIJO PRATO TIROLEZ 150G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/QUEIJO-PRATO-TIROLEZ-150G.jpg	29.88	\N	S	0	Shopper	2022-04-17	22:39:17
7913	REQUEIJÃO CREMOSO CATUPIRY  LIGHT 200G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/e8f1bd43-d255-4b9e-90e0-d8142cf38726.jpg	15.68	\N	S	0	Shopper	2022-04-17	22:39:18
7914	REQUEIJÃO CREMOSO CATUPIRY  TRADICIONAL 200G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/1f3bee41-eb7e-4d6c-a250-855565d27930.jpg	15.68	\N	S	0	Shopper	2022-04-17	22:39:18
7915	REQUEIJÃO VEGANO DEFUMADO VIDA VEG 180G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/9cda4a5a-b18e-487e-a2fc-29d34b61e27a.jpg	12.09	\N	S	0	Shopper	2022-04-17	22:39:19
7916	REQUEIJÃO VEGANO TRADICIONAL VIDA VEG 180G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/4512bb96-99b7-4824-bd6a-6f3f58c9ec8f.jpg	12.09	\N	S	0	Shopper	2022-04-17	22:39:19
7917	MANTEIGA VEGANA DE CASTANHA DE CAJU VIDA VEG 170G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/67dfa3a2-ec7f-4137-b6a4-bb97fd5cd376.jpg	15.29	\N	S	0	Shopper	2022-04-17	22:39:19
7918	CREME DE CASTANHA DE CAJU VIDA VEG ERVAS FINAS COM PESTO 180G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/6e136d0b-de3d-48fe-8296-382432c499fa.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:39:20
7919	CREME DE CASTANHA DE CAJU VIDA VEG TRADICIONAL 180G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/2d1dc035-b387-4e76-87b1-6b4f373f58b9.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:39:20
7920	MISTURA PARA PÃO SEM GLUTEN ZAYA 335G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/df2c0b65-5952-4033-9cbd-0ffe7f5ab1d2.jpg	19.79	\N	S	0	Shopper	2022-04-17	22:39:21
7921	MIX PARA BOLO DE FUBÁ ZAYA 490G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/6764454b-dde0-432b-a991-98e9117738ca.jpg	40.90	\N	S	0	Shopper	2022-04-17	22:39:21
7922	MIX PARA PÃO DE FORMA COM SEMENTES ZAYA 358G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/29f211f8-48c9-4ae1-bcfa-c6759abf5a3d.jpg	24.99	\N	S	0	Shopper	2022-04-17	22:39:21
7923	PÃOZINHO DAS GALÁXIAS ZAYA 282G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/ef2928d3-10d2-4c4e-bab4-d5131945c48a.jpg	40.90	\N	S	0	Shopper	2022-04-17	22:39:22
7924	FLUDEN DE NOZES TRADICIONAL FINARTE 190G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/12952eb2-7cdb-480c-abca-100a284bdbcd.jpg	17.79	\N	S	0	Shopper	2022-04-17	22:39:22
7925	BROWNIE DE CHOCOLATE COM NOZES FINARTE 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/c0c93063-d934-43e6-afed-2f5ce102bcdb.jpg	17.99	\N	S	0	Shopper	2022-04-17	22:39:23
7926	BROWNIE ZERO DE CHOCOLATE COM NOZES FINARTE 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/7e00cbf1-2070-4215-8935-b9d4c5ee900c.jpg	17.99	\N	S	0	Shopper	2022-04-17	22:39:23
7927	BOLO AMANTEIGADO DE LARANJA FINARTE 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/5084cf4d-fe3b-4b26-a29e-0db1539059dd.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:39:23
7928	BOLO AMANTEIGADO ZERO SABOR LARANJA FINARTE 250G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/104e487e-f4b0-4ec8-b6ed-81c22f98af0f.jpg	10.79	\N	S	0	Shopper	2022-04-17	22:39:24
7929	BOLO AMERICANO ZERO DE NOZES E DAMASCO FINARTE 275G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/d44a410c-5279-4e05-a3dc-05fa023f535b.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:39:24
7930	BOLO DE FUBÁ FINARTE 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/b5c5f5c7-a097-47be-aaa5-a4c67392237e.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:39:25
7931	BOLO DE FUBÁ ZERO FINARTE 250G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/9d41765d-a431-40a4-92d5-f356d3ac239d.jpg	10.79	\N	S	0	Shopper	2022-04-17	22:39:25
7932	RAP 10 TRADICIONAL 330G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/cfac3652-04a6-4d80-a2b7-51c4ea781873.png	8.39	\N	S	0	Shopper	2022-04-17	22:39:25
7933	MISTURA PARA BOLO DE CANECA DR.OETKER SABOR BRIGADEIRO 70G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/BRIGADEIROCANECA496.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:39:26
7934	MISTURA PARA BOLO DE CANECA DR.OETKER SABOR BROWNIE 70G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/BROWNIECANECA496.jpg	3.19	\N	S	0	Shopper	2022-04-17	22:39:26
7935	MISTURA PARA BOLO DE CANECA DR.OETKER SABOR CHOCOLATE 70G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/BOLOCHOCOCANECA456.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:39:27
7936	MISTURA PARA BOLO DE CANECA DR.OETKER SABOR FORMIGUEIRO 70G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/BOLOFORMIGUEIRO174.jpg	3.09	\N	S	0	Shopper	2022-04-17	22:39:27
7937	PUDIM DE CANECA CREMOSO TRUFA CHOCOLATE DR. OETKER 40G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/4bf93322-e201-4ab7-8035-d0fc509559ce.jpg	3.09	\N	S	0	Shopper	2022-04-17	22:39:28
7938	MANTEIGA COM SAL AVIAÇÃO LATA 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/AVIACAO_836.jpg	14.99	\N	S	0	Shopper	2022-04-17	22:39:28
7939	MISTURA PARA BOLO DR. OETKER BRIGADEIRÃO 355G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/83cf3201-362b-4160-a90c-d55db00d433d.jpg	11.09	\N	S	0	Shopper	2022-04-17	22:39:28
7940	MISTURA PARA BOLO DR. OETKER BRIGADEIRO + CONFEITOS 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/00c49db9-450b-4f57-b588-c630260a527b.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:39:29
7941	MISTURA PARA BOLO DR. OETKER CAPPUCCINO + CONFEITO 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/23c88cfc-a726-452b-87aa-66827285dc9c.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:39:29
7942	MISTURA PARA BOLO DR. OETKER CENOURA + CONFEITOS 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/d0d22b7a-6a4c-4ad7-b68e-3525844cbcd1.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:39:30
7943	MISTURA PARA BOLO DR. OETKER CHURROS 450G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/7c3a9722-e538-4122-b0ad-2dae6328d804.jpg	4.89	\N	S	0	Shopper	2022-04-17	22:39:30
7944	MISTURA PARA BOLO DR. OETKER MORANGO + CONFEITOS 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/5fc5c52f-52b7-4cad-8e5f-1520ac9c1348.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:39:30
7945	MISTURA PARA BOLO DR. OETKER PUDIM 310G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/dab09de0-7034-4130-b84a-0c42f3c12678.jpg	6.99	\N	S	0	Shopper	2022-04-17	22:39:31
7946	MISTURA PARA BOLO DR.OETKER AIPIM CREMOSO 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/boloaipimcremoso400gdrotekr545.jpg	5.29	\N	S	0	Shopper	2022-04-17	22:39:31
7947	MISTURA PARA BOLO DR.OETKER SABOR CHOCOLATE 450G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/bolochocodroetker450g212.jpg	5.99	\N	S	0	Shopper	2022-04-17	22:39:32
7948	MISTURA PARA BOLO DR.OETKER SABOR MILHO CREMOSO 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/bolomilhocremosodroetker400g45632.jpg	4.99	\N	S	0	Shopper	2022-04-17	22:39:32
7949	MISTURA PARA COOKIE DR. OETKER GOTAS DE CHOCOLATE SACHÊ 250G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/c1385b4a-bdda-44df-a571-97f79b3dc949.jpg	5.69	\N	S	0	Shopper	2022-04-17	22:39:32
7950	MISTURA PARA PANQUECA DOCE DR.OETKER SABOR BAUNILHA 220G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/panquecaamericanadroetker779.jpg	5.99	\N	S	0	Shopper	2022-04-17	22:39:33
7951	MISTURA PARA PÃO E PIZZA DR.OETKER SEM GLÚTEN 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/paopizzadroetkersg774.jpg	9.89	\N	S	0	Shopper	2022-04-17	22:39:33
7952	OVOS BRANCOS C/ 30UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/2499_1.jpg	22.99	\N	S	0	Shopper	2022-04-17	22:39:34
7953	OVOS BRANCOS C/ 60UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/919.jpg	36.68	\N	S	0	Shopper	2022-04-17	22:39:34
7954	MISTURA PARA PUDIM DE SORVETE DR. OETKER SABOR CHOCOLATE 310G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/605dc917-8b4d-4541-a40c-0fbc6cdc5541.jpg	6.69	\N	S	0	Shopper	2022-04-17	22:39:34
7955	MISTURA PARA PUDIM DE SORVETE DR. OETKER SABOR CREME 310G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/03bd8deb-0269-48b0-9870-4c3407c886e9.jpg	6.69	\N	S	0	Shopper	2022-04-17	22:39:35
7956	MISTURA P/ BOLO STEVITA SABOR LARANJA 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/misturalaranjastevita2100.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:39:35
7957	MISTURA PARA BOLO STEVITA DE BAUNILHA 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/misturabaunilhastevita5877.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:39:36
7958	OVO BRANCO C/6	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/0b8ce6d3-9bd9-4429-a5a6-fc7b8f275bc4.jpg	4.99	\N	S	0	Shopper	2022-04-17	22:39:36
7959	OVOS BRANCOS C/ 12UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/920.jpg	9.39	\N	S	0	Shopper	2022-04-17	22:39:36
7960	OVOS CAIPIRAS C/ 10UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/921.jpg	12.39	\N	S	0	Shopper	2022-04-17	22:39:37
7961	MISTURA PARA PÃO CASEIRO FLEISCHMANN 450G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/paocaseiro764.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:39:37
7962	MISTURA PARA PÃO DE BATATA FLEISCHMANN 450G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/paobatata102.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:39:38
7963	MISTURA PARA BOLO FLEISCHMANN AIPIM 450G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/229eb375-228b-4a38-945e-797d8a2b61fc.png	6.09	\N	S	0	Shopper	2022-04-17	22:39:38
7964	MISTURA PARA BOLO FLEISCHMANN CHOCOMOUSSE 450G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/chocomousse902.jpg	7.19	\N	S	0	Shopper	2022-04-17	22:39:38
7965	CAPPUCCINO 3 CORAÇÕES CLASSIC REFIL 100G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/f83dd2e7-3b11-4cd6-b2a1-c54aecfcd343.jpg	6.09	\N	S	0	Shopper	2022-04-17	22:39:39
7966	CAPPUCCINO EM PÓ 3 CORAÇÕES CLASSIC 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/tres_275.jpg	13.39	\N	S	0	Shopper	2022-04-17	22:39:39
7967	CAPPUCCINO EM PÓ 3 CORAÇÕES CLASSIC 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/tres_277.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:39:40
7968	CAPPUCCINO EM PÓ 3 CORAÇÕES DIET 150G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/tres_278.jpg	14.59	\N	S	0	Shopper	2022-04-17	22:39:40
7969	CAPPUCCINO EM PÓ 3 CORAÇÕES CHOCOLATE 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/tres_273.jpg	13.39	\N	S	0	Shopper	2022-04-17	22:39:40
7970	CAPPUCCINO EM PÓ 3 CORAÇÕES CLASSIC 200G C/ 10UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/tres_276.jpg	16.29	\N	S	0	Shopper	2022-04-17	22:39:41
7971	CAPPUCCINO EM PÓ 3 CORAÇÕES LIGHT 140G C/ 10UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/tres_279.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:39:41
7972	CEREAL MATINAL NESCAU NESTLÉ 210G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/nescau_cereal_210g_2684856.jpg	9.49	\N	S	0	Shopper	2022-04-17	22:39:42
7973	CEREAL MATINAL SUCRILHOS KELLOGG'S 240G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/c859f52f-10d8-4371-a821-82b29d3e50fe.jpg	11.29	\N	S	0	Shopper	2022-04-17	22:39:42
7974	CEREAL MATINAL CHOCO KRISPIS KELLOGG'S 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/ed0b74e5-c046-4f75-9b6f-2910d1766b12.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:39:42
7975	CEREAL MATINAL SUCRILHOS KELLOGG'S CHOCOLATE 240G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/bb7dbca8-e070-4cff-96cb-7cb80dc03ff9.jpg	12.09	\N	S	0	Shopper	2022-04-17	22:39:43
7976	CEREAL MATINAL SUCRILHOS POWER POPS KELLOGG'S 240G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/ed2b3ffb-e330-4f24-85b5-ed08a6aa7919.jpg	12.59	\N	S	0	Shopper	2022-04-17	22:39:43
7977	CEREAL NESFIT NESTLÉ SEM ADIÇÃO DE AÇÚCAR 220G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/79097b97-467c-4d96-b3d8-8e8721fb728b.jpg	14.39	\N	S	0	Shopper	2022-04-17	22:39:44
7978	CEREAL MATINAL FROOT LOOPS KELLOGG'S 230G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1438727657_f8c13WZ1mY84FO68m2Iw5QEW0gFY3r.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:39:44
7979	CEREAL MATINAL KELLOGGS MUSLI DE CHOCOLATE 270G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/MUSLICHO12735.jpg	14.29	\N	S	0	Shopper	2022-04-17	22:39:45
7980	BOLINHO BAUDUCCO DUPLO CHOCOLATE 40G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/50c50d63-739f-4dc5-a9bb-cea5e9591c5e.jpg	1.39	\N	S	0	Shopper	2022-04-17	22:39:45
7981	BOLINHO ANA MARIA PULLMAN DE BAUNILHA 70G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/9db79fa6-7e3f-493a-8124-1fe022444ec2.png	3.69	\N	S	0	Shopper	2022-04-17	22:39:45
7982	BOLINHO ANA MARIA PULLMAN DE BAUNILHA COM RECHEIO DE CHOCOLATE 70G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/318c0769-0858-43cf-86f8-5cbbefbe801f.png	3.69	\N	S	0	Shopper	2022-04-17	22:39:46
7983	MINI MUFFINS ANA MARIA DE BAUNILHA COM GOTAS DE CHOCOLATE LITTLE BITES 66G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/a44672a3-0347-4d5b-ae1f-fbc529a10a87.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:39:46
7984	MINI MUFFINS ANA MARIA DE CHOCOLATE COM GOTAS LITTLE BITES 66G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/189afd0b-ead8-4fe2-872c-8d24f95833ae.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:39:47
7985	BOLINHO PANCO DE BAUNILHA PANFI 70G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/4359.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:39:47
7986	BOLINHO PANCO DE CHOCOLATE PANFI 70G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/4358.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:39:47
7987	BOLINHO PANCO DE MORANGO PANFI 70G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/1474.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:39:48
7988	BOLO DE BAUNILHA PANFI PANCO 35G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/9c3ac984-257a-4d3c-b676-f91576a89798.jpg	1.99	\N	S	0	Shopper	2022-04-17	22:39:48
7989	BOLO DE CHOCOLATE PANFI PANCO 35G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/dcf26036-bb21-4d81-8d8c-56b4ff3a9957.jpg	1.99	\N	S	0	Shopper	2022-04-17	22:39:49
7990	BOLO DE MORANGO PANFI PANCO 35G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/5dd87560-5b83-4029-9cfc-a8dc95c09296.jpg	1.99	\N	S	0	Shopper	2022-04-17	22:39:49
7991	BROWNIE BELIVE CHOCOLATE COM COCO 40G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/belivechocococo40g5587.jpg	5.59	\N	S	0	Shopper	2022-04-17	22:39:49
7992	BROWNIE BELIVE CHOCOLATE ZERO 40G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/69f66de5-6328-4b68-9e03-7e85800572dc.jpg	5.59	\N	S	0	Shopper	2022-04-17	22:39:50
7993	BROWNIE PROTEIN BELIVE DOUBLE CHOCOLATE ZERO 40G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/b14f09d7-47da-4448-bfab-78f2a0dd7c63.jpg	5.59	\N	S	0	Shopper	2022-04-17	22:39:50
7994	CAFÉ SOLÚVEL GRANULADO 3 CORAÇÕES DESCAFEINADO REFIL 50G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/cafesoluveldescaf3cora454.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:39:51
7995	CAFÉ SOLÚVEL GRANULADO 3 CORAÇÕES DESCAFEINADO VIDRO 50G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/cafesoluvelvidro4653.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:39:51
7996	MANTEIGA COM SAL AVIAÇÃO POTE 200G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/MANTEIGA-COM-SAL-AVIACAO-POTE-200G_8795.jpg	23.08	\N	S	0	Shopper	2022-04-17	22:39:51
7997	QUEIJO CHEDDAR SANDWICH-IN POLENGHI 144G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/d4ce3f3c-0570-49de-bb91-fd5e77555461.jpg	33.48	\N	S	0	Shopper	2022-04-17	22:39:52
7998	REQUEIJÃO CREMOSO AVIAÇÃO 250G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/REQUEIJaO-CREMOSO-AVIAcaO-250G_tmcNpZv.jpg	21.58	\N	S	0	Shopper	2022-04-17	22:39:52
7999	REQUEIJÃO CREMOSO LIGHT AVIAÇÃO 250G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/REQUEIJaO-CREMOSO-LIGHT-AVIAcaO-250G.jpg	21.58	\N	S	0	Shopper	2022-04-17	22:39:53
8000	MISTURA PARA BOLO BROWNIE UNIÃO 480G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/007a07ff-0c77-4e81-9465-e38185fa2966.jpg	6.89	\N	S	0	Shopper	2022-04-17	22:39:53
8001	MISTURA PARA BOLO CENOURA UNIÃO 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/a94f43c6-effb-488f-a448-c7df65cc9d88.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:39:53
8002	MISTURA PARA BOLO FUBÁ UNIÃO 450G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/59e99d04-17e1-42c6-b674-2302d6eb866c.jpg	6.89	\N	S	0	Shopper	2022-04-17	22:39:54
8003	MISTURA PARA BOLO INTEGRAL BANANA UNIÃO 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/18603f22-1b85-4422-8299-4f71d44c108f.jpg	6.89	\N	S	0	Shopper	2022-04-17	22:39:54
8004	MISTURA PARA BOLO INTEGRAL UNIÃO DE MAÇÃ COM CANELA 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/71096cd9-c5da-4ce0-91b5-1158d6b78996.jpg	7.79	\N	S	0	Shopper	2022-04-17	22:39:55
8005	MISTURA PARA BOLO LARANJA UNIÃO 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/d5a1b920-0d31-49bd-8d9b-e4568bc98cda.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:39:55
8006	MISTURA PARA BOLO DONA BENTA SABOR BAUNILHA 450G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/b3c389a5-85a6-4d45-9898-dc93b4f953ed.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:39:55
8007	MISTURA PARA BOLO DONA BENTA FUBÁ 450G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/78e7decb-3ff4-4f49-a4ca-a9728dc7af7f.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:39:56
8008	MISTURA PARA BOLO DONA BENTA INSPIRAÇÕES PETIT GATEAU 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/62eb4d7b-52d5-4003-aaa9-adf65d427a63.jpg	6.99	\N	S	0	Shopper	2022-04-17	22:39:56
8009	MISTURA PARA BOLO DONA BENTA SABOR CHOCOLATE 450G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/654dd76b-06c8-4ebd-af12-ba846f75ccc0.jpg	6.89	\N	S	0	Shopper	2022-04-17	22:39:57
8010	MISTURA PARA BOLO DONA BENTA SABOR LARANJA 450G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/f9760a94-2f91-454e-a30f-8d31a4cbdcbd.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:39:57
8011	TAPIOCA AKIO 500G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/tapiocaakio854.jpg	7.29	\N	S	0	Shopper	2022-04-17	22:39:57
8012	TAPIOCA DA TERRINHA 500G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1448471166_302LhJV23ey61z9DbHc9WjybaQ84ka.jpg	6.19	\N	S	0	Shopper	2022-04-17	22:39:58
8013	TAPIOCA HIDRATADA DELIOCA PREMIUM DA TERRINHA 560G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/1e901d37-24e4-4091-b593-a998bdaf38cf.jpg	12.49	\N	S	0	Shopper	2022-04-17	22:39:58
8014	BISNAGUINHA INTEGRAL PANCO 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/83fe3c85-d83f-41b3-9c4c-ad43136f5e3f.jfif	8.19	\N	S	0	Shopper	2022-04-17	22:39:59
8015	BISNAGUINHA PANCO 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/1658.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:39:59
8016	PÃO DE BATATA-DOCE SEM GLÚTEN VEGANO JASMINE 350G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/9a3a390d-c594-4cf0-8ef7-ca8f7e0641c2.jpg	22.49	\N	S	0	Shopper	2022-04-17	22:39:59
8017	PÃO DE MILHO SEM GLÚTEN VEGANO JASMINE 350G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/0c983c6c-0590-4322-ad5d-0168030b0e01.jpg	22.49	\N	S	0	Shopper	2022-04-17	22:40:00
8018	PÃO SEM GLÚTEN MULTIGRÃOS JASMINE 350G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/PAOMULTIGRAOS126.jpg	18.49	\N	S	0	Shopper	2022-04-17	22:40:00
8019	PÃO DE FORMA VISCONTI 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/Untitled_design_14.png	5.99	\N	S	0	Shopper	2022-04-17	22:40:01
8020	PÃO DE FORMA VISCONTI INTEGRAL 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/Untitled_design_13.png	7.39	\N	S	0	Shopper	2022-04-17	22:40:01
8021	BISNAGUITO TRADICIONAL PULLMAN 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/50bc48b2-6f23-4461-b50c-ffe02484b27c.jpg	6.09	\N	S	0	Shopper	2022-04-17	22:40:01
8022	PÃO DE COCO PULLMAN 450G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/1b4fd4fa-9ebd-4bf9-b9ea-d054f61070f9.jpg	9.49	\N	S	0	Shopper	2022-04-17	22:40:02
8023	PÃO DE FORMA 100% INTEGRAL ZERO AÇÚCAR PANCO 380G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/024f95ce-eff4-4f36-84e2-8ec320e6874c.jpg	10.79	\N	S	0	Shopper	2022-04-17	22:40:02
8024	PÃO DE FORMA INTEGRAL AUSTRALIANO PANCO 380G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/e84ae3b7-5d43-422b-a49b-e8f9ce9cb81c.jpg	10.39	\N	S	0	Shopper	2022-04-17	22:40:03
8025	PÃO DE FORMA JÚNIOR PANCO 350G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/d645c699-90cb-44c3-a3d7-62c8cf6140d5.jpg	6.09	\N	S	0	Shopper	2022-04-17	22:40:03
8026	PÃO DE FORMA PANCO PREMIUM 500G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/1665.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:40:03
8027	PÃO EGG SPONGE PANCO 250G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/4930.jpg	11.39	\N	S	0	Shopper	2022-04-17	22:40:04
8028	PÃO SOVADO PANCO 500G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/4931.jpg	12.09	\N	S	0	Shopper	2022-04-17	22:40:04
8029	PÃO DE FORMA WICKBOLD TRADICIONAL 450G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/6a81e268-677d-4e30-b43b-963029d27ba2.png	7.29	\N	S	0	Shopper	2022-04-17	22:40:05
8030	PÃO DE FORMA 100% INTEGRAL PULLMAN 7 GRÃOS 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/7465b0da-a7d2-4a38-9f72-43a3b733d401.jpg	12.39	\N	S	0	Shopper	2022-04-17	22:40:05
8031	PÃO DE FORMA 100% INTEGRAL WICKBOLD DO FORNO 500G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/10662wick.jpg	10.89	\N	S	0	Shopper	2022-04-17	22:40:06
8032	PÃO DE FORMA WICKBOLD DO FORNO ORIGINAL 500G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/10664wick.jpg	9.39	\N	S	0	Shopper	2022-04-17	22:40:06
8033	PÃO DE GRÃOS WICKBOLD DE CASTANHA DO PARÁ E QUINOA 500G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/wickboldquinoaecatanhsa156.jpg	12.99	\N	S	0	Shopper	2022-04-17	22:40:06
8034	PÃO DE GRÃOS WICKBOLD DE CHIA E MACADAMIA 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/wickboldchiamacadamia516.jpg	11.89	\N	S	0	Shopper	2022-04-17	22:40:07
8035	PÃO DE FORMA WICKBOLD INTEGRAL 450G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/124f611e-3960-4e00-af6b-636a5b3a497a.jpg	8.79	\N	S	0	Shopper	2022-04-17	22:40:07
8036	TORRADA TRADICIONAL WICKBOLD 140G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/9992d04d-cf0e-4be5-aea6-e5507b0b7830.jpg	5.19	\N	S	0	Shopper	2022-04-17	22:40:08
8037	TORRADA BAUDUCCO MULTIGRÃOS 142G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/bauducco_multi.png	3.59	\N	S	0	Shopper	2022-04-17	22:40:08
8038	PÃO DE FORMA SEM GLÚTEN E LACTOSE SCHAR MULTIGRÃOS 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/695ab2c2-38fc-432a-9aef-a102a76280b0.png	14.19	\N	S	0	Shopper	2022-04-17	22:40:08
8039	PÃO FRANCÊS PRÉ-ASSADO SCHAR SEM GLÚTEN 130G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/d079cbca-4084-4921-bd8a-0a8e446f6562.jpg	13.69	\N	S	0	Shopper	2022-04-17	22:40:09
8040	TORRADA BAUDUCCO INTEGRAL 142G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/bauducco_integ.jpg	3.59	\N	S	0	Shopper	2022-04-17	22:40:09
8041	TORRADA MARILAN MAGIC TOAST INTEGRAL 150G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/4f2054e7-630d-4a8c-9384-324ed6fe6592.jpg	5.09	\N	S	0	Shopper	2022-04-17	22:40:10
8042	TORRADA MARILAN MAGIC TOAST LIGHT 144G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/530746ca-533c-4847-a0bb-3d684a9fe9ce.jpg	5.29	\N	S	0	Shopper	2022-04-17	22:40:10
8043	TORRADA MARILAN MAGIC TOAST ORIGINAL 150G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/04820916-1e87-4ee6-9ebd-d65e91d3b386.jpg	5.29	\N	S	0	Shopper	2022-04-17	22:40:10
8044	BOLO MINI PAUSA CIOK SCHAR SEM GLÚTEN 35G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/991d73ad-73a2-45f8-8936-96128cf456a5.jpg	5.29	\N	S	0	Shopper	2022-04-17	22:40:11
8045	TAPIOCA PREMIUM MANI 500G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/TAPIOCAPREMIUMVIAPAX258.jpg	9.39	\N	S	0	Shopper	2022-04-17	22:40:11
8046	CAFÉ À VÁCUO IGUAÇU TRADICIONAL 500G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/cafeiguacu500gtrad896.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:40:12
8047	OVOS DE CODORNA C/ 30UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/7425.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:40:12
8048	BEBIDA LÁCTEA DE CHOCOLATE NESCAU 270ML	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/1688cf0c-141e-4d65-b787-fe8f81045d5e.png	5.09	\N	S	0	Shopper	2022-04-17	22:40:12
8049	CAPPUCCINO PRONTO 3 CORAÇÕES BALANCE 260ML	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/c4620780-03f2-4cf4-81f2-6fca0bf38cb6.jpg	5.59	\N	S	0	Shopper	2022-04-17	22:40:13
8050	CAFÉ À VÁCUO TORRADO E MOÍDO TOLEDO ESPECIAL 500G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/260df8a9-1611-4db3-9be0-2b52c6bd47fb.jpg	28.99	\N	S	0	Shopper	2022-04-17	22:40:13
8051	CAFÉ À VÁCUO TORRADO E MOÍDO TOLEDO GOURMET 250G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/b3908219-1e58-4499-b5a2-2f4ee0fcfe39.jpg	21.49	\N	S	0	Shopper	2022-04-17	22:40:14
8052	CAFÉ À VÁCUO TORRADO E MOÍDO TOLEDO GOURMET 500G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/ea89fc65-c2fa-401d-939f-030d0184c6d6.jpg	28.99	\N	S	0	Shopper	2022-04-17	22:40:14
8053	CAFÉ TORRADO EM GRÃOS TOLEDO GOURMET EXPRESSO 500G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/CAFETOLEDO269.jpg	38.90	\N	S	0	Shopper	2022-04-17	22:40:14
8054	MORNING SHOT EM PÓ SUBLYME C/30 DOSES	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/a710aae8-a7df-4e46-b128-0f02879847c2.jpg	117.90	\N	S	0	Shopper	2022-04-17	22:40:15
8055	MANTEIGA DE COCO QUALICOCO SABOR MANTEIGA COM SAL 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/ea02cc5c-1ff1-4066-8164-f44afc5374e0.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:40:15
8056	MANTEIGA DE COCO QUALICOCO SABOR MANTEIGA SEM SAL 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/48ef73d0-89c9-46a2-b637-e193170c849f.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:40:16
8057	IOGURTE GREGO DANONE FRUTAS VERMELHAS 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/074f5414-23bb-40d8-a4b5-972b0d84a781.jpg	9.39	\N	S	0	Shopper	2022-04-17	22:40:16
8058	IOGURTE GREGO DANONE TRADICIONAL 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/f844ba72-44bd-4ffb-a197-d406b2ec350d.jpg	9.39	\N	S	0	Shopper	2022-04-17	22:40:16
8059	IOGURTE GREGO VIGOR BLUEBERRY 100G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/c4792a5c-869b-49ef-b181-138e38593df7.jpg	8.19	\N	S	0	Shopper	2022-04-17	22:40:17
8060	IOGURTE GREGO VIGOR FRUTAS VERMELHAS 100G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/a2c6a5c0-e5e9-422e-8e99-7cd577b4ce29.jpg	8.19	\N	S	0	Shopper	2022-04-17	22:40:17
8061	IOGURTE GREGO VIGOR TRADICIONAL 100G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/4ca24de7-9725-458a-b5fb-e02ac12cb24e.jpg	8.19	\N	S	0	Shopper	2022-04-17	22:40:18
8062	IOGURTE GREGO VIGOR ZERO GORDURAS MORANGO 100G C/3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/0fc9546a-9d62-49f3-9b01-584996d46570.jpg	8.19	\N	S	0	Shopper	2022-04-17	22:40:18
8063	IOGURTE GREGO VIGOR ZERO GORDURAS TRADICIONAL 100G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/015827c9-7334-4903-b7bf-7ec871b2013c.jpg	8.19	\N	S	0	Shopper	2022-04-17	22:40:18
8064	IOGURTE MIX CEREAIS VIGOR MORANGO 165G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/a73575ea-9a49-4374-956a-7b6019e4b2ef.jpg	9.78	\N	S	0	Shopper	2022-04-17	22:40:19
8065	IOGURTE MIX CEREAIS VIGOR TRADICIONAL 165G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/53c5b0ce-4522-4642-beb5-4b3b575c1a02.jpg	9.78	\N	S	0	Shopper	2022-04-17	22:40:19
8066	IOGURTE LÍQUIDO YOPRO CAFÉ EXPRESSO 250G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/02391725-d9f5-464d-9e8b-8752dc727974.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:40:20
8067	IOGURTE LÍQUIDO YOPRO DOCE DE LEITE 250G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/25137467-f59b-4e75-bb96-dfca8f2e3a6f.png	10.49	\N	S	0	Shopper	2022-04-17	22:40:20
8068	IOGURTE LÍQUIDO YOPRO MORANGO 250G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/5e22b0a0-2458-4372-bcde-5b73f4946937.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:40:20
8069	IOGURTE ZERO LACTOSE YOPRO COCO CREMOSO 160G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/b699f610-9acb-4074-9f3d-b8eabda17042.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:40:21
8070	IOGURTE ZERO LACTOSE YOPRO MORANGO 160G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/41d8d134-2b69-48ba-a747-202ff4457e7e.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:40:21
8071	IOGURTE ZERO LACTOSE YOPRO NATURAL 160G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/5a81db3c-7aae-46ad-8e97-a001aa5ff430.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:40:22
8072	PANQUECA AMERICANA ORIGINAL WAFFLE 360G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/6172f272-2619-4012-aaff-0cc93fdc1fcc.jpg	27.49	\N	S	0	Shopper	2022-04-17	22:40:22
8073	PANQUECA AMERICANA ORIGINAL WAFFLE 600G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/36f1d419-d0da-48c7-a117-6f31ffeb53d9.jpg	33.90	\N	S	0	Shopper	2022-04-17	22:40:22
8074	WAFFLE BELGA ORIGINAL WAFFLE 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/0a9ee364-7123-4c67-af2b-0fa99e644cc7.jpg	28.99	\N	S	0	Shopper	2022-04-17	22:40:23
8075	IOGURTE LÍQUIDO SABOR MORANGO MOLICO 170G C/ 4UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/faf64c92-4710-4811-a21f-990de21052c8.png	9.96	\N	S	0	Shopper	2022-04-17	22:40:23
8076	LEITE FERMENTADO CHAMYTO 450G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/2f90ac41-3b4d-4125-84b5-f0958d2115f4.png	10.48	\N	S	0	Shopper	2022-04-17	22:40:24
8077	SOBREMESA SABOR CHOCOLATE CHANDELLE 360G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/7e31059e-8eda-4913-9970-049c83772e60.png	6.89	\N	S	0	Shopper	2022-04-17	22:40:24
8078	IOGURTE LÍQUIDO SABOR MORANGO, BAUNILHA E AVEIA NESFIT 850G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/faefd894-317d-457f-b3cf-084770053d20.jpg	13.59	\N	S	0	Shopper	2022-04-17	22:40:25
8079	IOGURTE LÍQUIDO SABOR FRUTAS VERMELHAS NESFIT 170G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/af581023-fb8f-4ff2-8551-55949f0ce40a.jpg	6.87	\N	S	0	Shopper	2022-04-17	22:40:25
8080	IOGURTE LÍQUIDO SABOR MORANGO, BAUNILHA E AVEIA NESFIT 170G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/aba4e6f2-0f15-4ee3-8d28-78b2b9e9cbf7.jpg	6.87	\N	S	0	Shopper	2022-04-17	22:40:25
8081	IOGURTE GREGO TRADICIONAL NESTLÉ 90G C/ 4UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/588400eb-9c4f-44a4-a74f-6a4334933cc1.png	9.96	\N	S	0	Shopper	2022-04-17	22:40:26
8082	IOGURTE NATURAL COM MEL NESTLÉ 170G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/275cc571-a6c1-4c83-9159-c2b770fa2ed3.png	7.77	\N	S	0	Shopper	2022-04-17	22:40:26
8083	IOGURTE LÍQUIDO SABOR MAÇÃ E BANANA NINHO 170G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/1c1ec4d8-f5c2-45dc-b06d-cc3c592bb709.png	5.16	\N	S	0	Shopper	2022-04-17	22:40:27
8084	IOGURTE NATURAL DESNATADO NESTLÉ 160G C/ 4UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/d524360a-c6e1-4490-b59f-c16fe1b5579d.png	10.48	\N	S	0	Shopper	2022-04-17	22:40:27
8085	BEBIDA LÁCTEA SABOR VITAMINA NESTON 170G C/ 3UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/75db79bd-18e0-4be6-8492-53ce2e632fd3.png	5.13	\N	S	0	Shopper	2022-04-17	22:40:27
8086	IOGURTE SABOR MORANGO NESTLÉ 170G C/ 4UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/f363088a-9126-42c8-9ef8-65bace8ed8d3.png	10.48	\N	S	0	Shopper	2022-04-17	22:40:28
8087	MANTEIGA COM SAL AVIAÇÃO TABLETE 200G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/40a75546-b077-4247-978b-ae9d429bbc9c.jpg	24.08	\N	S	0	Shopper	2022-04-17	22:40:28
8088	MANTEIGA SEM SAL AVIAÇÃO TABLETE 200G C/ 2UN	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/3f6cdc40-f64b-432f-a270-018b78d8f969.jpg	24.08	\N	S	0	Shopper	2022-04-17	22:40:29
8089	MANTEIGA E MARGARINA COM SAL MIX VIGOR 500G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/4b67ea62-ed97-43a0-8457-8c49158f85ac.jpg	18.49	\N	S	0	Shopper	2022-04-17	22:40:29
8090	PÃO DE FORMA BAUDUCCO INTEGRAL 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/BAUDINTEG12441.jpg	7.29	\N	S	0	Shopper	2022-04-17	22:40:29
8091	PÃO DE FORMA BAUDUCCO TRADICIONAL 400G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/BAUDTRAD12981.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:40:30
8092	CHOCOLATE EM PÓ DR.OETKER 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/decoracaodroetkerempo200g223.jpg	9.79	\N	S	0	Shopper	2022-04-17	22:40:30
8093	PAO DE MEL PANCO COM COBERTURA DE CHOCOLATE 200G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/12151panco.jpg	8.19	\N	S	0	Shopper	2022-04-17	22:40:31
8094	PÃO DE FORMA SEM GLÚTEN SEM LACTOSE WICKBOLD ORIGINAL 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/12149wick.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:40:31
8095	BOLO DE ABACAXI PANCO 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/2ce4c3f7-0eb4-4cd1-918e-0b80fa81eef3.jpg	9.49	\N	S	0	Shopper	2022-04-17	22:40:31
8096	BOLO DE CHOCOLATE PANCO 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/1db90c36-9f69-4a93-9049-b24654e43e63.jpg	9.49	\N	S	0	Shopper	2022-04-17	22:40:32
8097	BOLO DE COCO PANCO 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/02fc1a54-604d-4a63-8c13-d1fe6cd4564f.jpg	9.49	\N	S	0	Shopper	2022-04-17	22:40:32
8098	BOLO DE LARANJA PANCO 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/5e4187d9-0fa1-40a0-8e9a-87ecb2ab986c.jpg	9.49	\N	S	0	Shopper	2022-04-17	22:40:33
8099	BOLO PANCO CHOCO BOY 300G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/12140chocoboy.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:40:33
8100	PÃO DE MILHO PANCO 500G	\N	Alimentos	cafe da manha	\N	https://d2om08pcbtz1n1.cloudfront.net/12150panco.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:40:33
8101	ERVILHA E CENOURA QUERO LATA 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/16aa0227-428c-4e9d-a446-b272bcb792db.jpg	3.99	\N	S	0	Shopper	2022-04-17	22:40:40
8102	ERVILHA QUERO LATA 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/d5aa3477-07ae-4259-9211-15ea8bdfa5cc.jpg	3.09	\N	S	0	Shopper	2022-04-17	22:40:41
8103	GRÃO DE BICO QUERO LATA 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/1ec71155-36e1-4877-8123-17bc8a9b459a.png	2.89	\N	S	0	Shopper	2022-04-17	22:40:41
8104	ERVILHA QUERO CAIXA 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/84b2a60b-8e78-4787-ba46-3c3df9628b48.jpg	3.29	\N	S	0	Shopper	2022-04-17	22:40:41
8105	MILHO VERDE QUERO LATA 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/d380f6c5-714b-42b3-ba94-bc83e1ea4000.jpg	3.39	\N	S	0	Shopper	2022-04-17	22:40:42
8106	SELETA DE LEGUMES QUERO LATA 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/3266df87-1dda-4ddb-8bf2-78254c531496.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:40:42
8107	ALCAPARRAS RAIOLA 65G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/raiolaalcaparra65g86543.jpg	11.89	\N	S	0	Shopper	2022-04-17	22:40:43
8108	AZEITONA PRETA AZAPA RAIOLA 345G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/azeitona_preta_raiola_azapa_7o6ANXT.png	16.79	\N	S	0	Shopper	2022-04-17	22:40:43
8109	AZEITONA PRETA RAIOLA DESCAROÇADA 160G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/54686267-adef-4d5b-b35b-c152b44dd1eb.jpg	12.89	\N	S	0	Shopper	2022-04-17	22:40:43
8110	AZEITONA PRETA RAIOLA FATIADA 155G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/raiolaazeitonapretafat155g9654.jpg	13.69	\N	S	0	Shopper	2022-04-17	22:40:44
8111	AZEITONA RAIOLA FATIADA 155G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/5d01a00a-8409-4e6d-8a1c-db948cfe4bcf.jpg	9.29	\N	S	0	Shopper	2022-04-17	22:40:44
8112	AZEITONA VERDE FATIADA FAMILIA RAIOLITA SACHÊ 150G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/dae95e88-ac47-4aae-9477-199f85cd6b84.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:40:45
8113	AZEITONA VERDE RAIOLA COM CAROÇO FAMÍLIA RAIOLITA 200G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/2803RAIOLA.jpg	8.79	\N	S	0	Shopper	2022-04-17	22:40:45
8114	AZEITONA VERDE RAIOLA RECHEADA COM PIMENTÃO 195G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/raiolaazeitonaverrechpim195g991.jpg	12.99	\N	S	0	Shopper	2022-04-17	22:40:45
8115	AZEITONA VERDE RAIOLA SEM CAROÇO VIDRO 155G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/4bb8b0e5-117d-4e99-b17b-345b57d52f36.jpg	10.19	\N	S	0	Shopper	2022-04-17	22:40:46
8116	AZEITONA VERDE SEM CAROÇO FAMILIA RAIOLITA SACHÊ 150G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/b707250b-01d0-4fe8-bd58-bfa2ea59562a.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:40:46
8117	COGUMELO CHAMPIGNON RAIOLA FATIADO 180G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/COGUMELOFAT569.jpg	17.79	\N	S	0	Shopper	2022-04-17	22:40:47
8118	COGUMELO CHAMPIGNON RAIOLA INTEIRO 100G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/chapignoninteiro100.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:40:47
8119	COGUMELO CHAMPIGNON RAIOLA INTEIRO 200G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/chapignoninteiro200.jpg	17.79	\N	S	0	Shopper	2022-04-17	22:40:47
8120	TREMOÇO RAIOLA 200G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/raiolatremoco200g957.jpg	11.29	\N	S	0	Shopper	2022-04-17	22:40:48
8121	ALCAPARRA ESPANHOLA LA PASTINA 60G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/0e040c24-cbf0-4c12-be98-add75e5718f7.jpg	12.59	\N	S	0	Shopper	2022-04-17	22:40:48
8122	AZEITONA CHILENA PRETA KALAMATA LA PASTINA INTEIRA 216G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/0d833668-f118-4e21-b4b8-8322d6bd6eb1.png	27.49	\N	S	0	Shopper	2022-04-17	22:40:49
8123	AZEITONA CHILENA PRETA KALAMATA LA PASTINA SEM CAROÇO 175G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/32bd5668-4801-4e13-b33b-671945824ce2.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:40:49
8124	ASPARGO BRANCO LA PASTINA 205G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/b1aebe37-3157-4eac-b74a-04a5df926eef.jpg	29.49	\N	S	0	Shopper	2022-04-17	22:40:49
8125	BRUSCHETTA LA PASTINA ALCACHOFRA 280G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/LAPASTINAALCACHOFRA258_1.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:40:50
8126	BRUSCHETTA LA PASTINA DE ASPARGO VERDE 280G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/eb35e394-16d0-4359-9c97-2e6d6bf83d7f.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:40:50
8127	BRUSCHETTA LA PASTINA JALAPENO E PIMENTÃO 280G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/LAPASTINAPIMENTAOJALAPENO258.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:40:51
8128	CREME DE 4 QUEIJOS LA PASTINA TRUFADO 180G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/1ddc3c1c-7dfc-43c6-9370-80169808073f.jpg	43.90	\N	S	0	Shopper	2022-04-17	22:40:51
8129	TOMATE INTEIRO PELADO RAIOLA ITALIANO 400G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/raiola.jpg	9.49	\N	S	0	Shopper	2022-04-17	22:40:51
8130	TOMATE PELADO ITALIANO LA PASTINA 400G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/badbcb80-2a6a-4a4b-9fd4-7636b30e2420.jpg	9.79	\N	S	0	Shopper	2022-04-17	22:40:52
8131	TOMATE PELADO ITALIANO LA PASTINA EM CUBOS 400G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/295ee10c-100e-4528-a977-451d4298106f.jpg	9.79	\N	S	0	Shopper	2022-04-17	22:40:52
8132	ATUM  EM PEDAÇOS GOMES DA COSTA AO NATURAL 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/f4c2d170-80bc-487e-891e-b92673c25f43.jpg	9.09	\N	S	0	Shopper	2022-04-17	22:40:53
8133	CEREJA AO MARASCHINO RAIOLA EM CALDA 125G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/cereja.jpg	17.99	\N	S	0	Shopper	2022-04-17	22:40:53
8134	SALADA COM ATUM, BATATA DOCE E AZEITE DE OLIVA GOMES DA COSTA 150G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/193b18da-8cfb-46f4-aa2e-f636dc469a9a.jpg	10.19	\N	S	0	Shopper	2022-04-17	22:40:53
8135	SALADA GOMES DA COSTA COM ATUM E BATATA 150G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/b7df03cb-372f-4485-b8f2-79b83cd9a9e8.jpg	10.19	\N	S	0	Shopper	2022-04-17	22:40:54
8136	ATUM  EM PEDAÇOS GOMES DA COSTA OLEO 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/b79cff25-825d-4f15-8d26-32cdc3894bc7.jpg	9.09	\N	S	0	Shopper	2022-04-17	22:40:54
8137	ATUM  SÓLIDO GOMES DA COSTA OLEO 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/f096b8f9-96f8-42a9-bfd1-78d09a364b7e.jpg	9.39	\N	S	0	Shopper	2022-04-17	22:40:55
8138	ATUM  RALADO GOMES DA COSTA NATURAL 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/a58341d1-3323-44f6-b872-4e170c036fea.jpg	6.59	\N	S	0	Shopper	2022-04-17	22:40:55
8139	ATUM  RALADO GOMES DA COSTA ÓLEO 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/9050c039-57a0-46e1-bd56-7d27a8b11f19.jpg	6.59	\N	S	0	Shopper	2022-04-17	22:40:55
8140	BETERRABA EM CUBOS BONDUELLE LATA 400G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/beterraba1.jpg	17.29	\N	S	0	Shopper	2022-04-17	22:40:56
8141	ERVILHA MUITO FINA FRESCA BONDUELLE "PETIT POIS" LATA 400G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/ervilha1.jpg	16.29	\N	S	0	Shopper	2022-04-17	22:40:56
8142	GRÃO DE BICO BONDUELLE LATA 400G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/565950.png	22.49	\N	S	0	Shopper	2022-04-17	22:40:57
8143	LENTILHA PREPARADA BONDUELLE LATA 400G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/lentilha1.jpg	17.99	\N	S	0	Shopper	2022-04-17	22:40:57
8144	MESCLA DE LEGUMES MACEDÔNIA BONDUELLE LATA 400G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/macedonia1.jpg	18.49	\N	S	0	Shopper	2022-04-17	22:40:58
8145	MILHO VERDE BONDUELLE LATA 150G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/a918023f-a6fa-499e-8941-d9d17c24eede.png	9.99	\N	S	0	Shopper	2022-04-17	22:40:58
8146	MILHO VERDE COZIDOS NO VAPOR BONDUELLE LATA 300G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/milho1.jpg	18.99	\N	S	0	Shopper	2022-04-17	22:40:58
8147	SELETA BONDUELLE EM CONSERVA SUAVE 200G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/9e416816-cd92-4bd6-a28f-e6c88679b62d.jpg	4.99	\N	S	0	Shopper	2022-04-17	22:40:59
8148	CEREJA EM CALDA PREDILECTA VIDRO 100G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/7cfdc427-b183-4ca4-ade2-9baaa04f6391.jpg	17.79	\N	S	0	Shopper	2022-04-17	22:40:59
8149	FIGO EM CALDA LATA PREDILECTA 400G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/47ac89b1-6f80-45a9-b83d-8d63c2779f95.jpg	18.99	\N	S	0	Shopper	2022-04-17	22:41:00
8150	PESSEGO EM CALDA PREDILECTA LATA 450G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/95c8aab9-edba-4dd0-8e3c-f6e5f1e991f3.jpg	17.79	\N	S	0	Shopper	2022-04-17	22:41:00
8151	ERVILHA PREDILECTA LATA 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/f79bdb2c-0485-4958-88cf-a30df13e4ebc.jpg	3.09	\N	S	0	Shopper	2022-04-17	22:41:00
8152	MILHO VERDE PREDILECTA LATA 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/5abce29f-9a08-441d-b28b-bd0fa203c9c7.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:41:01
8153	SELETA DE LEGUMES PREDILECTA LATA 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/12fdff7a-f68d-484f-a11d-dfc3ef10073f.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:41:01
8154	ATUM SÓLIDO COQUEIRO EM ÓLEO 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/eb63162e-73cd-42b0-9708-626447efff6f.jpg	10.19	\N	S	0	Shopper	2022-04-17	22:41:02
8155	FILÉ DE SARDINHA GOMES DA COSTA COM ÓLEO 125G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/02236441-acd2-4666-9d00-6082c6ae2a8d.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:41:02
8156	FILÉ DE SARDINHA GOMES DA COSTA EM ÓLEO COM PIMENTA 125G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/0cce1723-dd33-41a5-af05-54dd4c7f68c8.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:41:02
8157	SARDINHA GOMES DA COSTA COM ÓLEO 125G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/72d94ea4-a8c7-4f0b-817e-35b7b44ac38b.jpg	5.19	\N	S	0	Shopper	2022-04-17	22:41:03
8158	SARDINHA GOMES DA COSTA SABOR LIMÃO 125G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/1b9035bd-795c-40ab-9e19-1b28e52f5f22.jpg	5.19	\N	S	0	Shopper	2022-04-17	22:41:03
8159	AZEITONA PRETA RAIOLITA COM CAROÇO VIDRO 200G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/162.jpg	11.59	\N	S	0	Shopper	2022-04-17	22:41:04
8160	AZEITONA VERDE C/ CAROÇO BONDUELLE 320G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/azeitona1.jpg	14.59	\N	S	0	Shopper	2022-04-17	22:41:04
8161	ALCAPARRAS EM CONSERVA RIVOLI VIDRO 60G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/7118.png	9.49	\N	S	0	Shopper	2022-04-17	22:41:04
8162	AZEITONA  VERDE C/ CAROÇO GALLO 183G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/azeitona_com_caroco_gallo_5485.jpg	11.09	\N	S	0	Shopper	2022-04-17	22:41:05
8163	AZEITONA  VERDE GALLO FATIADA 150G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/azeitona_fatiadas_gallo_5485.jpg	12.59	\N	S	0	Shopper	2022-04-17	22:41:05
8164	ERVILHA FUGINI LATA 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/57740bbd-7f56-431d-a9c4-e754846df7b5.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:41:06
8165	ERVILHA FUGINI SACHE 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/ff58685e-653a-4d59-80d5-1c92fb51343f.jpg	3.09	\N	S	0	Shopper	2022-04-17	22:41:06
8166	MILHO VERDE AO VAPO FUGINI CROCANTE LATA 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/fuginimilho170g126.jpg	3.79	\N	S	0	Shopper	2022-04-17	22:41:06
8167	MILHO VERDE EM CONSERVA FUGINI SACHÊ 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/fd673e01-b34f-43b7-a587-0afec559e44b.jpg	3.19	\N	S	0	Shopper	2022-04-17	22:41:07
8168	MILHO VERDE KNORR LATA 170G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/milhoverdeknorr4135.jpg	3.39	\N	S	0	Shopper	2022-04-17	22:41:07
8169	PALMITO DE PUPUNHA PICADO GOLDEN PALM 300G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/GOLDENRECHEIO236.jpg	11.59	\N	S	0	Shopper	2022-04-17	22:41:08
8170	PALMITO DE PUPUNHA GOLDEN GRILL PRONTO PARA ASSAR 550G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/e5b2c3d4-270e-4818-8b50-a1c286488fa9.jpg	31.90	\N	S	0	Shopper	2022-04-17	22:41:08
8171	PALMITO DE PUPUNHA INTEIRO GOLDEN PALM 270G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/GOLDENINTEIRO236.jpg	17.99	\N	S	0	Shopper	2022-04-17	22:41:08
8172	PALMITO PUPUNHA BONDUELLE INTEIRO 300G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1454090715_RO5JDWdZsO1dPC96x932fu3mz5Zv0V.jpg	27.49	\N	S	0	Shopper	2022-04-17	22:41:09
8173	PALMITO INTEIRO TIO PACO 300G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1467404768_sxZ1ydd63MUP3I0YEF9O1W7Q6A39gQ.png	20.99	\N	S	0	Shopper	2022-04-17	22:41:09
8174	PALMITO PUPUNHA BONDUELLE SPAGUETTI 520G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/pal.jpg	27.49	\N	S	0	Shopper	2022-04-17	22:41:10
8175	SALSICHA VEGETAL SUPERBOM 400G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/salsichavegetal345.jpg	18.29	\N	S	0	Shopper	2022-04-17	22:41:10
8176	PICLES TIO PACO 200G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/PICLESEMCONSERVA258.jpg	5.19	\N	S	0	Shopper	2022-04-17	22:41:10
8177	TOMATE SECO TIO PACO 200G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/TOMATESECO465.jpg	22.99	\N	S	0	Shopper	2022-04-17	22:41:11
8178	CREME DE GERGELIM TAHINE JASMINE INTEGRAL 250G	\N	Alimentos	conservas e enlatados	\N	https://d2om08pcbtz1n1.cloudfront.net/tahinegergilim769.jpg	27.49	\N	S	0	Shopper	2022-04-17	22:41:11
8179	FARINHA ORIENTAL PARA EMPANAR PANKO KARUI 200G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/f6a18fc9-5804-45e5-9c18-7b45e18e9dbd.jpg	11.59	\N	S	0	Shopper	2022-04-17	22:41:17
8180	FARINHA TEMPURAKO KARUI 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/a9f5b28f-2a00-49cf-856c-ae89c7f4d2ac.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:41:18
8181	FARINHA DE ARROZ BLUE VILLE 1KG	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/FARINHADEARROZ154.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:41:18
8182	FARINHA DE MANDIOCA DEUSA BIJU 250G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/7007.png	3.99	\N	S	0	Shopper	2022-04-17	22:41:19
8183	FARINHA DE MANDIOCA DEUSA BIJU 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/7006.png	5.79	\N	S	0	Shopper	2022-04-17	22:41:19
8184	FARINHA DE MANDIOCA TEMPERADA DEUSA BIJU SABOR BACON 250G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/7010.png	3.79	\N	S	0	Shopper	2022-04-17	22:41:19
8185	FARINHA DE MANDIOCA TEMPERADA DEUSA BIJU SABOR PICANHA 250G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/7011.png	3.79	\N	S	0	Shopper	2022-04-17	22:41:20
8186	FARINHA DE MANDIOCA TEMPERADA DEUSA BIJU SABOR PICANHA COM PIMENTA 250G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/7012.png	3.79	\N	S	0	Shopper	2022-04-17	22:41:20
8187	FARINHA DE MANDIOCA TEMPERADA DEUSA BIJU TRADICIONAL 250G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/7009.png	3.79	\N	S	0	Shopper	2022-04-17	22:41:21
8188	FARINHA DE MILHO DEUSA BIJU 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/7013.png	3.29	\N	S	0	Shopper	2022-04-17	22:41:21
8189	FARINHA DE ROSCA DEUSA 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/7008.png	4.09	\N	S	0	Shopper	2022-04-17	22:41:21
8190	FAROFA TEMPERADA D'ALENA TRADICIONAL 400G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/DALENA_3339.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:41:22
8191	FAROFA TEMPERADA D'ALENA APIMENTADA 400G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/DALENA_3341.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:41:22
8192	FAROFA TEMPERADA D'ALENA VEGETARIANA 400G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/DALENA_3340.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:41:23
8193	FAROFA DA TERRINHA TRADICIONAL 400G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/farofaterrinhatradicional540g562.jpg	5.99	\N	S	0	Shopper	2022-04-17	22:41:23
8194	FAROFA TEMPERADA D'ALENA MILHARAL TRADICIONAL 400G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/DALENA_3985.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:41:23
8195	FAROFA DE MANDIOCA COM TEMPERO SUAVE YOKI 200G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/62c27c46-967f-41b8-9d8a-f005253e7c5e.jpg	4.59	\N	S	0	Shopper	2022-04-17	22:41:24
8196	FAROFA PRONTA DE MANDIOCA MINAS GOURMET COM ALHO FRITO 320G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/minasgourmetalho432_1.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:41:24
8197	FAROFA PRONTA DE MANDIOCA MINAS GOURMET TRADICIONAL 320G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/minasgourmetradic236.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:41:25
8198	FAROFA PRONTA YOKI TEMPERADA 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/552.jpg	5.59	\N	S	0	Shopper	2022-04-17	22:41:25
8199	FARINHA DE MANDIOCA BRANCA FINA SECA KICALDO 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/Kicaldo_farinha_de_mandioca_fina.jpg	3.09	\N	S	0	Shopper	2022-04-17	22:41:25
8200	FARINHA DE MANDIOCA BRANCA GROSSA SECA KICALDO 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/Kicaldo_farinha_de_mandioca_grossa.jpg	3.09	\N	S	0	Shopper	2022-04-17	22:41:26
8201	FAROFA PREMIUM APIMENTADA YOKI 380G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/fd1167d9-67a3-4b5a-b198-3607ee35fd8f.jpg	12.09	\N	S	0	Shopper	2022-04-17	22:41:26
8533	KETCHUP STRUMPF DEFUMADO 210G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/strumpfdefumado210g.jpg	13.99	\N	S	0	Shopper	2022-04-17	22:44:05
8202	FAROFA PREMIUM TRADICIONAL YOKI 380G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/e2023efb-5f1f-45de-b787-6ea0866ba420.jpg	12.09	\N	S	0	Shopper	2022-04-17	22:41:27
8203	FARINHA DE MANDIOCA YOKI BIJU 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/544.jpg	8.29	\N	S	0	Shopper	2022-04-17	22:41:27
8204	FARINHA DE MANDIOCA YOKI CRUA 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/1649.jpg	5.09	\N	S	0	Shopper	2022-04-17	22:41:27
8205	FARINHA DE MANDIOCA YOKI TORRADA 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/1482.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:41:28
8206	FARINHA DE TRIGO DONA BENTA RESERVA ESPECIAL 1KG	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/d04c5d2c-76b4-4b8b-a0d5-0a7ea7fc3c92.jpg	7.19	\N	S	0	Shopper	2022-04-17	22:41:28
8207	FARINHA DE TRIGO DONA BENTA TRADICIONAL 1KG	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/29582dd2-825f-4501-bcd0-4aa34e2275ac.jpg	5.69	\N	S	0	Shopper	2022-04-17	22:41:29
8208	FARINHA DE TRIGO DONA BENTA TRADICIONAL C/ FERMENTO 1KG	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/78204a3f-172b-493a-8a3e-791bf431cf02.jpg	6.79	\N	S	0	Shopper	2022-04-17	22:41:29
8209	FARINHA  DE TRIGO INTEGRAL DONA BENTA 1KG	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/173051c6-df0a-4cee-922e-4aff94c176c4.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:41:29
8210	FARINHA DE TRIGO ROSA BRANCA 1KG	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1438038948_5Dcb4uqUQs36V5897kEO6SP04Ewtg9.jpg	4.69	\N	S	0	Shopper	2022-04-17	22:41:30
8211	FARINHA DE TRIGO SOL TRADICIONAL 1KG	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/1c008e13-ba58-4a36-8786-967148ddbd3a.jpg	4.99	\N	S	0	Shopper	2022-04-17	22:41:30
8212	SÊMOLA DE GRANO DURO ITALIANA DIVELLA 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/c3d71a3a-1808-43bb-ac25-36234036f94f.jpg	12.19	\N	S	0	Shopper	2022-04-17	22:41:31
8213	FARINHA DE MILHO KIMILHO YOKI 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/a5507303-6592-4321-9834-3bfe6ba02536.jpg	3.99	\N	S	0	Shopper	2022-04-17	22:41:31
8214	FARINHA DE MILHO YOKI AMARELA 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/4858.jpg	5.29	\N	S	0	Shopper	2022-04-17	22:41:32
8215	FARINHA DE ROSCA YOKI 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/545.jpg	8.99	\N	S	0	Shopper	2022-04-17	22:41:32
8216	FUBÁ DE MILHO PRÉ-COZIDO YOKI 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/6c647da1-d4cb-4fc7-a559-85b03e6a0e29.jpg	4.19	\N	S	0	Shopper	2022-04-17	22:41:32
8217	FUBÁ MIMOSO YOKI 1KG	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/586.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:41:33
8218	POLENTA PRONTA YOKI 1KG	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/ca5be5d4-ef09-446d-836f-3a3c68fbcd6a.jpg	11.09	\N	S	0	Shopper	2022-04-17	22:41:33
8219	FARINHA DE MILHO FLOCÃO YOKI 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/5514.jpg	3.39	\N	S	0	Shopper	2022-04-17	22:41:34
8220	POLENTA INSTANTÂNEA PAGANINI 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/dc0f66fb-9fd6-4133-bb7c-d95720dfb089.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:41:34
8221	FARINHA COUSCOUS TIPIAK 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1459366241_NHFHMUwqJ9Zy0WcFBv4kvw9N0SZNFY.jpg	30.49	\N	S	0	Shopper	2022-04-17	22:41:34
8222	TRIGO PARA KIBE YOKI 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/1257.jpg	5.09	\N	S	0	Shopper	2022-04-17	22:41:35
8223	POLVILHO DOCE YOKI 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/1913.jpg	9.49	\N	S	0	Shopper	2022-04-17	22:41:35
8224	AMIDO DE MILHO MAIZENA 1KG	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/MAIZENAUMKG236.jpg	22.49	\N	S	0	Shopper	2022-04-17	22:41:36
8225	AMIDO DE MILHO MAIZENA 200G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/MAIZENADOISKG236.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:41:36
8226	FAROFA DE MANDIOCA D'GOIAS PICANTE 400G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/7caaf2bd-a075-4ed9-aa2e-1365fcca8c88.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:41:36
8227	FAROFA DE MANDIOCA D'GOIAS SOJA 400G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/4b6e9317-08f5-418f-9dee-9ce9b858f3bd.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:41:37
8228	FAROFA DE MANDIOCA D'GOIAS TORRESMO 300G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/8e10bac4-6a3a-4459-9b25-07441b2ee341.jpg	10.99	\N	S	0	Shopper	2022-04-17	22:41:37
8229	FAROFA DE MANDIOCA D'GOIAS TRADICIONAL 400G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/97d6d7e4-d7d4-436a-b4f4-64d7c810cd6a.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:41:38
8230	FARINHA MULTIUSO SEM GLÚTEN SCHAR 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/18bc4b35-3296-44df-9094-0d1e297549ce.jpg	17.99	\N	S	0	Shopper	2022-04-17	22:41:38
8231	FARINHA ESPECIAL URBANO 1KG	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/a6c05e59-fac5-424b-9ccb-7dd3f473b55b.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:41:38
8232	COUSCOUS ITALIANO LA PASTINA 500G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/251a3ce6-1463-4850-91ee-ae0f579bd06b.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:41:39
8233	FARINHA DE TRIGO INTEGRAL ORGÂNICA VIAPAX 400G	\N	Alimentos	farinhas e farofas	\N	https://d2om08pcbtz1n1.cloudfront.net/TRIGOINTEGRAL258.jpg	10.99	\N	S	0	Shopper	2022-04-17	22:41:39
8234	CHOCOLATE EM CALLETS AMARGO 70,5% CALLEBAUT 400G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/29236e22-63a7-4df6-8992-d7137d3b42ab.jpg	43.90	\N	S	0	Shopper	2022-04-17	22:41:47
8235	CHOCOLATE EM GOTAS AMARGO Nº 811 CALLEBAUT 400G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/28b18af9-762d-4a68-b773-51c0fde56860.jpg	57.90	\N	S	0	Shopper	2022-04-17	22:41:48
8236	FLOCOS DE CHOCOLATE AO LEITE 9M CALLEBAUT 1KG	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/7b85319a-fc7f-4f0a-9744-176e873c207d.jpg	114.90	\N	S	0	Shopper	2022-04-17	22:41:48
8237	FARINHA ORIENTAL PARA EMPANAR PANKO KARUI 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/f6a18fc9-5804-45e5-9c18-7b45e18e9dbd.jpg	11.59	\N	S	0	Shopper	2022-04-17	22:41:49
8238	AMIDO DE MILHO MAIZENA 1KG	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/MAIZENAUMKG236.jpg	22.49	\N	S	0	Shopper	2022-04-17	22:41:49
8239	AMIDO DE MILHO MAIZENA 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/MAIZENADOISKG236.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:41:49
8240	COCO RALADO FINO PURO COPRA SEM SACAROSE 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/copracocoralado100gsac2e.jpg	4.79	\N	S	0	Shopper	2022-04-17	22:41:50
8241	COCO RALADO FINO UMIDO COPRA ADOÇADO 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/copracocoadocado100g2165.jpg	4.19	\N	S	0	Shopper	2022-04-17	22:41:50
8242	COCO RALADO FLOCADO UMIDO ADOÇADO COPRA 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/c007b431-9127-41c4-9005-a81da492ca96.jpg	5.49	\N	S	0	Shopper	2022-04-17	22:41:51
8243	QUEIJO RALADO QUATÁ PARMESÃO 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/quata_ralado_100g_7562.jpg	10.48	\N	S	0	Shopper	2022-04-17	22:41:51
8244	QUEIJO RALADO QUATÁ PARMESÃO 50G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/QUATACINQUENTA463.jpg	5.69	\N	S	0	Shopper	2022-04-17	22:41:51
8245	QUEIJO PARMESÃO RALADO FRESCO VIGOR 150G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/39a2d94e-9640-453b-99d8-11cc347d11ec.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:41:52
8246	QUEIJO RALADO VIGOR 3 QUEIJOS 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/quejoralado3vigor12365.jpg	11.29	\N	S	0	Shopper	2022-04-17	22:41:52
8247	TEMPERO GOLDEN CURRY FORTE KARAKUCHI 92G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/7701d22b-6c2a-4884-a810-09208350fb03.jpg	29.49	\N	S	0	Shopper	2022-04-17	22:41:53
8248	TEMPERO GOLDEN CURRY MÉDIO CHU-KARA 220G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/694b7d8d-2088-4533-9814-f525ca0221ad.jpg	50.90	\N	S	0	Shopper	2022-04-17	22:41:53
8249	MOLHO DE GERGELIM KIKKOMAN 240ML	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/fb0e7e35-5e3f-4f9b-b880-7c548736db47.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:41:53
8250	MOLHO SWEET CHILLI KIKKOMAN 180ML	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/d50bafca-754b-4702-ac15-0ac392972e30.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:41:54
8251	COGUMELO SHITAKE DESIDRATADO KARUI 30G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/06c07215-1474-4601-ab31-d796cfca96e2.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:41:54
8252	GENGIBRE EM CONSERVA GARI GARI FATIAS FINAS KARUI 150G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/42e434a6-d79b-463c-8c30-9a35eaa52017.jpg	28.49	\N	S	0	Shopper	2022-04-17	22:41:55
8253	NORI KARUI C/ 10UN	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/eddce0e1-d701-4e33-abc4-d527bc96e346.jpg	22.49	\N	S	0	Shopper	2022-04-17	22:41:55
8254	OLEO DE GERGELIM CRU KARUI 100ML	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/4e2c2ede-6965-4d8d-8e6c-8450859d9012.jpg	19.79	\N	S	0	Shopper	2022-04-17	22:41:56
8255	CEBOLA CRISPY HEMMER 150G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/0551f91a-a8d7-4846-bd10-4951fd6b1522.jpg	24.49	\N	S	0	Shopper	2022-04-17	22:41:56
8256	MOLHO DE SOJA SEM ACUCARES KIKKOMAN 150ML	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/49d5b3da-9e8d-45ac-a678-0e74234aee42.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:41:56
8257	MOLHO DE SOJA SEM ACUCARES KIKKOMAN 500ML	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/fa3dd7cd-8b92-44f0-8bb7-02095e7b0815.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:41:57
8258	MOLHO SHOYU KIKKOMAN 150ML	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/d8459948-476d-4861-be6d-0633e305195f.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:41:57
8259	MOLHO SHOYU KIKKOMAN 1L	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/cd822bc9-1c59-454f-8515-a7daac4e2cbd.jpg	35.90	\N	S	0	Shopper	2022-04-17	22:41:58
8260	CAPONATA DE BERINJELA AMADDRE 180G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/f0f51a5a-c5a4-4145-8459-5830aef02cae.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:41:58
8261	TAPENADE DE AZEITONA AMADDRE 180G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/a91bd380-e2db-457d-afe4-99607ad472c3.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:41:58
8262	TOMATE CONFIT AMADDRE 180G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/9e3640d3-1859-4d7c-b5ea-c0c628a74e8c.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:41:59
8263	FARINHA DE CASTANHA DE CAJU ZAYA 500G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/64a89931-a8ba-430d-ba0e-cda077a955b7.jpg	50.90	\N	S	0	Shopper	2022-04-17	22:41:59
8264	FARINHA DE MANDIOCA ZAYA 1KG	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/cd8d8fe7-21be-477e-b5ec-a2f967af8e4e.jpg	25.49	\N	S	0	Shopper	2022-04-17	22:42:00
8265	FARINHA DE MANDIOCA ZAYA 500G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/6d887f5e-992a-4a8a-908d-4b86ea71b2f6.jpg	16.49	\N	S	0	Shopper	2022-04-17	22:42:00
8266	MISTURA PARA PÃO SEM GLUTEN ZAYA 335G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/df2c0b65-5952-4033-9cbd-0ffe7f5ab1d2.jpg	19.79	\N	S	0	Shopper	2022-04-17	22:42:00
8267	MIX PARA BOLO DE FUBÁ ZAYA 490G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/6764454b-dde0-432b-a991-98e9117738ca.jpg	40.90	\N	S	0	Shopper	2022-04-17	22:42:01
8268	MIX PARA BOLO TIPO BROWNIE ZAYA 576G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/97015a57-1de7-4eac-b2cc-1c42e3cf40f1.jpg	40.90	\N	S	0	Shopper	2022-04-17	22:42:01
8269	MIX PARA PÃO DE FORMA COM SEMENTES ZAYA 358G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/29f211f8-48c9-4ae1-bcfa-c6759abf5a3d.jpg	24.99	\N	S	0	Shopper	2022-04-17	22:42:02
8270	PÃOZINHO DAS GALÁXIAS ZAYA 282G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/ef2928d3-10d2-4c4e-bab4-d5131945c48a.jpg	40.90	\N	S	0	Shopper	2022-04-17	22:42:02
8271	LEITE CONDENSADO DESNATADO PIRACANJUBA LIGHT 395G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/Piracanjuba_3904.jpg	7.29	\N	S	0	Shopper	2022-04-17	22:42:02
8272	LEITE CONDENSADO DESNATADO MOÇA LIGHT 410G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/leite_condensado_moca_light_410g_7562.jpg	8.99	\N	S	0	Shopper	2022-04-17	22:42:03
8273	LEITE CONDENSADO INTEGRAL MOÇA NESTLÉ LATA 395G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/leite_condensado_moca_395g_7562.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:42:03
8274	LEITE CONDENSADO SEMIDESNATADO MOÇA NESTLÉ CAIXA 395G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/2639.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:42:04
8275	LEITE CONDENSADO SEMIDESNATADO ITALAC 395G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/ITALAC_687.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:42:04
8277	LEITE CONDENSADO SEMIDESNATADO PIRACANJUBA 395G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/Piracanjuba_2177.jpg	6.09	\N	S	0	Shopper	2022-04-17	22:42:05
8278	LEITE CONDENSADO PIRACANJUBA ZERO LACTOSE 395G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/Piracanjuba_690.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:42:05
8279	LEITE CONDENSADO VITAO ZERO AÇÚCAR 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/40de6f0b-479d-488e-b979-62bc5f101a21.jpg	15.29	\N	S	0	Shopper	2022-04-17	22:42:06
8280	CREME DE LEITE GOURMET PIRACANJUBA 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/PIRACANJUBA_1445.jpg	4.69	\N	S	0	Shopper	2022-04-17	22:42:06
8281	CREME DE LEITE PIRACANJUBA 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/65d658fb-8ea1-4e2a-8215-fc855182e883.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:42:06
8282	CREME DE LEITE NESTLÉ LATA 300G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/435.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:42:07
8283	CREME DE LEITE ITAMBÉ LATA 300G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/SHOP473.jpg	6.09	\N	S	0	Shopper	2022-04-17	22:42:07
8284	CREME DE LEITE LEVISSÍMO NESTLÉ 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/79cd45db-c355-4ff1-9433-dc1e5e6f098d.jpg	4.19	\N	S	0	Shopper	2022-04-17	22:42:08
8285	CREME DE LEITE NESTLÉ 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/434.jpg	4.09	\N	S	0	Shopper	2022-04-17	22:42:08
8286	CREME DE LEITE ITALAC CAIXA 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/ITALAC_431.jpg	3.99	\N	S	0	Shopper	2022-04-17	22:42:08
8287	CREME DE LEITE ITALAC ZERO LACTOSE 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/5814f19e-0d6f-412c-8444-a4ad417b51ef.jpg	4.19	\N	S	0	Shopper	2022-04-17	22:42:09
8288	CREME DE LEITE PIRACANJUBA SEM LACTOSE 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/Piracanjuba_1424.jpg	4.19	\N	S	0	Shopper	2022-04-17	22:42:09
8289	CACAU EM PÓ NESTLÉ DOIS FRADES 50% CACAU 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/79e3fb69-ec50-4e98-b63f-66b8cc0fc6d6.jpg	16.29	\N	S	0	Shopper	2022-04-17	22:42:10
8290	ESSÊNCIA DE BAUNILHA DR.OETKER 30ML	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/baunilhadroetkeraroma30ml887.jpg	7.99	\N	S	0	Shopper	2022-04-17	22:42:10
8291	EXTRATO NATURAL DE BAUNILHA BOMBAY VIDRO 30ML	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/80edf2f2-9b32-4d6d-8efe-b7950aecfe63.jpg	42.90	\N	S	0	Shopper	2022-04-17	22:42:10
8292	FERMENTO BIOLÓGICO DR.OETKER SECO INSTANTÂNEO 10G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/fermento_royal_seco_instantaneo_10g__4521.jpg	1.69	\N	S	0	Shopper	2022-04-17	22:42:11
8293	FERMENTO EM PÓ DR.OETKER 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/droetkerfermentopo100g547.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:42:11
8294	CREME DE LEITE BATE CHANTILLY PIRACANJUBA CAIXA 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/PIRACANJUBA_3917.jpg	5.09	\N	S	0	Shopper	2022-04-17	22:42:12
8295	CREME TIPO CHANTILLY DR. OETKER 200ML	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/creme_de_chantilly_dr_oetker_200m_4521.jpg	6.99	\N	S	0	Shopper	2022-04-17	22:42:12
8296	FERMENTO PÓ ROYAL 250G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/cac0c5b9-73fe-4797-9172-c0a0cf7e10a7.jpg	7.69	\N	S	0	Shopper	2022-04-17	22:42:12
8297	FERMENTO PÓ ROYAL 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/048eaed6-a413-460e-b7c6-9967a2306c9c.jpg	3.09	\N	S	0	Shopper	2022-04-17	22:42:13
8298	FERMENTO PÓ DONA BENTA TRADIÇÃO 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/aa2b1b12-35af-4667-a084-902a7732da36.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:42:13
8299	BATATA PALHA EXTRA FINA YOKI 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/batata_palha_extra_fina_yoki_485.jpg	6.49	\N	S	0	Shopper	2022-04-17	22:42:14
8300	BATATA PALHA EXTRA FINA CEBOLA E SALSA YOKI 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/f79599c8-9be0-4e03-ad64-ddc2d44b8039.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:42:14
8301	BATATA PALHA EXTRA FINA PARMESÃO YOKI 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/848387a1-bce7-46b3-bef7-2afd5dbc2294.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:42:15
8302	BATATA PALHA TRADICIONAL YOKI 105G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/batata_palha_tradicional_yoki_485.jpg	6.59	\N	S	0	Shopper	2022-04-17	22:42:15
8303	BATATA PALHA ELMA CHIPS EXTRA FINA 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/1864bat.jpg	7.29	\N	S	0	Shopper	2022-04-17	22:42:15
8304	BATATA PALHA TRADICIONAL ELMA CHIPS 110G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/bata_palha_elma_chips_110g_85.jpg	6.39	\N	S	0	Shopper	2022-04-17	22:42:16
8305	BATATA PALHA TRADICIONAL ELMA CHIPS 215G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/7b0f132f-e6f0-4469-a041-aa53735cd082.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:42:16
8306	BATATA PALHA TRADICIONAL ELMA CHIPS 425G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/766c94f7-597a-4543-991f-ade7833a6d33.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:42:17
8307	COCO RALADO SOCÔCO SWEET COCO 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/sweetcocosococo349.jpg	5.09	\N	S	0	Shopper	2022-04-17	22:42:17
8308	COCO EM FLOCOS FLOCOCO SOCÔCO 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/flococosococo0932.jpg	6.59	\N	S	0	Shopper	2022-04-17	22:42:17
8309	COCO EM FLOCOS FLOCOCO SWEET SOCÔCO 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/sococosweetfloco209.jpg	5.09	\N	S	0	Shopper	2022-04-17	22:42:18
8310	LEITE DE COCO SOCÔCO VIDRO 200ML	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/SHOP739.jpg	5.39	\N	S	0	Shopper	2022-04-17	22:42:18
8311	LEITE DE COCO COPRA 200ML	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/leitedecococopra200ml125.jpg	4.19	\N	S	0	Shopper	2022-04-17	22:42:19
8312	LEITE DE COCO SOCÔCO LIGHT VIDRO 200ML	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/CT606.jpg	6.09	\N	S	0	Shopper	2022-04-17	22:42:19
8313	COMINHO GRÃOS BOMBAY POUCH 20G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/d897ab3c-7d5a-41aa-a2b4-6a27c11d9cae.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:42:19
8314	GENGIBRE PO BOMBAY POUCH 30G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/e70ae16b-4b1b-4a38-b431-ecded54c26d1.jpg	8.99	\N	S	0	Shopper	2022-04-17	22:42:20
8315	LEMON PEPPER BOMBAY 40G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/3cf20245-0eab-4406-93d9-68665698869b.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:42:20
8316	PIMENTA CALABRESA EM PÓ BOMBAY SACHÊ 15G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/527c63c1-9a79-4778-b8ba-3995c0c74ff9.jpg	8.89	\N	S	0	Shopper	2022-04-17	22:42:21
8317	ALHO PICADO KAMAR POTE 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/b3abeb46-12d2-484e-876a-f36fc34af3ef.jpg	3.79	\N	S	0	Shopper	2022-04-17	22:42:21
8318	MIX DE GRÃOS E SEMENTES PARA SALADAS E SOPAS COM ALHO-PORÓ MAGGI DA HORTA 150G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/61057189-a18e-4a0e-aaaa-8a307d947ac5.jpg	12.59	\N	S	0	Shopper	2022-04-17	22:42:21
8319	MIX DE GRÃOS E SEMENTES PARA SALADAS E SOPAS COM CEBOLA MAGGI DA HORTA 150G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/232c977a-4131-4862-aebf-96d8492cf767.jpg	12.59	\N	S	0	Shopper	2022-04-17	22:42:22
8320	MIX DE ESPECIARIAS E ERVAS FINAS PARA AVES MAGGI DA HORTA VIDRO 47G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/045c77e6-1564-4141-8483-247ece77084c.jpg	13.59	\N	S	0	Shopper	2022-04-17	22:42:22
8321	VINHO BRANCO BRASILEIRO CHALISE SERRA GAÚCHA 750ML	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/7002.png	12.59	\N	S	0	Shopper	2022-04-17	22:42:23
8322	FERMENTO BIOLÓGICO SECO INSTANTÂNEO FLEISCHMANN 10G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/fermento_fleischmann_10g_4521.jpg	1.89	\N	S	0	Shopper	2022-04-17	22:42:23
8323	AÇAFRÃO DA TERRA EM PÓ KITANO 50G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/kitanoacaofraodaterra128.jpg	9.19	\N	S	0	Shopper	2022-04-17	22:42:23
8324	BICARBONATO DE SÓDIO EM PÓ KITANO 30G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/kitanobicarbonatosodio80g1684.jpg	1.79	\N	S	0	Shopper	2022-04-17	22:42:24
8325	BICARBONATO DE SÓDIO EM PÓ KITANO 80G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/6f90ee3d-926a-4b1b-98a2-f752018afcee.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:42:24
8326	CANELA EM PÓ KITANO 50G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/1a9cf67d-f5b3-4246-991d-8a31249215b0.jpg	5.69	\N	S	0	Shopper	2022-04-17	22:42:25
8327	COLORIFICO EM PÓ KITANO 80G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/kitanocolorifico80g165.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:42:25
8328	CRAVO KITANO 8G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/kitanocravodaindia8g125.jpg	4.59	\N	S	0	Shopper	2022-04-17	22:42:25
8329	ERVA DOCE KITANO 40G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/ervadocekitano8g215.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:42:26
8330	PIMENTA E COMINHO EM PÓ KITANO 70G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/kitanopimentacminho70g435.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:42:26
8331	CACAU EM PÓ DR.OETKER 100% CACAU 150G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/drotkercacausoluvel888.jpg	13.59	\N	S	0	Shopper	2022-04-17	22:42:27
8332	OVOS BRANCOS C/ 30UN	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/2499_1.jpg	22.99	\N	S	0	Shopper	2022-04-17	22:42:27
8333	OVOS BRANCOS C/ 60UN	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/919.jpg	36.68	\N	S	0	Shopper	2022-04-17	22:42:27
8334	OVO BRANCO C/6	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/0b8ce6d3-9bd9-4429-a5a6-fc7b8f275bc4.jpg	4.99	\N	S	0	Shopper	2022-04-17	22:42:28
8335	OVOS BRANCOS C/ 12UN	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/920.jpg	9.39	\N	S	0	Shopper	2022-04-17	22:42:28
8336	OVOS CAIPIRAS C/ 10UN	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/921.jpg	12.39	\N	S	0	Shopper	2022-04-17	22:42:29
8337	CREME COM AMENDOAS ALMOND BREEZE 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/03bec950-b5cd-4b3d-b90b-b69785f2ead1.jpg	7.29	\N	S	0	Shopper	2022-04-17	22:42:29
8338	MISSÔ MASSA FERMENTADA DE ARROZ E SOJA AZUMA POTE 500G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/MISSO12195.jpg	12.79	\N	S	0	Shopper	2022-04-17	22:42:29
8339	OVOS DE CODORNA C/ 30UN	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/7425.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:42:30
8340	FERMENTO EM PÓ QUÍMICO FLEISCHMANN 100G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/FERMENTO_EM_PO_QUIMICO_FLEISCHMANN_100G.jpg	3.39	\N	S	0	Shopper	2022-04-17	22:42:30
8341	CHOCOLATE EM PÓ SOLUVEL 32% FLEISCHMANN 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/1acab20a-fc7e-44e5-aa90-fae566185d96.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:42:31
8342	TEMPERO FIT COMPLETO BR SPICES POTE 50G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/71007a1b-8b20-4741-ba7b-9001baaa206e.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:42:31
8343	VINHO BRANCO BRASILEIRO SECO CAMPO LARGO 750ML	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/campolargovinhobs7852.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:42:31
8344	ALHO FRITO CROCANTE AKIO 50G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/1a668d10-6bbf-4b2f-9528-f9f5fe40a4da.jpg	4.19	\N	S	0	Shopper	2022-04-17	22:42:32
8345	ALHO PURO TRITURADO AKIO 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/b2871928-e37c-4c81-acaf-8af93fc0a914.jpg	6.09	\N	S	0	Shopper	2022-04-17	22:42:32
8346	FUNGHI PORCINI SECCHI LA PASTINA 10G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/3c56f169-bd34-4eae-a88d-c5280e16dfcb.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:42:33
8347	CREME CHANTILLY SPRAY POLENGHI 250G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/5a075085-705c-415a-84da-57836d4d721f.jpg	27.99	\N	S	0	Shopper	2022-04-17	22:42:33
8348	ADOÇANTE FORNO E FOGÃO LINEA 70G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/fornoefogaolinea70g345.jpg	17.99	\N	S	0	Shopper	2022-04-17	22:42:34
8349	CREME DE LEITE VEGANO NOMOO 300ML	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/9e79e292-fc81-43ed-bf36-216087035ea5.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:42:34
8350	CHOCOLATE EM PÓ DR.OETKER 200G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/decoracaodroetkerempo200g223.jpg	9.79	\N	S	0	Shopper	2022-04-17	22:42:34
8351	CHOCOLATE GRANULADO DR.OETKER 130G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/GRANULADODROETKER145.jpg	5.49	\N	S	0	Shopper	2022-04-17	22:42:35
8352	CONFEITO DE CHOCOLATE DR.OETKER BOLA 80G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/GRANULADOBOLADROETKER145.jpg	8.29	\N	S	0	Shopper	2022-04-17	22:42:35
8353	CONFEITOS SORTIDOS DR. OETKER 87G 1UN	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/GRANULADOSORTIDDROETKER145.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:42:36
8354	TAPIOCA GRANULADA AKIO 500G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/11373TAPIOCA.jpg	8.69	\N	S	0	Shopper	2022-04-17	22:42:36
8355	ADOÇANTE FORNO E FOGÃO LOWÇUCAR 95G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/lowcucarfornoefogao748.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:42:36
8356	CARNE SECA JERKED BEEF MINERVA 400G	\N	Alimentos	ingredientes culinarios	\N	https://d2om08pcbtz1n1.cloudfront.net/d30fcbe8-36e8-42c4-991f-01cc167b1dff.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:42:37
8357	MOLHO DE TOMATE ITALIANO FASANO PUTANESCA 180G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/efd52d94-e8c4-4858-9a15-428f456a25e6.jpg	50.29	\N	S	0	Shopper	2022-04-17	22:42:46
8358	BRUSCHETTA LA PASTINA TOMATE SECO 140G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/a3f2ad15-00b7-4ad5-b9a2-7ef214dd36be.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:42:46
8359	MOLHO DE TOMATE POMODORI IT DIVELLA PELATI 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/ee4a2cf5-3fdc-4744-8485-110b25745f96.jpg	10.29	\N	S	0	Shopper	2022-04-17	22:42:47
8360	MACARRÃO  ITALIANO BARILLA FARFALLE 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/818.jpg	13.69	\N	S	0	Shopper	2022-04-17	22:42:47
8361	MACARRÃO  ITALIANO BARILLA FUSILLI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/819.jpg	13.69	\N	S	0	Shopper	2022-04-17	22:42:48
8362	MACARRÃO  ITALIANO BARILLA PENNE RIGATE 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/821.jpg	13.69	\N	S	0	Shopper	2022-04-17	22:42:48
8363	MACARRÃO  ITALIANO BARILLA SPAGHETTI Nº5 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/822.jpg	12.09	\N	S	0	Shopper	2022-04-17	22:42:49
8364	MACARRÃO  ITALIANO BARILLA SPAGHETTONI Nº7 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/823.jpg	12.09	\N	S	0	Shopper	2022-04-17	22:42:49
8365	MOLHO DE TOMATE BARILLA BASÍLICO 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/571eef0d-f2f0-42eb-90e4-9eef569699ed.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:42:49
8366	MOLHO DE TOMATE BARILLA NAPOLETANA 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/barillanapoletana500g541.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:42:50
8367	MOLHO DE TOMATE BARILLA OLIVE 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/barillaolive500gg54655.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:42:50
8368	MOLHO PESTO BARILLA ALLA GENOVESE 190G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/barillagenovesepeste65468.jpg	30.49	\N	S	0	Shopper	2022-04-17	22:42:51
8369	MOLHO DE TOMATE ITALIANO FASANO ARRABBIATA 180G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/8c9639cc-cff8-4ebd-8384-a83b7bf64d56.jpg	50.29	\N	S	0	Shopper	2022-04-17	22:42:51
8370	MOLHO DE TOMATE ITALIANO FASANO CLÁSSICO 180G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/205e5be6-1b99-4ffd-b877-67cc190ab8a3.jpg	50.29	\N	S	0	Shopper	2022-04-17	22:42:51
8371	MOLHO DE TOMATE ITALIANO LA PASTINA BASÍLICO 320G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/f9a498eb-a909-4aeb-a7b0-d38743f5b1b7.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:42:52
8372	MOLHO DE TOMATE PASSATA LA PASTINA 680G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/6861e3a7-350b-4f22-aac5-be7628365e81.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:42:52
8373	MOLHO DE TOMATE PASSATA RÚSTICA LA PASTINA COM MANJERICÃO 680G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/LAPASTINAMANJERICAO456.jpg	19.29	\N	S	0	Shopper	2022-04-17	22:42:53
8374	PASSATA ITALIANA DIVELLA 680G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/6167b8c0-52b7-4840-9548-ac2f66a96e6f.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:42:53
8375	MOLHO DE TOMATE PENEIRADO POMAROLA TRADICIONAL 520G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1438805437_05FBmu8GP42dHR17Ai3stESFWS6KRr.jpg	5.49	\N	S	0	Shopper	2022-04-17	22:42:53
8376	MOLHO DE TOMATE POMAROLA COM MANJERICÃO SACHÊ 300G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/de585486-5ede-47a7-b2a2-36e7fb08fe5b.jpg	4.19	\N	S	0	Shopper	2022-04-17	22:42:54
8377	MOLHO DE TOMATE POMAROLA TRADICIONAL 320G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/5bbc8a8c-57f8-4caf-8b8a-4f175f2422d3.jpg	2.39	\N	S	0	Shopper	2022-04-17	22:42:54
8378	MOLHO DE TOMATE POMAROLA TRADICIONAL LATA 340G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1439058391_8a4u2Qj052y1WmNuD9UTBt26yo7YMp.jpg	4.99	\N	S	0	Shopper	2022-04-17	22:42:55
8379	MOLHO DE TOMATE POMAROLA TRADICIONAL SACHÊ 520G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/f02ab8de-56e9-424f-9384-659b9d8f6d6c.jpg	3.59	\N	S	0	Shopper	2022-04-17	22:42:55
8380	MOLHO DE TOMATE SALSARETTI TRADICIONAL SACHÊ 300G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/b9333b3d-09d3-4503-9078-d7372f961dad.png	2.09	\N	S	0	Shopper	2022-04-17	22:42:55
8381	MOLHO DE TOMATE SALSARETTI BASÍLICO 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/1772.jpg	11.59	\N	S	0	Shopper	2022-04-17	22:42:56
8382	MOLHO DE TOMATE SALSARETTI CLÁSSICO 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/1771.jpg	11.59	\N	S	0	Shopper	2022-04-17	22:42:56
8383	MOLHO DE TOMATE SALSARETTI OLIVA 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/1773.jpg	11.59	\N	S	0	Shopper	2022-04-17	22:42:57
8384	TOMATE INTEIRO PELADO RAIOLA ITALIANO 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/raiola.jpg	9.49	\N	S	0	Shopper	2022-04-17	22:42:57
8385	TOMATE ITALIANO PELADO MUTTI 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/jajaja.jpg	12.59	\N	S	0	Shopper	2022-04-17	22:42:57
8386	TOMATE ITALIANO PELADO MUTTI EM CUBOS 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/tomateee.jpg	13.69	\N	S	0	Shopper	2022-04-17	22:42:58
8387	TOMATE PELADO ITALIANO LA PASTINA 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/badbcb80-2a6a-4a4b-9fd4-7636b30e2420.jpg	9.79	\N	S	0	Shopper	2022-04-17	22:42:58
8388	TOMATE PELADO ITALIANO LA PASTINA EM CUBOS 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/295ee10c-100e-4528-a977-451d4298106f.jpg	9.79	\N	S	0	Shopper	2022-04-17	22:42:59
8389	TOMATE PELADO POMAROLA 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/tomate_pelado_novo_ApvhGCi.png	7.39	\N	S	0	Shopper	2022-04-17	22:42:59
8390	MACARRÃO DE MILHO FUSILLI TIVVA ORIGINAL 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/10191.jpg	9.29	\N	S	0	Shopper	2022-04-17	22:42:59
8391	MACARRÃO DE MILHO SEM GLÚTEN TIVVA PENNE COM LINHAÇA 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/10194.jpg	9.29	\N	S	0	Shopper	2022-04-17	22:43:00
8392	EXTRATO DE TOMATE ELEFANTE 310G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/6a157df8-f8fd-41a8-af66-346db66717bb.jpg	5.89	\N	S	0	Shopper	2022-04-17	22:43:00
8393	EXTRATO DE TOMATE ELEFANTE CAIXA 140G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/c8edc9ca-191a-498a-a7cd-b3feddb06583.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:43:01
8394	EXTRATO DE TOMATE QUERO 340G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/03bb355f-70fe-487b-9666-53ec92fa8d20.jpg	2.59	\N	S	0	Shopper	2022-04-17	22:43:01
8395	EXTRATO DE TOMATE QUERO LATA 350G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/3cef62f6-ce03-412e-b709-f2a02d4f7451.jpg	3.59	\N	S	0	Shopper	2022-04-17	22:43:01
8396	MOLHO BOLONHESA HEINZ SACHÊ 340G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/8a1d3b99-25c8-405d-93b5-93a9fe68e353.jpg	4.59	\N	S	0	Shopper	2022-04-17	22:43:02
8397	MOLHO DE TOMATE FUGINI TRADICIONAL 300G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/98a70b92-010e-4bd1-95e5-9c0d267f18fa.png	1.89	\N	S	0	Shopper	2022-04-17	22:43:02
8398	MOLHO DE TOMATE HEINZ TRADICIONAL 340G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/heinzmolhotomate58.jpg	2.69	\N	S	0	Shopper	2022-04-17	22:43:03
8399	POLPA DE TOMATE CICA POMODORO 520G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/cica32433.jpg	4.99	\N	S	0	Shopper	2022-04-17	22:43:03
8400	POLPA DE TOMATE QUERO CAIXA 520G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/a52c9c28-679b-4890-b786-05b438bce82c.jpg	3.99	\N	S	0	Shopper	2022-04-17	22:43:03
8401	MACARRÃO  ITALIANO BARILLA CAPELLINI N°1 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/824.jpg	12.09	\N	S	0	Shopper	2022-04-17	22:43:04
8402	MACARRÃO  ITALIANO BARILLA BAVETTE Nº13 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/817.jpg	12.09	\N	S	0	Shopper	2022-04-17	22:43:04
8403	MACARRÃO  ITALIANO BARILLA COLLEZIONE FETTUCCINE 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/1965.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:43:05
8404	MACARRÃO  ITALIANO BARILLA SPAGHETTINI Nº3 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/1765.jpg	12.09	\N	S	0	Shopper	2022-04-17	22:43:05
8405	MACARRÃO COM OVOS BARILLA AVE MARIA 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/barillaavemariaovos51456.jpg	5.29	\N	S	0	Shopper	2022-04-17	22:43:05
8406	MACARRÃO COM OVOS BARILLA CABELO DE ANJO 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/1657.jpg	6.89	\N	S	0	Shopper	2022-04-17	22:43:06
8407	MACARRÃO COM OVOS BARILLA FETTUCCINE 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/2250.jpg	6.89	\N	S	0	Shopper	2022-04-17	22:43:06
8408	MACARRÃO COM OVOS BARILLA PAI NOSSO 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/barillapainossoovos500g.jpg	5.29	\N	S	0	Shopper	2022-04-17	22:43:07
8409	MACARRÃO ITALIANO BARILLA PICCOLINI MINI FARFALLE 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/825.jpg	13.69	\N	S	0	Shopper	2022-04-17	22:43:07
8410	MASSA PARA LASANHA COM OVOS BARILLA 200G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/barillalasanhaovos200g1456.jpg	5.29	\N	S	0	Shopper	2022-04-17	22:43:08
8411	MACARRÃO SEM GLÚTEN PENNE RIGATE BARILLA 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/3031.jpg	18.79	\N	S	0	Shopper	2022-04-17	22:43:08
8412	TOMATE PELADO NOR FOODS 240G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/273a4f19-f67c-4c4b-b600-10151b46bda6.jpg	8.59	\N	S	0	Shopper	2022-04-17	22:43:08
8413	MACARRÃO ITALIANO SEM GLÚTEN DIVELLA SPAGHETTI 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/SPAGHETTISEMGLUTEN258.jpg	18.49	\N	S	0	Shopper	2022-04-17	22:43:09
8414	MACARRÃO DE SÊMOLA SPIRALI FUSILLI PAGANINI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/0361f9bd-9676-416b-9bf0-2345e54a90af.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:43:09
8415	MACARRÃO ESPAÇO BAMBINI PAGANINI 200G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/ef4eddd5-a753-44b9-b05d-a634a324f71e.jpg	11.99	\N	S	0	Shopper	2022-04-17	22:43:10
8416	MACARRÃO FARFALLONI PAGANINI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/dd49a664-5486-4a4a-8dbe-644f6aa4acf8.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:43:10
8417	MACARRÃO FUSILLI TRICOLOR PAGANINI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/deaea45f-aebc-4c18-8301-47bd4f132755.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:43:10
8418	MACARRÃO PENNE RIGATE PAGANINI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/1aab9fa9-7dea-4846-a117-efec0247e89d.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:43:11
8419	MACARRÃO PENNINE RIGATE PAGANINI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/1e5e3ad7-fd5d-43df-9168-71adb69578d6.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:43:11
8420	MACARRÃO PENNONI PAGANINI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/ec82f426-8515-4a15-885b-b06ae2c8d69a.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:43:12
8421	MACARRÃO RIGATONI PAGANINI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/185aa7e8-1d08-4d4f-91be-353ca27a1d15.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:43:12
8422	MACARRÃO SPAGHETTI PAGANINI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/30ebee62-e08e-4239-892c-22924005b342.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:43:12
8423	MACARRÃO TAGLIATELLE NIDI PAGANINI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/d402d7db-3e78-4db2-a72a-abb85770f111.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:43:13
8424	MACARRÃO TRICOLORE PENNE RIGATE PAGANINI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/38d51db7-7591-454f-9ec3-9a125850bf67.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:43:13
8425	MACARRÃO TRICOLORE URSINHOS BAMBINI PAGANINI 200G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/412f0c12-be38-4415-bb88-6dd1aee4d673.jpg	11.99	\N	S	0	Shopper	2022-04-17	22:43:14
8426	MASSA PARA LASANHA PAGANINI 200G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/1c21fc48-59ee-4287-b659-98877e05e02d.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:43:14
8427	MACARRÃO COM FARINHA DE QUINOA FUSILLI SEM GLÚTEN PAGANINI 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/0b59b5c2-30dd-4a23-9826-b2bcdda1a7ea.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:43:14
8428	MACARRÃO COM FARINHA DE QUINOA SPAGHETTI SEM GLÚTEN PAGANINI 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/81259112-b5b4-475d-bc6e-0a5c517d5e0b.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:43:15
8429	MACARRÃO INTEGRAL PENNE PAGANINI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/96cdf55b-79d7-43f9-a3ea-461ed5cfe185.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:43:15
8430	MACARRÃO INTEGRAL SPAGHETTI PAGANINI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/4669fc5d-2dd6-4a91-95d5-249395a0472f.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:43:16
8431	MOLHO DE TOMATE NAPOLITANO DO TOMATE 330G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/4123e2b7-c254-4d43-9249-8b838988758d.jpg	13.69	\N	S	0	Shopper	2022-04-17	22:43:16
8432	MOLHO DE TOMATE TRADICIONAL DO TOMATE 330G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/b84d525c-6ae9-484b-bb4f-e57774931b1f.jpg	13.69	\N	S	0	Shopper	2022-04-17	22:43:16
8433	MACARRÃO COM OVOS DONA BENTA AVE MARIA 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/1ccb22cd-5cf4-4a28-a7d8-b56454b0c1af.jpg	3.39	\N	S	0	Shopper	2022-04-17	22:43:17
8434	MACARRÃO COM OVOS DONA BENTA ESPAGUETE Nº8 500GR	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/9a517a99-3380-45d6-b806-fa679e66f70a.jpg	3.39	\N	S	0	Shopper	2022-04-17	22:43:17
8435	MACARRÃO COM OVOS DONA BENTA PARAFUSO 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/db0d1f2f-0671-4a16-ac98-3494693d7fde.jpg	3.39	\N	S	0	Shopper	2022-04-17	22:43:18
8436	MACARRÃO COM OVOS DONA BENTA PENNE 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/3937dcc4-f3e0-47b5-9472-58e28d1bb8e6.jpg	3.39	\N	S	0	Shopper	2022-04-17	22:43:18
8437	MASSA PARA LASANHA DONA BENTA 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/bb4408cf-4893-4cbb-aa52-b31a48e42b2f.jpg	6.89	\N	S	0	Shopper	2022-04-17	22:43:18
8438	MASSA TIPO CABELO DE ANJO KONJAC 270G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/68343a68-26f6-4151-8594-310212eaccf5.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:43:19
8439	MASSA TIPO NOODLES KONJAC 270G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/c29aa2f8-c26e-420a-a844-baf36b533c24.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:43:19
8440	MASSA TIPO PENNE KONJAC 270G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/c41f4a66-7a02-4357-9dd1-0b3a3d0ba32b.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:43:20
8441	MASSA PARA LASANHA ORGÂNICA NATIVE 200G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/b3f86b4e-6b9d-4fbe-8ae3-ab98d829b114.jpg	5.89	\N	S	0	Shopper	2022-04-17	22:43:20
8442	TALHARIM ORGÂNICO NATIVE COM BIOMASSA DE BANANA VERDE 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/c10e6ed2-4d62-4b79-ad2b-45f92ad8a4b9.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:43:20
8443	TALHARIM ORGÂNICO NATIVE COM OVOS 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/c1bc842d-732e-4b3e-b798-bda4d23eae4c.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:43:21
8444	TALHARIM ORGÂNICO NATIVE TRADICIONAL 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/e24a0fe6-7949-44b5-843c-167f25862bff.jpg	11.39	\N	S	0	Shopper	2022-04-17	22:43:21
8445	MACARRÃO COM OVOS BARILLA LINGUINE 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/6306.jpg	5.29	\N	S	0	Shopper	2022-04-17	22:43:22
8446	MACARRÃO INTEGRAL BARILLA FARFALLE 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/2567.jpg	13.09	\N	S	0	Shopper	2022-04-17	22:43:22
8447	MACARRÃO INTEGRAL BARILLA FUSILLI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/1899.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:43:22
8448	MACARRÃO INTEGRAL BARILLA PENNE 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/1656.jpg	13.09	\N	S	0	Shopper	2022-04-17	22:43:23
8449	MACARRÃO INTEGRAL BARILLA SPAGHETTINI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/1655.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:43:23
8450	MACARRÃO ITALIANO FASANO ORECCHIETTI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/2cb69c10-c2f9-41ce-93c1-c3d915201867.jpg	40.85	\N	S	0	Shopper	2022-04-17	22:43:24
8451	MACARRÃO ITALIANO FASANO TAGLIOLINI ALL UOVO 200G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/7b933a11-b0ba-4d2d-8d9f-92bb33d05141.jpg	40.85	\N	S	0	Shopper	2022-04-17	22:43:24
8452	MASSA GOURMET FUSILLI CASARÃO C/ BETERRABA, BANANA VERDE E PIMENTA CAIENA 300G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/massa_gourmet_casarao_fusilli_beterraba_5485.jpg	13.49	\N	S	0	Shopper	2022-04-17	22:43:25
8453	MASSA GOURMET FUSILLI CASARÃO C/ CENOURA, BATATA DOCE, CÚRCUMA E CHIA 300G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/MACARRAOCASARAOFUSILLI258.jpg	13.49	\N	S	0	Shopper	2022-04-17	22:43:25
8454	MASSA GOURMET PENNE CASARÃO C/ BETERRABA, BANANA VERDE E PIMENTA CAIENA 300G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/MACARRAOCASARAOPENNEBETERRABA258.jpg	13.49	\N	S	0	Shopper	2022-04-17	22:43:25
8455	MASSA GOURMET PENNE CASARÃO C/ CENOURA, BATATA DOCE, CÚRCUMA E CHIA 300G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/MACARRAOCASARAOPENNE258.jpg	13.49	\N	S	0	Shopper	2022-04-17	22:43:26
8456	MASSA DE ARROZ SPAGHETTI CASARÃO GLUTEN FREE 300G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/spaghettucasaraoglutenfree300g165.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:43:26
8457	QUEIJO RALADO LA SERENÍSSIMA PARMESÃO 50G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/f4f0b342-b352-4228-a5d1-2476c7ab0170.jpg	4.59	\N	S	0	Shopper	2022-04-17	22:43:27
8458	MACARRÃO ITALIANO DIVELLA PENNE ZITI RIGATI Nº27 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/PENNEZITI258.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:43:27
8459	MACARRÃO ITALIANO DIVELLA FUSILLI Nº40 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/MACARRAODIVELLA496.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:43:27
8460	MACARRÃO ITALIANO DIVELLA CAPELLI D' ANGELO NIDI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/CABELODEANJODIVELLA258.jpg	13.09	\N	S	0	Shopper	2022-04-17	22:43:28
8461	MACARRÃO ITALIANO DIVELLA FARFALLE 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/MACARRAODIVELLA165.jpg	12.89	\N	S	0	Shopper	2022-04-17	22:43:28
8462	MACARRÃO ITALIANO DIVELLA FETTUCCINE Nº12 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/4330.png	6.79	\N	S	0	Shopper	2022-04-17	22:43:29
8463	MACARRÃO ITALIANO DIVELLA SPAGHETTI RISTORANTI Nº 9 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/divella.jpg	7.29	\N	S	0	Shopper	2022-04-17	22:43:29
8464	MACARRÃO ITALIANO DIVELLA SPAGHETTI RISTORANTI Nº8 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/SPAGHETTIRISTORANTE258.jpg	7.29	\N	S	0	Shopper	2022-04-17	22:43:29
8465	MACARRÃO ITALIANO INTEGRAL DIVELLA SPAGHETTI N°8 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/6164.png	12.09	\N	S	0	Shopper	2022-04-17	22:43:30
8466	MACARRÃO ITALIANO DIVELLA CAPELLINI Nº11 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/CAPELINIDIVELLA258.jpg	7.29	\N	S	0	Shopper	2022-04-17	22:43:30
8467	MASSA DE ARROZ BLUE VILLE PARAFUSO 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/MACARRAOPARAFUSO587.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:43:31
8468	MASSA ITALIANA DIVELLA SÊMOLA LASAGNE Nº109 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/lasagne_divella.jpg	18.79	\N	S	0	Shopper	2022-04-17	22:43:31
8469	MACARRÃO ITALIANO DE CECCO CONCHIGLIONI RIGATI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/de_cecco_conchiglioni_2.jpg	28.49	\N	S	0	Shopper	2022-04-17	22:43:31
8470	MACARRÃO ITALIANO DE CECCO FETTUCCELLE 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/dececcofattucinne500g537.jpg	25.49	\N	S	0	Shopper	2022-04-17	22:43:32
8471	MACARRÃO ITALIANO DE CECCO TAGLIATELLE 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/3_xxQzn4n.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:43:32
8472	MACARRÃO  ITALIANO PICCOLINI BARILLA MINI PENNE RIGATE 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/820.jpg	13.69	\N	S	0	Shopper	2022-04-17	22:43:33
8473	MACARRÃO COM OVOS BARILLA ESPAGUETE Nº8 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/802.jpg	5.29	\N	S	0	Shopper	2022-04-17	22:43:33
8474	MOLHO BOLONHESA PREDILECTA SACHÊ 340G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/2a60dcd2-f90c-4d0a-9f38-9f7a55e0f522.jpg	3.99	\N	S	0	Shopper	2022-04-17	22:43:33
8475	MOLHO REFOGADO PREDILECTA SACHÊ 340G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/696a04f3-52aa-4e4c-9471-1495f0034a33.jpg	1.59	\N	S	0	Shopper	2022-04-17	22:43:34
8476	PASSATA RÚSTICA PREDILECTA SACHÊ 340G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/20ace2fc-2f23-412d-a516-0c80a7d2aa9d.jpg	3.29	\N	S	0	Shopper	2022-04-17	22:43:34
8477	MACARRÃO COM OVOS BARILLA PARAFUSO 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/803.jpg	5.29	\N	S	0	Shopper	2022-04-17	22:43:35
8478	PASSATA RUSTICA ST UP SACCIALI 300G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/afb221cf-40cd-4ae0-86fb-261ac2cbfaf5.jpg	3.99	\N	S	0	Shopper	2022-04-17	22:43:35
8479	MACARRÃO COM OVOS BARILLA PENNE 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/804.jpg	5.29	\N	S	0	Shopper	2022-04-17	22:43:35
8480	MACARRÃO COM OVOS ADRIA ESPAGUETE Nº8 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/MACARRAOESPAGUETE496.jpg	3.79	\N	S	0	Shopper	2022-04-17	22:43:36
8481	RAVIOLI DE MUSSARELA CHARLÔ 400G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/7f51c9fa-f6e5-4f28-b8ed-2938dbd3a723.jpg	127.90	\N	S	0	Shopper	2022-04-17	22:43:36
8482	MACARRÃO COM OVOS ADRIA PENA 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/MACARRAOPENA496.jpg	3.79	\N	S	0	Shopper	2022-04-17	22:43:37
8483	MACARRÃO COM OVOS ADRIA AVE MARIA 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/avemaria.jpg	3.29	\N	S	0	Shopper	2022-04-17	22:43:37
8484	MACARRÃO COM OVOS ADRIA FIDELINHO 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/MACARRAOFIDELINHO496.jpg	3.79	\N	S	0	Shopper	2022-04-17	22:43:37
8485	MACARRÃO COM OVOS ADRIA CONCHINHA 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1439011138_bu4ZvLc024ZFFbmAFoLy3yY2fMOkom.jpg	3.29	\N	S	0	Shopper	2022-04-17	22:43:38
8486	MACARRÃO COM OVOS PETYBON AVE MARIA 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/ed2513bf-680a-41f4-87f4-106d179ff9c7.jpg	3.59	\N	S	0	Shopper	2022-04-17	22:43:38
8487	MACARRÃO COM OVOS PETYBON ESPAGUETE Nº 8 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/e61268fa-6a68-42b0-b45a-c72bc6b14625.jpg	3.59	\N	S	0	Shopper	2022-04-17	22:43:39
8488	MACARRÃO INSTANTÂNEO NISSIN LAMÉN CARNE 85G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/1f94e118-ce03-4cfa-a56c-99534d531175.png	1.99	\N	S	0	Shopper	2022-04-17	22:43:39
8489	MACARRÃO COM OVOS PETYBON PARAFUSO 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/8c389aa9-7c46-40d1-a580-49b8a6e0ac04.jpg	3.59	\N	S	0	Shopper	2022-04-17	22:43:39
8490	MACARRÃO INSTANTÂNEO SALADARIA CAESAR NISSIN 75G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/80b93a19-325e-4c85-ac9c-7b527c82c68d.jpg	3.19	\N	S	0	Shopper	2022-04-17	22:43:40
8491	MACARRÃO INSTANTÂNEO SALADARIA FRANGO GRELHADO NISSIN 75G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/5f54530c-b8f7-4500-b99d-7ae2bbebb3ef.jpg	3.19	\N	S	0	Shopper	2022-04-17	22:43:40
8492	MACARRÃO INSTANTÂNEO NISSIN LAMÉN GALINHA CAIPIRA 85G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/852c1318-61b6-4429-b9be-c9244765191d.png	1.99	\N	S	0	Shopper	2022-04-17	22:43:41
8493	MACARRÃO INSTANTÂNEO NISSIN LAMEN LEGUMES 85G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/cb22f3f4-9978-4766-8ebf-23ffd769cca9.png	1.99	\N	S	0	Shopper	2022-04-17	22:43:41
8494	MACARRÃO INSTANTÂNEO NISSIN LÁMEN TURMA DA MÔNICA SABOR TOMATE 85G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/4c1b8c23-b603-4552-801b-fc87c3a34fc5.png	1.99	\N	S	0	Shopper	2022-04-17	22:43:41
8495	GRAND RAVIOLI PARMIGIANO REGGIANO RANA 250G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/fd9de3fc-467b-4387-bab0-c689e05dcbae.jpg	36.90	\N	S	0	Shopper	2022-04-17	22:43:42
8496	MACARRÃO INSTANTÂNEO NISSIN LÁMEN CARNE COM TOMATE 85G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/5af781b4-7173-4f3f-b1e9-eb9923e66289.png	1.99	\N	S	0	Shopper	2022-04-17	22:43:42
8497	MACARRÃO INSTANTÂNEO NISSIN LÁMEN TURMA DA MÔNICA SABOR GALINHA SUAVE 85G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/6d570182-7276-4227-82d8-886c24fb2b98.png	1.99	\N	S	0	Shopper	2022-04-17	22:43:43
8498	MACARRÃO INSTANTÂNEO NISSIN LÁMEN TURMA DA MÔNICA SABOR CARNE SUAVE 85G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/f4eef204-7076-4741-ad7d-2b7181b3be70.png	1.99	\N	S	0	Shopper	2022-04-17	22:43:43
8499	MACARRÃO INSTANTÂNEO NISSIN TALHARIM AO PESTO 99G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/34558ee1-7e27-46f2-af58-d0a1daf7ada6.jpg	3.19	\N	S	0	Shopper	2022-04-17	22:43:43
8500	MACARRÃO INSTANTÂNEO NISSIN TALHARIM CARBONARA 99G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/bd1d57fb-892e-485d-9f36-3919c151bc13.jpg	3.19	\N	S	0	Shopper	2022-04-17	22:43:44
8501	MACARRÃO INSTANTÂNEO NISSIN TALHARIM CARNE C/ TOMATE 99G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/4230fad1-4c17-4a65-94cf-cdcc6aeb1d29.jpg	3.19	\N	S	0	Shopper	2022-04-17	22:43:44
8502	MACARRÃO INSTANTÂNEO NISSIN.TALHARIM FRANGO 99G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/15c36485-3eae-4487-a7de-0e063c68ae22.jpg	3.19	\N	S	0	Shopper	2022-04-17	22:43:45
8503	MACARRÃO INSTANTÂNEO YAKISSOBA NISSIN TRADICIONAL 87G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/3d3bd5be-1c00-4c61-8833-ba4627cf97d7.png	1.99	\N	S	0	Shopper	2022-04-17	22:43:45
8504	MACARRÃO INSTANTÂNEO RICE TAI MAMA NOODLES 200G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/9055.jpg	17.99	\N	S	0	Shopper	2022-04-17	22:43:46
8505	MACARRÃO INSTANTANEO RICE TAI MAMA VERMICELLI NOODLES 200G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/9061.jpg	17.99	\N	S	0	Shopper	2022-04-17	22:43:46
8506	MACARRÃO INSTANTÂNEO RICE WHOLE GRAIN TAI MAMA VERMICELLI NOODLES 200G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/9062.jpg	17.99	\N	S	0	Shopper	2022-04-17	22:43:46
8507	MACARRÃO INSTANTÂNEO CUP NOODLES NISSIN GALINHA CAIPIRA 69G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/6dda053d-70d7-415a-aa19-ffee406d6a92.png	3.79	\N	S	0	Shopper	2022-04-17	22:43:47
8508	MACARRÃO INSTANTÂNEO SPAGUETE BOLONHESA KNORR COPO 68G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/29cd0e5e-a35c-42d1-9bc0-e9d8cee1758c.jpg	11.39	\N	S	0	Shopper	2022-04-17	22:43:47
8509	MOLHO DE TOMATE ASSADO AMADDRE 480G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/f1e23565-7b7e-4fc2-958f-cab0c3450790.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:43:48
8510	MOLHO DE TOMATE COM PEDAÇOS AMADDRE 480G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/81c95a91-05cd-43ba-aaa1-3fb00ef029d4.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:43:48
8511	MACARRAO DE ARROZ E FEIJÃO PARAFUSO URBANO 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/6cdff86b-069e-42ca-a572-c4ccf71d38b5.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:43:48
8512	MACARRAO DE ARROZ PARAFUSO URBANO INTEGRAL 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/de91245c-fb4c-44c2-985c-36ec5dc60b44.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:43:49
8513	MACARRAO DE ARROZ PARAFUSO URBANO TRADICIONAL 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/05be92df-a02e-41fd-885a-0060abaeb723.jpg	3.89	\N	S	0	Shopper	2022-04-17	22:43:49
8514	MACARRAO DE ARROZ PENNE URBANO INTEGRAL 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/cd984553-f70c-47dc-a35f-cc6f1c748f69.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:43:50
8515	MACARRAO DE ARROZ PENNE URBANO TRADICIONAL 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/62e8c6af-444b-4d8e-a3ca-92e6fcb8a205.jpg	3.89	\N	S	0	Shopper	2022-04-17	22:43:50
8516	MACARRAO DE ARROZ SPAGUETTI URBANO INTEGRAL 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/64ad7db3-9e1b-4f70-9db0-903f11bd925c.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:43:50
8517	MACARRAO DE ARROZ SPAGUETTI URBANO TRADICIONAL 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/cd1b2ae1-99c8-45ec-84d2-4134ba9141ec.jpg	3.89	\N	S	0	Shopper	2022-04-17	22:43:51
8518	MACARRÃO DE ARROZ URBANO KIDS MINI RIGATONI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/cba909c6-9c8c-4e39-9d79-bb45e231b30b.jpg	5.19	\N	S	0	Shopper	2022-04-17	22:43:51
8519	MACARRÃO DE ARROZ URBANO KIDS PERSONAGENS 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/9749df76-c783-45f4-9771-e7d87dab753b.jpg	5.19	\N	S	0	Shopper	2022-04-17	22:43:52
8520	MACARRAO ORIENTAL KARUI SEM GLUTEN 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/cbc31e84-ec64-47b5-b813-5e2c8bc6271e.jpg	18.29	\N	S	0	Shopper	2022-04-17	22:43:52
8521	MACARRÃO ORIENTAL SEM GLUTEN KARUI 200G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/25501b9e-96bb-46db-b298-a7dc668e4f5b.jpg	9.69	\N	S	0	Shopper	2022-04-17	22:43:52
8522	MACARRAO YAKISSOBA FINO KARUI 500G	\N	Alimentos	massas e molhos de tomate	\N	https://d2om08pcbtz1n1.cloudfront.net/cd5c3adc-f175-4269-afef-ebb4185d91d8.jpg	10.39	\N	S	0	Shopper	2022-04-17	22:43:53
8523	BRUSCHETTA LA PASTINA ALCACHOFRA 280G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/LAPASTINAALCACHOFRA258_1.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:44:01
8524	BRUSCHETTA LA PASTINA DE ASPARGO VERDE 280G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/eb35e394-16d0-4359-9c97-2e6d6bf83d7f.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:44:02
8525	BRUSCHETTA LA PASTINA JALAPENO E PIMENTÃO 280G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/LAPASTINAPIMENTAOJALAPENO258.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:44:02
8526	MOLHO DE PEIXE PANTAI 670ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/0798b565-5fd0-42c6-8390-d994e43e3c79.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:44:02
8527	MOLHO DE PEIXE TIPAROS 700ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/fd5584c1-d6cc-4136-aaf4-74ab74285073.jpg	24.99	\N	S	0	Shopper	2022-04-17	22:44:03
8528	PATÊ DE ATUM GOMES DA COSTA 150G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/1d0f40c5-ca1c-4f1b-99d9-16d389daae5b.jpg	10.19	\N	S	0	Shopper	2022-04-17	22:44:03
8529	PATÊ DE ATUM GOMES DA COSTA COM AZEITONAS 150G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/27814081-777f-4410-923a-ba12a2824a84.jpg	10.19	\N	S	0	Shopper	2022-04-17	22:44:04
8530	PATÊ DE ATUM GOMES DA COSTA LIGHT 150G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/bd38c65d-a65e-4cd3-978f-e20e1f429f85.jpg	10.19	\N	S	0	Shopper	2022-04-17	22:44:04
8531	PATÊ DE PALMITO NATUPALM SABOR PRESUNTO100G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/patepalmitopresunto128.jpg	10.99	\N	S	0	Shopper	2022-04-17	22:44:04
8532	CARAMELO STRUMPF DE CEBOLA  590G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/4a94f8f0-703e-46dc-8bc1-3e4e4ec1b313.jpg	30.49	\N	S	0	Shopper	2022-04-17	22:44:05
8534	KETCHUP STRUMPF RÚSTICO 210G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/strumpfrustico210g.jpg	13.99	\N	S	0	Shopper	2022-04-17	22:44:06
8535	MOLHO STRUMPF PETER BULLGUER 470G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/062ccdd3-29d0-4b16-969a-7c7950ded41b.jpg	30.49	\N	S	0	Shopper	2022-04-17	22:44:06
8536	MOSTARDA STRUMPF AMERICANA 210G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/a41122a2-7ef9-4ea9-854c-6bfd4aba25e8.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:44:06
8537	MOSTARDA STRUMPF INTENSA C/ GRÃOS E ADOCICADA 210G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/strumpfadocicado210g.jpg	20.49	\N	S	0	Shopper	2022-04-17	22:44:07
8538	PATE DE PIMENTA COQUEIRO COM ATUM 170G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/812b2a56-0cd3-4954-b674-391c54356371.jpg	9.49	\N	S	0	Shopper	2022-04-17	22:44:07
8539	RELISH DE PEPINO AGRIDOCE STRUMPF 240G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/strumpfpepino240g.jpg	26.99	\N	S	0	Shopper	2022-04-17	22:44:08
8540	MOLHO DE TOMATE PENEIRADO POMAROLA TRADICIONAL 520G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1438805437_05FBmu8GP42dHR17Ai3stESFWS6KRr.jpg	5.49	\N	S	0	Shopper	2022-04-17	22:44:08
8541	MOLHO DE TOMATE POMAROLA TRADICIONAL 320G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/5bbc8a8c-57f8-4caf-8b8a-4f175f2422d3.jpg	2.39	\N	S	0	Shopper	2022-04-17	22:44:08
8542	MOLHO DE TOMATE POMAROLA TRADICIONAL LATA 340G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1439058391_8a4u2Qj052y1WmNuD9UTBt26yo7YMp.jpg	4.99	\N	S	0	Shopper	2022-04-17	22:44:09
8543	MOLHO DE TOMATE SALSARETTI TRADICIONAL SACHÊ 300G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/b9333b3d-09d3-4503-9078-d7372f961dad.png	2.09	\N	S	0	Shopper	2022-04-17	22:44:09
8544	MOLHO DE TOMATE SALSARETTI CLÁSSICO 500G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/1771.jpg	11.59	\N	S	0	Shopper	2022-04-17	22:44:10
8545	KETCHUP MUTTI 340G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/muttiketchuppomodoro340g65465.jpg	21.99	\N	S	0	Shopper	2022-04-17	22:44:10
8546	TOMATE ITALIANO PELADO MUTTI 400G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/jajaja.jpg	12.59	\N	S	0	Shopper	2022-04-17	22:44:10
8547	TOMATE ITALIANO PELADO MUTTI EM CUBOS 400G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/tomateee.jpg	13.69	\N	S	0	Shopper	2022-04-17	22:44:11
8548	EXTRATO DE TOMATE ELEFANTE 310G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/6a157df8-f8fd-41a8-af66-346db66717bb.jpg	5.89	\N	S	0	Shopper	2022-04-17	22:44:11
8549	MOLHO DE TOMATE FUGINI TRADICIONAL 300G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/98a70b92-010e-4bd1-95e5-9c0d267f18fa.png	1.89	\N	S	0	Shopper	2022-04-17	22:44:12
8550	MOLHO DE TOMATE HEINZ TRADICIONAL 340G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/heinzmolhotomate58.jpg	2.69	\N	S	0	Shopper	2022-04-17	22:44:12
8551	POLPA DE TOMATE CICA POMODORO 520G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/cica32433.jpg	4.99	\N	S	0	Shopper	2022-04-17	22:44:12
8552	MOLHO DE PIMENTA ORGÂNICO SOUL BRASIL DE BODE COM GOIABA 50ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/molho_pimenta_goiaba_50ml.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:44:13
8553	MOLHO DE PIMENTA ORGÂNICO SOUL BRASIL DE FIDALGA COM MANGA UBÁ 50ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/molho_pimenta_manga_50ml.jpg	14.19	\N	S	0	Shopper	2022-04-17	22:44:13
8554	MOSTARDA RUSTICA BIOPORÃ 210G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/MOSTARDARUSTICABIOPORA258.jpg	27.49	\N	S	0	Shopper	2022-04-17	22:44:14
8555	MOLHO BRANCO PREDILECTA SACHÊ 240G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/33f4c20d-63dd-4a4f-8db4-47e238faa542.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:44:14
8556	MOLHO DE STROGONOFF PREDILECTA SACHÊ 340G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/569a0680-12d7-4aeb-93b0-b07f7a01bac9.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:44:14
8557	MOLHO TRES QUEIJOS PREDILECTA SACHÊ 240G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/71909891-755d-4b93-9416-b1c27a3cc131.jpg	6.79	\N	S	0	Shopper	2022-04-17	22:44:15
8558	MOLHO VEGANO TIPO MAIONESE COM BICO PREDILECTA 220G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/52714505-a180-421a-9bc3-1bccca5574ed.jpg	6.79	\N	S	0	Shopper	2022-04-17	22:44:15
8559	MOLHO DE OSTRA KIKKOMAN 390ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/95146cb0-c2fe-430a-86a4-0913d15fdd12.jpg	27.49	\N	S	0	Shopper	2022-04-17	22:44:16
8560	MOLHO DE PIMENTA HABANERO KIKKOMAN 210G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/1e54c1cf-d122-4cec-aa7f-368ba4d73500.jpg	12.59	\N	S	0	Shopper	2022-04-17	22:44:16
8561	MOLHO DE CEBOLA CARAMELIZADA HOMEMADE 180G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/5784hom.jpg	14.49	\N	S	0	Shopper	2022-04-17	22:44:16
8562	MOLHO DE GENGIBRE CARAMELIZADA HOMEMADE 180G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/5786gen.jpg	14.49	\N	S	0	Shopper	2022-04-17	22:44:17
8563	MAIONESE NOT MAYO ALHO 350G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/notmayoalho380574_1.jpg	12.89	\N	S	0	Shopper	2022-04-17	22:44:17
8564	MAIONESE NOT MAYO ORIGINAL 350G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/notmayooriginalo380574.jpg	12.59	\N	S	0	Shopper	2022-04-17	22:44:18
8565	MOLHO TAI KALASSI SWEET CHILLI 245G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/Sweet_Chilli.jpg	22.49	\N	S	0	Shopper	2022-04-17	22:44:18
8566	MOLHO DE LARANJA KIKKOMAN 250G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/11007KI.jpg	12.19	\N	S	0	Shopper	2022-04-17	22:44:18
8567	MOLHO TARÊ KIKKOMAN 275G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/Molho_Tare.jpg	16.49	\N	S	0	Shopper	2022-04-17	22:44:19
8568	MOLHO WASABI KIKKOMAN 262G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/molhowasabi.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:44:19
8569	TEMPERO GOLDEN CURRY MÉDIO CHU-KARA 220G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/694b7d8d-2088-4533-9814-f525ca0221ad.jpg	50.90	\N	S	0	Shopper	2022-04-17	22:44:20
8570	KETCHUP  HEINZ 397G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/eaa1996b-db79-4e40-af01-8c9f8e211842.jpg	10.89	\N	S	0	Shopper	2022-04-17	22:44:20
8571	MOLHO DE GERGELIM KIKKOMAN 240ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/fb0e7e35-5e3f-4f9b-b880-7c548736db47.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:44:20
8572	MOLHO SWEET CHILLI KIKKOMAN 180ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/d50bafca-754b-4702-ac15-0ac392972e30.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:44:21
8573	KETCHUP SALSARETTI 380G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/2508.jpg	8.09	\N	S	0	Shopper	2022-04-17	22:44:21
8574	KETCHUP  HEINZ 567G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/545704.jpg	15.49	\N	S	0	Shopper	2022-04-17	22:44:22
8575	KETCHUP  HEINZ PICANTE 397G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/a7ddb6e0-0b95-44e3-ad45-64f0683af043.jpg	11.99	\N	S	0	Shopper	2022-04-17	22:44:22
8576	KETCHUP  HEINZ PICLES 397G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/24488b2f-a15b-47ff-961e-45bc93b408c0.jpg	11.99	\N	S	0	Shopper	2022-04-17	22:44:23
8577	KETCHUP HEINZ BACON E CEBOLA 397G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/5d1225f6-0ef8-4a74-8b04-4c51ab17363d.jpg	11.99	\N	S	0	Shopper	2022-04-17	22:44:23
8578	KETCHUP ETTI TRADICIONAL 380G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1438194680_Bc3We7iI4NUcsXdL309h34Q5tKN62L.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:44:23
8579	KETCHUP QUERO PIZZA 200G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/07a6b317-e539-49e0-9cf8-89d0346ff128.jpg	2.89	\N	S	0	Shopper	2022-04-17	22:44:24
8580	KETCHUP QUERO TRADICIONAL 400G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/41830ed5-ff21-4e37-8e35-999002c5f031.jpg	5.39	\N	S	0	Shopper	2022-04-17	22:44:24
8581	MOLHO AGRIDOCE KARUI 250ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/8f1ed108-3480-4a24-89dd-fc481e359b8a.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:44:25
8582	MOLHO QUERO 3 EM 1  200G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/04755610-b2a4-4dff-8bdc-ec524785f2bb.jpg	3.09	\N	S	0	Shopper	2022-04-17	22:44:25
8583	MOLHO SHOYU LIGHT KARUI 150ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/270ab879-7d84-4543-8daa-a396ff157814.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:44:25
8584	MOLHO TARE KARUI 250ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/2fe1d32f-c275-4de8-bde5-97ff16ea54de.jpg	9.49	\N	S	0	Shopper	2022-04-17	22:44:26
8585	MOLHO YAKISSOBA KARUI 500ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/27636c51-23df-4ef8-ae86-c067cd3f0606.jpg	13.69	\N	S	0	Shopper	2022-04-17	22:44:26
8586	MOSTARDA DIJON BEAUFOR COM TRUFA 215G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/58e05e74-75bc-4d34-8d38-a0c93585b12e.jpg	40.90	\N	S	0	Shopper	2022-04-17	22:44:27
8587	MOSTARDA MAILLE DIJON ORIGINAL VIDRO 215G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/Mostarda2.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:44:27
8588	MOSTARDA MAILLE COM MEL VIDRO 230G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/Mostarda.jpg	34.90	\N	S	0	Shopper	2022-04-17	22:44:27
8589	MAIONESE DIJON EM GRÃOS MAILLE VIDRO 320G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/4583f58f-187b-4df8-ac2c-28e950257add.jpg	27.99	\N	S	0	Shopper	2022-04-17	22:44:28
8590	MOSTARDA  HEINZ 255G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1444621190_8RNWQ3d8VMzI2o6twqhOeOh6l03N8K.png	12.59	\N	S	0	Shopper	2022-04-17	22:44:28
8591	MOSTARDA ADOCICADA BERNA 230G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/2df7c511-e11d-4c3c-be1f-92a79fb27abf.jpg	10.99	\N	S	0	Shopper	2022-04-17	22:44:29
8592	MOSTARDA AMARELA COM MEL HEINZ 240G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/f210d22e-c5b2-4152-8d20-85dd1ec68465.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:44:29
8593	MOSTARDA AMARELA PICANTE HEINZ 255G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/04caaea4-fef9-4626-a183-a931d7a6081d.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:44:29
8594	MOSTARDA ESCURA BERNA 230G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/4a5f9956-b768-4092-976d-28b0466c9b6d.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:44:30
8595	MOSTARDA FORTE BERNA 230G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/7fbca54d-1be6-40f9-8b9e-51c354f20f46.jpg	10.99	\N	S	0	Shopper	2022-04-17	22:44:30
8596	MOSTARDA HEMMER 200G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/hemmermostarda200g546.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:44:31
8597	MAIONESE HEINZ 215G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/8056cd45-1175-40cf-afad-7c502bb37cda.jpg	9.19	\N	S	0	Shopper	2022-04-17	22:44:31
8598	MAIONESE HEINZ 390G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/c7403f62-2a12-4643-870f-9f9fd8df5b88.jpg	12.39	\N	S	0	Shopper	2022-04-17	22:44:31
8599	MAIONESE HELLMANN'S TRADICIONAL SQUEEZE 335G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/hellmanns_squeeze_335g_485.jpg	8.89	\N	S	0	Shopper	2022-04-17	22:44:32
8600	MAIONESE LIZA 250G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/56409245-66e0-4745-a86b-f899ab107a37.jpg	3.59	\N	S	0	Shopper	2022-04-17	22:44:32
8601	MAIONESE LIZA 500G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/59d36155-7a5e-4e25-b361-fd4467374b79.jpg	4.79	\N	S	0	Shopper	2022-04-17	22:44:33
8602	MAIONESE TRADICIONAL FUGINI SACHÊ 200G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/7206bb55-7146-4cb9-9eca-6ea5dc36a1b3.jpg	2.29	\N	S	0	Shopper	2022-04-17	22:44:33
8603	MOLHO BARBECUE CEPERA 1,01KG	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/BARBECUECEPERA101KG836.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:44:33
8604	MOLHO PARA SALADA CASTELO MOSTARDA E MEL 236ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/1099f2fd-42e8-47c6-bfa9-39b67f926a96.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:44:34
8605	MOLHO PARA SALADA CASTELO CAESAR 236ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/409cce68-0eb8-4a36-8725-16e505a4e7fb.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:44:34
8606	MOLHO PARA SALADA LIZA CASEIRO 234ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1438822007_YWTs0E8k190gpquxa6uAaoEbW19spH.jpg	7.69	\N	S	0	Shopper	2022-04-17	22:44:35
8607	MOLHO CASTELO INGLÊS 150ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/Design_sem_nome_12.jpg	2.89	\N	S	0	Shopper	2022-04-17	22:44:35
8608	MOLHO DE SOJA PRATOS QUENTES REFOGADOS KIKKOMAN 150ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/Molho_de_soja.jpg	8.69	\N	S	0	Shopper	2022-04-17	22:44:35
8609	MOLHO DE SOJA SEM ACUCARES KIKKOMAN 150ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/49d5b3da-9e8d-45ac-a678-0e74234aee42.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:44:36
8610	MOLHO DE SOJA SEM ACUCARES KIKKOMAN 500ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/fa3dd7cd-8b92-44f0-8bb7-02095e7b0815.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:44:36
8611	MOLHO SHOYU KIKKOMAN 150ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/d8459948-476d-4861-be6d-0633e305195f.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:44:37
8612	MOLHO SHOYU KIKKOMAN 1L	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/cd822bc9-1c59-454f-8515-a7daac4e2cbd.jpg	35.90	\N	S	0	Shopper	2022-04-17	22:44:37
8613	MOLHO INGLÊS CEPERA 150ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/MOLHOINGLESCEPERA735.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:44:37
8614	MOLHO SHOYU SAKURA LIGHT 150ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/1195-shoyu-light-150-ml.jpg	10.99	\N	S	0	Shopper	2022-04-17	22:44:38
8615	MOLHO SHOYU SAKURA 150ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1438197886_wI15seKs4f9iqDPGhr8I4MajuqH674.jpg	4.09	\N	S	0	Shopper	2022-04-17	22:44:38
8616	MOLHO SHOYU SAKURA TRADICIONAL 500ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/1194-shoyu-500-ml.jpg	13.59	\N	S	0	Shopper	2022-04-17	22:44:39
8617	MOLHO SHOYU SAKURA 1L	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/SAKURA236.jpg	19.49	\N	S	0	Shopper	2022-04-17	22:44:39
8618	CAPONATA DE BERINJELA AMADDRE 180G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/f0f51a5a-c5a4-4145-8459-5830aef02cae.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:44:39
8619	MOLHO CASTELO SUMO DE LIMÃO 500ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/sumolimaocastelo510mk546.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:44:40
8620	TAPENADE DE AZEITONA AMADDRE 180G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/a91bd380-e2db-457d-afe4-99607ad472c3.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:44:40
8621	TOMATE CONFIT AMADDRE 180G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/9e3640d3-1859-4d7c-b5ea-c0c628a74e8c.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:44:41
8622	MOLHO BARBECUE BOMBAY 350G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/cfb51097-684f-456e-bc13-a87d9ea8eb48.jpg	18.99	\N	S	0	Shopper	2022-04-17	22:44:41
8623	MOLHO MADEIRA BOMBAY 350G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/1f139b64-660a-4b83-8ca0-30452e0f6d5a.jpg	18.99	\N	S	0	Shopper	2022-04-17	22:44:42
8624	MOLHO SRIRACHA BOMBAY 330G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/e33e0dd2-4a69-4c33-862d-e075236274a7.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:44:42
8625	MOLHO DE PIMENTA TABASCO TRADICIONAL 60ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/tabasco.png	20.99	\N	S	0	Shopper	2022-04-17	22:44:42
8626	MOLHO DE PIMENTA TABASCO CHIPOTLE 60ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/fb4a5381-c47a-468d-8af4-be4fca28f33a.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:44:43
8627	MOLHO DE PIMENTA TABASCO VERDE 60ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/d1718944-4779-4d31-bb85-91b4f8ed8de9.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:44:43
8628	MOLHO DE PIMENTA VERDE ZEROSÓDIO NUTRICARE 150ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/Design_sem_nome_22.jpg	12.29	\N	S	0	Shopper	2022-04-17	22:44:44
8629	KETCHUP CAIPIRA ORIGINAL DE CABRÓN 230G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/70ea63a1-e126-4b65-9b3d-4a7665d03f94.jpg	9.19	\N	S	0	Shopper	2022-04-17	22:44:44
8630	MOLHO BARBECUE BOURBON CAIPIRA DE CABRÓN 230G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/5bce08ff-cfad-4bd4-b607-5d8db1f62f06.jpg	13.39	\N	S	0	Shopper	2022-04-17	22:44:44
8631	MOLHO BARBECUE MUSTARD DE CABRÓN 220G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/73a1efd5-08f0-4849-b265-573335810907.jpg	13.19	\N	S	0	Shopper	2022-04-17	22:44:45
8632	MOLHO CREMOSO CAIPIRA DE CABRÓN 200G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/b3a78a0d-9fb7-4fab-bf22-848df8f373c8.jpg	11.09	\N	S	0	Shopper	2022-04-17	22:44:45
8633	MOLHO SRIRACHA TRADICIONAL DE CABRÓN 220G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/5a84a9d7-4f19-4ee9-a975-46550d5623eb.jpg	15.49	\N	S	0	Shopper	2022-04-17	22:44:46
8634	MOLHO SUAVE VERDE DE CABRÓN 80ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/ed4015b8-ca2d-4935-b684-bb6e32625b16.jpg	15.29	\N	S	0	Shopper	2022-04-17	22:44:46
8635	MOLHO SWEET CHILLI DE CABRÓN 230G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/802e7cb7-ec1d-4431-a8db-d8e05f1b96dd.jpg	10.99	\N	S	0	Shopper	2022-04-17	22:44:46
8636	MOLHO SWEET CHILLI GOIABADA DE CABRÓN 230G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/55e7d4e5-43b2-4e36-8a31-4480e711cf97.jpg	15.49	\N	S	0	Shopper	2022-04-17	22:44:47
8637	MOSTARDA CAIPIRA DE CABRÓN 200G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/af5e196e-4416-4b80-9406-f6ab6446677b.jpg	10.29	\N	S	0	Shopper	2022-04-17	22:44:47
8638	MAIONESE VEGANA SUPERBOM VEGETALE 250G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/MAIONESEVEGETALE258.jpg	6.39	\N	S	0	Shopper	2022-04-17	22:44:48
8639	MOLHO BRANCO UHT ELEGÊ 200G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/BRANCOELEGE8165.jpg	6.19	\N	S	0	Shopper	2022-04-17	22:44:48
8640	KETCHUP ORIGINAL CEPERA SQUEEZE 400G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/9845.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:44:48
8641	MAIONESE ORIGINAL SABORES CEPERA 320G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/10566mayo.jpg	5.99	\N	S	0	Shopper	2022-04-17	22:44:49
8642	MOLHO AMERICAN BURGUER CEPERA SQUEEZE 190G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/9810.jpg	8.99	\N	S	0	Shopper	2022-04-17	22:44:49
8643	MOLHO BARBECUE CEPERA SQUEEZE 400G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/9846.jpg	7.69	\N	S	0	Shopper	2022-04-17	22:44:50
8644	MOLHO DE PIMENTA CEPERA SWEET CHILLI SABORES 270ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/cepera11171.jpg	9.49	\N	S	0	Shopper	2022-04-17	22:44:50
8645	MOSTARDA AMARELA CEPERA SQUEEZE 350G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/9847.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:44:50
8646	MOSTARDA AMARELA COM MEL CEPERA 400G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/ae57926c-5136-4d8c-9905-38268421b250.jpg	9.79	\N	S	0	Shopper	2022-04-17	22:44:51
8647	MOSTARDA DIJON CEPERA 190G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/9179.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:44:51
8648	MOLHO DE ALHO DA TERRINHA 150ML	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/TERRINHAMOLHODEALHO239.jpg	3.89	\N	S	0	Shopper	2022-04-17	22:44:52
8649	MOLHO BARBECUE HEINZ 397G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/Heinzbbq258.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:44:52
8650	MOLHO SABOR QUEIJO CHEDDAR POLENGHI 220G	\N	Alimentos	molhos diversos	\N	https://d2om08pcbtz1n1.cloudfront.net/99b66e2b-2be9-48eb-a263-c6fb9b6f0139.jpg	13.59	\N	S	0	Shopper	2022-04-17	22:44:52
8651	AZEITE DE DENDÊ QUALICOCO 200ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/347b4d8a-a066-474e-bf8f-f0de96d5fc3a.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:44:58
8652	AZEITE  PORTUGUÊS EXTRA VIRGEM GALLO 250ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/azeite_extra_250ml_5485.jpg	17.29	\N	S	0	Shopper	2022-04-17	22:44:59
8653	AZEITE  PORTUGUÊS TIPO ÚNICO GALLO 250ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/azeite_unico_gallo_250ml_5485.jpg	15.29	\N	S	0	Shopper	2022-04-17	22:44:59
8654	AZEITE DE DENDÊ CEPÊRA 100ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/cbbbd9fb-60b1-463a-8b41-be9e44f66327.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:45:00
8655	AZEITE PAGANINI EXTRA VIRGEM 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/29e95fa2-f73d-49fe-abed-bd2489dd3dc1.jpg	41.90	\N	S	0	Shopper	2022-04-17	22:45:00
8656	AZEITE PAGANINI GREZZO EXTRA VIRGEM 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/130db6b5-be53-49a1-90f2-c927271944a2.jpg	67.90	\N	S	0	Shopper	2022-04-17	22:45:00
8657	AZEITE DELEYDA EXTRA VIRGEM CLASSICO 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/b3a25c67-69f2-49ed-acf8-62e9b3615d47.jpg	50.90	\N	S	0	Shopper	2022-04-17	22:45:01
8658	AZEITE DELEYDA EXTRA VIRGEM PREMIUM 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/b04c0119-562c-4271-9cc4-f3fdb53db12f.jpg	62.90	\N	S	0	Shopper	2022-04-17	22:45:01
8659	AZEITE GREGO MYKONOS EXTRA VIRGEM 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/2ce30637-9c68-4bf3-8636-b80bf9bc5437.jpg	69.90	\N	S	0	Shopper	2022-04-17	22:45:02
8660	AZEITE  PORTUGUÊS TIPO ÚNICO GALLO 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/azeite_unico_gallo_500ml_5485.jpg	24.49	\N	S	0	Shopper	2022-04-17	22:45:02
8661	AZEITE  PORTUGUÊS EXTRA VIRGEM GALLO 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/555975b9-affb-4ec7-b7a3-4d016266f1fc.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:45:03
8662	AZEITE  PORTUGUÊS EXTRA VIRGEM GALLO ANCESTRAL 400ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/43fa5c34-14ca-4c7c-bfc3-2c6acae1f611.jpg	32.49	\N	S	0	Shopper	2022-04-17	22:45:03
8663	AZEITE  PORTUGUÊS EXTRA VIRGEM GALLO ORGÂNICO 250ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/azeite_organico_gallo_250ml_5485.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:45:03
8664	AZEITE  PORTUGUÊS EXTRA VIRGEM GALLO ORGÂNICO 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/ece1bb82-24f3-4a24-970a-14c5dc6eb51b.jpg	42.90	\N	S	0	Shopper	2022-04-17	22:45:04
8665	AZEITE  PORTUGUÊS EXTRA VIRGEM GALLO RESERVA 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/azeite_reserva_gallo_500ml_5485.jpg	38.49	\N	S	0	Shopper	2022-04-17	22:45:04
8666	AZEITE  PORTUGUÊS TIPO ÚNICO GALLO LATA 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/azeite_unico_lata_gallo_500ml_5485.jpg	23.99	\N	S	0	Shopper	2022-04-17	22:45:05
8667	AZEITE ITALIANO EXTRA VIRGEM RAIOLA 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/3960RAIOLA.jpg	31.49	\N	S	0	Shopper	2022-04-17	22:45:05
8668	AZEITE EXTRA VIRGEM ANDORINHA SPRAY 200ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/a437034b-4c9e-495b-985a-eaf873df3773.jpg	26.99	\N	S	0	Shopper	2022-04-17	22:45:05
8669	AZEITE PORTUGUÊS EXTRA VIRGEM ANDORINHA ORGÂNICO 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/Organico.png	34.90	\N	S	0	Shopper	2022-04-17	22:45:06
8670	AZEITE PORTUGUÊS EXTRA VIRGEM ANDORINHA SELEÇÃO 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/Selecao.png	30.90	\N	S	0	Shopper	2022-04-17	22:45:06
8671	AZEITE PORTUGUÊS EXTRA VIRGEM ANDORINHA VINTAGE 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/Vintage.png	35.49	\N	S	0	Shopper	2022-04-17	22:45:07
8672	AZEITE EXTRA VIRGEM BORGES 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1438305757_syxJ60c0W3v5X2S8DW4Nb6qheh3SAg.jpg	25.99	\N	S	0	Shopper	2022-04-17	22:45:07
8673	AZEITE CARBONELL EXTRA VIRGEM 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1438306982_7XtSGN5Hlx9L0b9PMM2yBM36mrj698.jpg	28.99	\N	S	0	Shopper	2022-04-17	22:45:07
8674	AZEITE BOMBAY EXTRAVIRGEM COM PIMENTA 250ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/6888.png	34.90	\N	S	0	Shopper	2022-04-17	22:45:08
8675	AZEITE EXTRA VIRGEM BOMBAY HERBES DE PROVENCE 250ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/6887.png	34.90	\N	S	0	Shopper	2022-04-17	22:45:08
8676	ÓLEO DE GERGELIM NATURAL SÉSAMO REAL 250ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/ff0591cb-dc6e-441a-8694-f119ac7e7322.jpg	25.49	\N	S	0	Shopper	2022-04-17	22:45:09
8677	ÓLEO DE GERGELIM TORRADO HOT SÉSAMO REAL 100ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/b8787c81-d22e-46f5-ba6e-dd7316c7fa46.jpg	13.59	\N	S	0	Shopper	2022-04-17	22:45:09
8678	ÓLEO DE GERGELIM TORRADO HOT SÉSAMO REAL 250ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/3c87a536-a28f-43c6-a0e2-e5fdbe602f0f.jpg	25.49	\N	S	0	Shopper	2022-04-17	22:45:09
8679	ÓLEO   DE CANOLA LIZA 900ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/d43f2bbb-fc8b-49f8-8944-c2bc47e57f13.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:45:10
8680	ÓLEO   DE GIRASSOL LIZA 900ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/08f31698-5e4f-4b76-ac25-d85054ba15a0.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:45:10
8681	ÓLEO   DE MILHO LIZA 900ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/bdff693e-a006-4d90-875d-053d3db7a7fc.jpg	16.29	\N	S	0	Shopper	2022-04-17	22:45:11
8682	ÓLEO DE CANOLA PURILEV 900ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1438351177_D3qTZK47BNXKLHSx6vnz1c8mCI0mO8.jpg	18.49	\N	S	0	Shopper	2022-04-17	22:45:11
8683	ÓLEO  DE CANOLA SALADA 900ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/86985131-9f14-4123-92fb-c8ff6fdb9b0b.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:45:11
8684	ÓLEO  DE GIRASSOL SALADA 900ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/689c75f4-0451-46cd-a190-532eb67a1916.jpg	14.49	\N	S	0	Shopper	2022-04-17	22:45:12
8685	ÓLEO  DE MILHO SALADA 900ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/4cef4f1d-013a-4820-8edf-f4c367065da4.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:45:12
8686	ÓLEO  DE SOJA SOYA 900ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1438353292_3VZD9j42Nby6dtMukzd11ANHPNJbAI.jpg	8.69	\N	S	0	Shopper	2022-04-17	22:45:13
8687	ÓLEO DE COCO COPRA EXTRA VIRGEM 200ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/oleo-de-coco-200ml-copra-coco-2471-0748-1742-1-product.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:45:13
8688	ÓLEO DE COCO COPRA SEM SABOR 200ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/oleo_de_coco_copra_sem_sabor.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:45:13
8689	ÓLEO DE COCO EXTRA VIRGEM COPRA SACHE 15ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/e5ba2562-fea1-4ace-95c2-285dfcd74026.jpg	2.49	\N	S	0	Shopper	2022-04-17	22:45:14
8690	OLEO DE GERGELIM TORRADO KARUI 100ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/4de4e032-40a7-4e58-9ea7-bf6229d45e3c.jpg	17.29	\N	S	0	Shopper	2022-04-17	22:45:14
8691	PIMENTA COM AZEITE GALLO EXTRA FORTE 50ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/azeite_com_pimenta_extra_forte_gallo_50ml_5485.jpg	22.49	\N	S	0	Shopper	2022-04-17	22:45:15
8692	PIMENTA COM AZEITE GALLO ORIGINAL 50ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/azeite_com_pimenta_original_gallo_50ml_5485.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:45:15
8693	AZEITE DE OLIVA ITALIANO EXTRA VIRGEM FILIPPO BERIO 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/0e18de67-c867-4cb7-81f6-291668694c7d.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:45:15
8694	ÓLEO DE COCO SOCOCO EXTRA VIRGEM 200ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/c83db281-dd45-4e72-a5cb-37fd766211b0.jpg	24.99	\N	S	0	Shopper	2022-04-17	22:45:16
8695	AZEITE EXTRA VIRGEM ALMA LUSA 500ML	\N	Alimentos	oleos e azeites	\N	https://d2om08pcbtz1n1.cloudfront.net/760933f8-76a9-47a3-8c27-506574a3ae41.jpg	22.99	\N	S	0	Shopper	2022-04-17	22:45:16
8696	CREME VERDE DE ERVILHA, CENOURA E CHEIRO VERDE ZERO BIO BLEND 260G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/15f6d56b-0eaa-432a-9fba-07658d43a7d8.jpg	10.29	\N	S	0	Shopper	2022-04-17	22:45:25
8697	MIX FIBRA COM MIX DE QUINOA + PAINÇO ZERO BIO BLEND 240G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/326650c0-8023-4c24-9477-8b82dd20478e.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:45:25
8698	RISOTO DE COGUMELOS COM ARROZ ARBÓRIO, SHITAKE E FUNGHI ZERO BIO BLEND 280G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/8011f866-4879-4165-b2b3-c6ae2faeecf4.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:45:25
8699	SOPA ROSA DE LENTILHA, MIX DE QUINOA E ALHO PORÓ BIO BLEND ZERO 160G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/17634fa2-86aa-4078-8722-bf3dea56a180.jpg	8.89	\N	S	0	Shopper	2022-04-17	22:45:26
8700	PALITINHO DE TAPIOCA NUU 300G C/ 3UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/bf014e32-19d0-4679-9183-fff3d5c47c47.jpg	36.18	\N	S	0	Shopper	2022-04-17	22:45:26
8701	PÃO DE QUEIJO NUU MÉDIO 300G C/ 3UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/71ec2f28-b3c6-465d-ab2a-62d464a347c2.png	36.18	\N	S	0	Shopper	2022-04-17	22:45:27
8702	PÃO DE QUEIJO NUU PEQUENO 300G C/ 3UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/76aba974-434d-4087-a4ed-7fb56aa2e5c6.png	36.18	\N	S	0	Shopper	2022-04-17	22:45:27
8703	PÃO DE QUEIJO NUU SUPER GRANDE 1KG	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/45768743-ed66-4ace-864d-2474bb1e3fdc.png	33.49	\N	S	0	Shopper	2022-04-17	22:45:27
8704	SPAGHETTI DE PALMITO PUPUNHA GOLDEN 255G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/Untitled_design_84.png	16.79	\N	S	0	Shopper	2022-04-17	22:45:28
8705	ARROZ COZINHA & SABOR TIO JOÃO COM GALINHA 175G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/galinha.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:45:28
8706	ARROZ COZINHA FÁCIL TIO JOÃO À GREGA 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/grega.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:45:29
8707	ARROZ COZINHA FÁCIL TIO JOÃO COM ERVAS FINAS 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/tiojoaoarrozervasfinas2654.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:45:29
8708	PIZZA  BRÁZ VELOCE CASTELÕES 490G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/ddf9826d-9a39-4fe9-a786-820f260c0556.jpg	54.90	\N	S	0	Shopper	2022-04-17	22:45:29
8709	PIZZA  BRÁZ VELOCE MUSSARELA 500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/bbc5c974-f334-4b88-820d-f242fe287e65.jpg	45.90	\N	S	0	Shopper	2022-04-17	22:45:30
8710	PIZZA  BRÁZ VELOCE SABOR BRÁZ 580G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/52a8d835-fd26-4708-9847-cde7146ef6d4.jpg	49.90	\N	S	0	Shopper	2022-04-17	22:45:30
8711	PIZZA BRÁZ VELOCE QUATRO QUEIJOS 620G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/d82b01a0-9c42-47a3-9bed-828be9822ed0.jpg	54.90	\N	S	0	Shopper	2022-04-17	22:45:31
8712	HAMBURGUER BOVINO ORGÂNICO KORIN CONGELADO 340G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/hamburguerorg340gkorin6462.jpg	28.49	\N	S	0	Shopper	2022-04-17	22:45:31
8713	ATUM VEGETAL DO FUTURO 150G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/535b09fb-dec9-4aed-acf9-16bed46a57f2.jpg	13.59	\N	S	0	Shopper	2022-04-17	22:45:31
8714	PATÊ DE ATUM GOMES DA COSTA 150G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/1d0f40c5-ca1c-4f1b-99d9-16d389daae5b.jpg	10.19	\N	S	0	Shopper	2022-04-17	22:45:32
8715	PATE DE PIMENTA COQUEIRO COM ATUM 170G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/812b2a56-0cd3-4954-b674-391c54356371.jpg	9.49	\N	S	0	Shopper	2022-04-17	22:45:32
8716	EMPANADOS TRADICIONAL SEARA TEKITOS 300G C/ 3UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/943e0081-e07c-4457-b55b-1241a443a6e6.jpg	29.97	\N	S	0	Shopper	2022-04-17	22:45:33
8717	SALSICHA BRANCA SALSA WEISSWURST BERNA 300G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/373fdbf2-464c-44b9-8d09-c7feca2d94ca.jpg	18.99	\N	S	0	Shopper	2022-04-17	22:45:33
8718	SALSICHA CERVELÁ BERNA 300G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/54cabcfc-6dc1-4497-bb98-807e180e68ed.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:45:33
8719	SALSICHA DE CARNE VITELA E SUINA KALBSBRATWURST BERNA 260G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/1018e50a-15e3-478b-992b-f4fdbb9cfeb1.jpg	16.29	\N	S	0	Shopper	2022-04-17	22:45:34
8720	SALSICHA DEBREZINER BERNA 290G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/a807efed-e2a5-4a8c-9e5b-d87d49e58fb7.jpg	18.99	\N	S	0	Shopper	2022-04-17	22:45:34
8721	SALSICHA FRANKFURTER BERNA 320G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/270827c9-7065-4a2a-a395-0aab8ce77626.jpg	18.49	\N	S	0	Shopper	2022-04-17	22:45:35
8722	SALSICHA SCHUBLIG BERNA 400G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/2447f267-3a65-436e-a48b-4f2240edce43.jpg	18.99	\N	S	0	Shopper	2022-04-17	22:45:35
8723	SALSICHA SWISS DOG BERNA 370G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/4610beb3-8a4e-43b2-91c4-d1c94946c7a8.jpg	22.99	\N	S	0	Shopper	2022-04-17	22:45:35
8724	SALSICHA VIENA APERITIVO BERNA 300G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/e8e24f9a-0d7a-45fb-92d1-de5f198c3adf.jpg	18.99	\N	S	0	Shopper	2022-04-17	22:45:36
8725	CHUCRUTE COM BACON TEMPERADO E COZIDO BERNA 400G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/5e798b12-aba3-411c-a3fb-6b5949f0f747.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:45:36
8726	PATÊ DE CARNE DE PATO E FRANGO BERNA 100G C/ 2UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/d5639d59-55e7-4341-b526-1912bb5d60db.jpg	17.98	\N	S	0	Shopper	2022-04-17	22:45:37
8727	PATÊ DE FÍGADO DE FRANGO BERNA 100G + PATÊ DE CARNE DE PATO E FRANGO BERNA 100G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/4b428b2a-f5ec-486a-84be-7b6f28e54ad2.jpg	16.88	\N	S	0	Shopper	2022-04-17	22:45:37
8728	PATÊ DE VITELA 100G + PATÊ DE FÍGADO DE FRANGO 100G + PATÊ DE CARNE DE PATO E FRANGO BERNA 100G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/55f74a56-7059-4883-bd96-c6aca2992cb5.jpg	26.67	\N	S	0	Shopper	2022-04-17	22:45:37
8729	PATÊ DE VITELA BERNA 100G + PATÊ DE CARNE DE PATO E FRANGO BERNA 100G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/67bb7768-882b-4eda-b05f-89b6c84bb14e.jpg	18.78	\N	S	0	Shopper	2022-04-17	22:45:38
8730	PATÊ DE VITELA BERNA 100G + PATÊ DE FÍGADO DE FRANGO BERNA 100G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/10b1c6ca-9d65-4888-b0d6-bb73d675dba3.jpg	17.68	\N	S	0	Shopper	2022-04-17	22:45:38
8731	PATÊ DE VITELA BERNA 100G C/ 2UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/4340ab3f-e22f-4e17-ab01-52a2a454c011.jpg	19.58	\N	S	0	Shopper	2022-04-17	22:45:39
8732	SALSICHA VEGETARIANA BERNA 360G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/9ef28b08-e9d8-4420-be4d-1bb3dd386dbf.jpg	25.49	\N	S	0	Shopper	2022-04-17	22:45:39
8733	LINGUIÇA CALABRESA COZIDA BERNA 260G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/564ce226-2a20-4750-a9cc-f025de25ac85.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:45:40
8734	LINGUIÇA DE CARNE SUÍNA DEFUMADA COCKTAIL BERNA 260G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/a57c149d-a4d3-4dbb-995c-8abf51bc0c77.jpg	16.99	\N	S	0	Shopper	2022-04-17	22:45:40
8735	LINGUIÇA DE CORDEIRO BERNA 290G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/81f44ae6-10fd-4adc-b359-15bd021236e5.jpg	24.49	\N	S	0	Shopper	2022-04-17	22:45:40
8736	LINGUIÇA MISTA C/ QUEIJO PROVOLONE APERITIVO BERNA 300G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/46a1de45-77d4-4e2d-ada2-b5a92f7e61dc.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:45:41
8737	LINGUIÇA MISTA C/ QUEIJO PROVOLONE CARACOL BERNA 400G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/0cc23a55-484c-4936-b6de-0cb9c784ada1.jpg	29.49	\N	S	0	Shopper	2022-04-17	22:45:41
8738	PIZZA DE CALABRESA SEARA 460G C/ 2UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/ac7110e6-9010-43d4-bf88-bbd3fff0eacf.jpg	27.38	\N	S	0	Shopper	2022-04-17	22:45:42
8739	PIZZA DE FRANGO COM CATUPIRY SEARA 460G C/ 2UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/f7096a7a-d59f-43e5-8804-42884816b9e2.jpg	27.38	\N	S	0	Shopper	2022-04-17	22:45:42
8740	PIZZA DE LOMBO COM CATUPIRY SEARA 460G C/ 2UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/4d2915f3-e759-4ea3-8373-082b85d1fa96.jpg	27.26	\N	S	0	Shopper	2022-04-17	22:45:42
8741	PIZZA QUATRO QUEIJOS SEARA 460G C/ 2UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/d6f77896-f5c0-4929-8369-161380c9bff1.jpg	27.26	\N	S	0	Shopper	2022-04-17	22:45:43
8742	HAMBURGUER TRADICIONAL SEARA GOURMET 360G C/ 2UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/74bd2caf-5626-492f-9e7a-51197bedff65.jpg	45.08	\N	S	0	Shopper	2022-04-17	22:45:43
8743	PIZZA CALABRESE SEARA GOURMET 450G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/59ee6bb5-e765-4eba-a8a7-c3b4aa307076.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:45:44
8744	PIZZA MARGHERITA SEARA GOURMET 450G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/8be2fc24-1e39-45f8-80a0-068471da3a4e.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:45:44
8745	TEXAS BURGUER SEARA 672G C/ 2UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/71bca7f4-42ba-48f4-88c4-b4a5c310f9e9.jpg	37.90	\N	S	0	Shopper	2022-04-17	22:45:44
8746	SALADA COM ATUM, BATATA DOCE E AZEITE DE OLIVA GOMES DA COSTA 150G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/193b18da-8cfb-46f4-aa2e-f636dc469a9a.jpg	10.19	\N	S	0	Shopper	2022-04-17	22:45:45
8747	SALADA GOMES DA COSTA COM ATUM E BATATA 150G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/b7df03cb-372f-4485-b8f2-79b83cd9a9e8.jpg	10.19	\N	S	0	Shopper	2022-04-17	22:45:45
8748	HAMBURGUER CONGELADO SLIDERS SABOR AMERICANO DE 100G C/ 6UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/adecadf6-ba89-4fcb-bbe7-7f717fc68160.jpg	55.59	\N	S	0	Shopper	2022-04-17	22:45:46
8749	HAMBURGUER CONGELADO SLIDERS SABOR BACON DE 100G C/ 6UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/5af2383b-8a51-4f8c-ad8b-7c3306a4ee93.jpg	55.59	\N	S	0	Shopper	2022-04-17	22:45:46
8750	HAMBURGUER CONGELADO SLIDERS SABOR ORIGINAL DE 95G C/ 6UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/ce0c1b2e-f91e-4373-a4ad-7ab8d170b744.jpg	55.59	\N	S	0	Shopper	2022-04-17	22:45:46
8751	TOFU ORGANICO ECOBRAS DEFUMADO 100G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/a73f7245-c0aa-4e8d-be11-132d944658a3.jpg	24.49	\N	S	0	Shopper	2022-04-17	22:45:47
8752	TOFU ORGANICO ECOBRAS FIRME 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/ea8b37a5-4b81-4a15-8787-984a0ab3f365.jpg	18.79	\N	S	0	Shopper	2022-04-17	22:45:47
8753	SOPA VONO ABÓBORA COM CARNE 17G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/vonoaboboracomcarne10428.jpg	2.39	\N	S	0	Shopper	2022-04-17	22:45:48
8754	SOPA VONO CALDO VERDE 17G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/vonocaldoverde10426.jpg	2.39	\N	S	0	Shopper	2022-04-17	22:45:48
8755	SOPA VONO CHEF CREME DE CEBOLA 58G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/VONO11369.jpg	5.39	\N	S	0	Shopper	2022-04-17	22:45:48
8756	CREME DE CEBOLA MAGGI 68G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/c2e2cc94-7b9c-4414-9d8f-3f389ea2f5e1.jpg	5.19	\N	S	0	Shopper	2022-04-17	22:45:49
8757	SOPA DE CEBOLA MAGGI 68G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/d5ce7af8-8110-42a2-8416-b4fb702ef1ad.jpg	5.29	\N	S	0	Shopper	2022-04-17	22:45:49
8758	SOPÃO CANJA DE GALINHA MAGGI 200G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/8d82b5ea-6dd9-408f-b8cc-52cc2c148fbb.png	8.39	\N	S	0	Shopper	2022-04-17	22:45:50
8759	SOPÃO CARNE COM LEGUMES EQUILIBRIUM MAGGI 150G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/78823a3f-952f-4452-b5e0-3c625f917a95.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:45:50
8760	SOPÃO CARNE COM LEGUMES MAGGI 200G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/e35d7004-cfa9-4073-acd6-2988381113f7.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:45:50
8761	SOPÃO GALINHA COM LEGUMES EQUILIBRIUM MAGGI 150G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/d4e516d0-2f31-4b7d-8c1e-56e29add43a9.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:45:51
8762	SOPÃO GALINHA COM LEGUMES MAGGI 200G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/2788a617-5ec2-4e39-8b80-ff546a795f6a.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:45:51
8763	BATATA INTEIRA COZIDA NO VAPOR VAPZA 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/BATATAINTEIRASINGLE745.jpg	6.09	\N	S	0	Shopper	2022-04-17	22:45:52
8764	BATATA INTEIRA COZIDA NO VAPOR VAPZA 500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/BATATAINTEIRA745.jpg	11.19	\N	S	0	Shopper	2022-04-17	22:45:52
8765	CARNE SECA DESFIADA COZIDA COM SAL VAPZA 400G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/CARNESECA947.jpg	51.90	\N	S	0	Shopper	2022-04-17	22:45:52
8766	CARNE SUÍNA DESFIADA COZIDA NO VAPOR VAPZA 400G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/CARNESUINA647.jpg	29.99	\N	S	0	Shopper	2022-04-17	22:45:53
8767	FEIJÃO CARIOCA COZIDO NO VAPOR VAPZA 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/FEIJAOCARIOCASINGLE349.jpg	7.49	\N	S	0	Shopper	2022-04-17	22:45:53
8768	FEIJÃO CARIOCA COZIDO NO VAPOR VAPZA 500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/FEIJAOCARIOCA349.jpg	12.99	\N	S	0	Shopper	2022-04-17	22:45:54
8769	FEIJÃO PRETO COZIDO NO VAPOR  VAPZA 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/FEIAOPRETOSINGLE489.jpg	6.09	\N	S	0	Shopper	2022-04-17	22:45:54
8770	FEIJÃO PRETO COZIDO NO VAPOR VAPZA 500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/FEIAOPRETO489.jpg	11.59	\N	S	0	Shopper	2022-04-17	22:45:54
8771	FEIJÃO PRETO ORGÂNICO COZIDO NO VAPOR VAPZA 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/FEIAOPRETOORG489.jpg	7.49	\N	S	0	Shopper	2022-04-17	22:45:55
8772	GRÃO DE BICO COZIDO NO VAPOR VAPZA 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/GRAODEBICOSINGLE632.jpg	6.89	\N	S	0	Shopper	2022-04-17	22:45:55
8773	GRÃO DE BICO COZIDO NO VAPOR VAPZA 500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/GRAODEBICO632.png	11.89	\N	S	0	Shopper	2022-04-17	22:45:56
8774	LENTILHA COZIDA NO VAPOR VAPZA 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/LENTILHA943.jpg	6.99	\N	S	0	Shopper	2022-04-17	22:45:56
8775	MANDIOCA COZIDA NO VAPOR VAPZA 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/MANDIOQUINHA597.jpg	7.29	\N	S	0	Shopper	2022-04-17	22:45:56
8776	MANDIOQUINHA COZIDA NO VAPOR VAPZA 500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/VAPZABAROA236.jpg	14.39	\N	S	0	Shopper	2022-04-17	22:45:57
8777	MIX 7 GRÃOS ORGÂNICO COZIDO NO VAPOR VAPZA 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/SETEGRAOS489.jpg	7.99	\N	S	0	Shopper	2022-04-17	22:45:57
8778	MIX QUINOA ORGÂNICA COZIDA NO VAPOR VAPZA 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/MIXQUINOA489.jpg	11.49	\N	S	0	Shopper	2022-04-17	22:45:58
8779	PEITO DE FRANGO DESFIADO COZIDO VAPZA 400G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/FRANGO349.jpg	25.49	\N	S	0	Shopper	2022-04-17	22:45:58
8780	PEITO DE FRANGO DESFIADO ORGÂNICO COZIDO VAPZA 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/FRANGOORG349.jpg	40.90	\N	S	0	Shopper	2022-04-17	22:45:59
8781	SELETA DE LEGUMES COZIDA NO VAPOR VAPZA 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/SELETA986.jpg	7.39	\N	S	0	Shopper	2022-04-17	22:45:59
8782	SELETA DE LEGUMES COZIDA NO VAPOR VAPZA 500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/SELETAVAPZA236.jpg	11.59	\N	S	0	Shopper	2022-04-17	22:45:59
8783	ARROZ INTEGRAL ORGÂNICO COZIDO NO VAPOR VAPZA 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/ARROSVAPZA269.jpg	6.79	\N	S	0	Shopper	2022-04-17	22:46:00
8784	QUINOA ORGÂNICA COZIDA NO VAPOR VAPZA 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/Untitled_design_55.png	12.69	\N	S	0	Shopper	2022-04-17	22:46:00
8785	PALMITO DE PUPUNHA GOLDEN GRILL PRONTO PARA ASSAR 550G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/e5b2c3d4-270e-4818-8b50-a1c286488fa9.jpg	31.90	\N	S	0	Shopper	2022-04-17	22:46:01
8786	PALMITO PUPUNHA BONDUELLE INTEIRO 300G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1454090715_RO5JDWdZsO1dPC96x932fu3mz5Zv0V.jpg	27.49	\N	S	0	Shopper	2022-04-17	22:46:01
8787	CANELONE SADA CUISINE ESPINAFRE E MUSSARELA  500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/357d0fc2-e11a-4794-96b1-484a935ce76a.jpg	41.90	\N	S	0	Shopper	2022-04-17	22:46:01
8788	CANELONE SADA CUISINE PRESUNTO E QUEIJO 500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/ce301fcd-7c6f-4179-b0bc-b473c70b0d72.jpg	39.90	\N	S	0	Shopper	2022-04-17	22:46:02
8789	CAPPELLETTI SADA CUISINE CARNE 500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/ea1a1fd2-7b02-4420-a219-505efccba477.jpg	37.90	\N	S	0	Shopper	2022-04-17	22:46:02
8790	GNOCCHI SADA CUISINE DE BATATA 500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/9014d455-aebf-4eca-bfd3-1e26f04d039b.jpg	28.49	\N	S	0	Shopper	2022-04-17	22:46:03
8791	RONDELLE SADA CUISINE ESPINAFRE E MUSSARELA  500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/89352667-2f7c-4085-8872-50a3480b2384.jpg	41.90	\N	S	0	Shopper	2022-04-17	22:46:03
8792	RONDELLE SADA CUISINE PRESUNTO E QUEIJO 500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/2c59d135-decd-4ad7-9f2a-2f3ed977b8c3.jpg	39.90	\N	S	0	Shopper	2022-04-17	22:46:03
8793	TORTELLINI SADA CUISINE EMMENTHAL E LIMÃO SICILIANO 500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/6c7db86b-12d5-47ca-ba4f-926a2a15a68a.jpg	41.90	\N	S	0	Shopper	2022-04-17	22:46:04
8794	TORTELLINI SADA CUISINE INTEGRAL MUSSARELA DE BÚFALA 500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/d9b6356b-dee7-4dca-b7fa-1068c2c89fbf.jpg	39.90	\N	S	0	Shopper	2022-04-17	22:46:04
8795	TORTELLINI SADA CUISINE MARGHERITA - VEGANO 500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/d12eaec0-55b0-4582-a5f4-f0279c48d817.jpg	37.90	\N	S	0	Shopper	2022-04-17	22:46:05
8796	TORTELLINI SADA CUISINE MUSSARELA DE BÚFALA 500G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/4abc214b-66d1-45ff-9a49-3fa980a8e868.jpg	38.90	\N	S	0	Shopper	2022-04-17	22:46:05
8797	ARROZ CALDOSO DE CARNE GREENTABLE 320G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/dfa5408b-75c4-4672-8b9b-d281fd69f5a4.jpg	33.90	\N	S	0	Shopper	2022-04-17	22:46:05
8798	HAMBURGUER DE KAFTA E LEGUMES GREENTABLE 320G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/89513da3-7b3c-433c-b66f-fbdebda1c5c6.jpg	38.90	\N	S	0	Shopper	2022-04-17	22:46:06
8799	HAMBURGUER ITALIANO E ESPAGUETE DE PUPUNHA NA MANTEIGA DE SALVIA GREENTABLE 320G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/cf9ab973-b036-4409-8c6f-71c9245f3263.jpg	38.90	\N	S	0	Shopper	2022-04-17	22:46:06
8800	PARMEGIANA DE FRANGO COM PURÊ DE BATATA DOCE TRUFADO GREENTABLE 355G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/fa7e3284-8923-4b73-baca-79eae97bdf1f.jpg	38.90	\N	S	0	Shopper	2022-04-17	22:46:07
8801	PICADINHO COM MEXIDINHO DE ARROZ SETE GRÃOS GREENTABLE 320G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/36dc287c-e7e8-4e77-aa1b-8ec60c68535e.jpg	38.90	\N	S	0	Shopper	2022-04-17	22:46:07
8802	REQUEIJÃO CREMOSO CHEDDAR CATUPIRY SACHÊ 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/14aca5b1-a172-483a-bb67-ade10a698f56.jpg	14.19	\N	S	0	Shopper	2022-04-17	22:46:07
8803	REQUEIJÃO CREMOSO TRADICIONAL CATUPIRY SACHÊ 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/e880f035-a762-4aae-890a-f22d67679172.jpg	14.19	\N	S	0	Shopper	2022-04-17	22:46:08
8804	SALMÃO COM CROSTA DE PÁPRICA E LEGUMES À TAILANDESA GREENTABLE 320G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/e2d29d87-c48e-47c3-a094-a9cfe9b68586.jpg	44.90	\N	S	0	Shopper	2022-04-17	22:46:08
8805	SOBRECOXA DESOSSADA ASSADA COM PURÊ DE MILHO GREENTABLE 350G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/45e96192-3588-4388-9962-fba6f566890c.jpg	33.90	\N	S	0	Shopper	2022-04-17	22:46:09
8806	SARDELLA DAMM 120G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/cc9dd3ae-0a2f-40fc-8e6e-3f4c958404b3.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:46:09
8807	ARROZ BRANCO MINUTO CASEIRO CAMIL 240G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/a409801d-09b7-472e-b868-b369c4bdae37.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:46:09
8808	FEIJÃO CARIOCA PRONTO C/ TEMPERO CAMIL 380G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/5e8e6333-60df-465c-bff0-6bd4a978ba59.jpg	6.69	\N	S	0	Shopper	2022-04-17	22:46:10
8809	FEIJÃO CARIOCA SEM TEMPERO PRONTO CAMIL 490G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/54083524-a93a-4fcd-a861-279c91d55a49.jpg	6.79	\N	S	0	Shopper	2022-04-17	22:46:10
8810	RAP 10 TRADICIONAL 330G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/cfac3652-04a6-4d80-a2b7-51c4ea781873.png	8.39	\N	S	0	Shopper	2022-04-17	22:46:11
8811	MINI MUFFINS ANA MARIA DE BAUNILHA COM GOTAS DE CHOCOLATE LITTLE BITES 66G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/a44672a3-0347-4d5b-ae1f-fbc529a10a87.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:46:11
8812	MINI MUFFINS ANA MARIA DE CHOCOLATE COM GOTAS LITTLE BITES 66G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/189afd0b-ead8-4fe2-872c-8d24f95833ae.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:46:11
8813	PÃO FRANCÊS PRÉ-ASSADO SCHAR SEM GLÚTEN 130G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/d079cbca-4084-4921-bd8a-0a8e446f6562.jpg	13.69	\N	S	0	Shopper	2022-04-17	22:46:12
8814	MANTEIGA DE COCO QUALICOCO SABOR MANTEIGA SEM SAL 200G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/48ef73d0-89c9-46a2-b637-e193170c849f.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:46:12
8815	IOGURTE GREGO DANONE FRUTAS VERMELHAS 400G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/074f5414-23bb-40d8-a4b5-972b0d84a781.jpg	9.39	\N	S	0	Shopper	2022-04-17	22:46:13
8816	IOGURTE LÍQUIDO YOPRO CAFÉ EXPRESSO 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/02391725-d9f5-464d-9e8b-8752dc727974.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:46:13
8817	IOGURTE LÍQUIDO YOPRO DOCE DE LEITE 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/25137467-f59b-4e75-bb96-dfca8f2e3a6f.png	10.49	\N	S	0	Shopper	2022-04-17	22:46:13
8818	IOGURTE LÍQUIDO YOPRO MORANGO 250G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/5e22b0a0-2458-4372-bcde-5b73f4946937.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:46:14
8819	IOGURTE ZERO LACTOSE YOPRO COCO CREMOSO 160G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/b699f610-9acb-4074-9f3d-b8eabda17042.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:46:14
8820	IOGURTE ZERO LACTOSE YOPRO MORANGO 160G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/41d8d134-2b69-48ba-a747-202ff4457e7e.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:46:15
8821	IOGURTE ZERO LACTOSE YOPRO NATURAL 160G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/5a81db3c-7aae-46ad-8e97-a001aa5ff430.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:46:15
8822	IOGURTE LÍQUIDO SABOR MORANGO MOLICO 170G C/ 4UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/faf64c92-4710-4811-a21f-990de21052c8.png	9.96	\N	S	0	Shopper	2022-04-17	22:46:15
8823	LEITE FERMENTADO CHAMYTO 450G C/ 2UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/2f90ac41-3b4d-4125-84b5-f0958d2115f4.png	10.48	\N	S	0	Shopper	2022-04-17	22:46:16
8824	SOBREMESA SABOR CHOCOLATE CHANDELLE 360G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/7e31059e-8eda-4913-9970-049c83772e60.png	6.89	\N	S	0	Shopper	2022-04-17	22:46:16
8825	IOGURTE LÍQUIDO SABOR MORANGO, BAUNILHA E AVEIA NESFIT 850G	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/faefd894-317d-457f-b3cf-084770053d20.jpg	13.59	\N	S	0	Shopper	2022-04-17	22:46:17
8826	IOGURTE LÍQUIDO SABOR FRUTAS VERMELHAS NESFIT 170G C/ 3UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/af581023-fb8f-4ff2-8551-55949f0ce40a.jpg	6.87	\N	S	0	Shopper	2022-04-17	22:46:17
8827	IOGURTE LÍQUIDO SABOR MORANGO, BAUNILHA E AVEIA NESFIT 170G C/ 3UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/aba4e6f2-0f15-4ee3-8d28-78b2b9e9cbf7.jpg	6.87	\N	S	0	Shopper	2022-04-17	22:46:18
8828	IOGURTE GREGO TRADICIONAL NESTLÉ 90G C/ 4UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/588400eb-9c4f-44a4-a74f-6a4334933cc1.png	9.96	\N	S	0	Shopper	2022-04-17	22:46:18
8829	IOGURTE NATURAL COM MEL NESTLÉ 170G C/ 3UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/275cc571-a6c1-4c83-9159-c2b770fa2ed3.png	7.77	\N	S	0	Shopper	2022-04-17	22:46:18
8830	IOGURTE NATURAL NESTLÉ 170G C/ 3UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/0a1aed7d-490d-4ce8-80fe-e0a1908fbb0d.png	7.77	\N	S	0	Shopper	2022-04-17	22:46:19
8831	IOGURTE LÍQUIDO SABOR MAÇÃ E BANANA NINHO 170G C/ 3UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/1c1ec4d8-f5c2-45dc-b06d-cc3c592bb709.png	5.16	\N	S	0	Shopper	2022-04-17	22:46:19
8832	IOGURTE NATURAL DESNATADO NESTLÉ 160G C/ 4UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/d524360a-c6e1-4490-b59f-c16fe1b5579d.png	10.48	\N	S	0	Shopper	2022-04-17	22:46:20
8833	BEBIDA LÁCTEA SABOR VITAMINA NESTON 170G C/ 3UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/75db79bd-18e0-4be6-8492-53ce2e632fd3.png	5.13	\N	S	0	Shopper	2022-04-17	22:46:20
8834	IOGURTE SABOR MORANGO NESTLÉ 170G C/ 4UN	\N	Alimentos	pronto para consumo	\N	https://d2om08pcbtz1n1.cloudfront.net/f363088a-9126-42c8-9ef8-65bace8ed8d3.png	10.48	\N	S	0	Shopper	2022-04-17	22:46:20
8835	BACON EM CUBOS SEARA GOURMET 140G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/54238ee0-6743-4ff9-af30-584620289d58.jpg	20.98	\N	S	0	Shopper	2022-04-17	22:46:28
8836	BACON FATIAS SEARA GOURMET 250G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/20579e15-7a4a-4781-b5ea-b9fb27c1be06.jpg	44.68	\N	S	0	Shopper	2022-04-17	22:46:28
8837	PEITO DE PERU FATIADO SEARA 200G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/3c172b06-1d15-4a4a-80c4-b16b49869881.jpg	36.28	\N	S	0	Shopper	2022-04-17	22:46:28
8838	PRESUNTO FATIADO SEARA 200G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/a808e6ca-7aab-44e1-8e5c-eeb86ec84258.jpg	12.98	\N	S	0	Shopper	2022-04-17	22:46:29
8839	SALAME HAMBURGUÊS FATIADO SEARA GOURMET 100G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/6a484bb5-8074-4b20-bf21-7d5973d8debb.jpg	23.48	\N	S	0	Shopper	2022-04-17	22:46:29
8840	SALAME ITALIANO FATIADO SEARA GOURMET 100G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/e6bd1e6a-91c4-44cc-b6c8-c3848a8d300d.jpg	23.48	\N	S	0	Shopper	2022-04-17	22:46:30
8841	PEITO DE FRANGO DEFUMADO FATIA CERATTI 100G C/2 UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/08dcbba0-820d-4e17-8159-99722e37db21.jpg	16.58	\N	S	0	Shopper	2022-04-17	22:46:30
8842	PRESUNTO CRU RAR 80G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/88976c6d-b834-4040-acf5-9ab72c821de8.jpg	18.99	\N	S	0	Shopper	2022-04-17	22:46:30
8843	PRESUNTO DE PARMA RAR 80G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/4f4846dd-ef1a-495a-92ec-50f7ffb65859.jpg	26.99	\N	S	0	Shopper	2022-04-17	22:46:31
8844	SALAME ESPANHOL RAR 80G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/4d20744c-8947-4c05-b0e0-68db99b7a615.jpg	12.09	\N	S	0	Shopper	2022-04-17	22:46:31
8845	QUEIJO TIPO GRANA GRAN FORMAGGIO RAR 200G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/2294ba42-86fd-49ef-a9f0-521efbfb5d3f.jpg	31.90	\N	S	0	Shopper	2022-04-17	22:46:32
8846	QUEIJO TIPO GRANA PADANO LASCAS IMPORTADO RAR 150G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/789b18c0-2a5c-4073-924f-f5149f97512a.jpg	30.49	\N	S	0	Shopper	2022-04-17	22:46:32
8847	QUEIJO TIPO GRANA RALADO GRAN FORMAGGIO RAR 50G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/0e808755-df32-46b2-a636-a93a394a6b26.jpg	6.79	\N	S	0	Shopper	2022-04-17	22:46:32
8848	LINGUIÇA FININHA DEFUMADA SADIA 240G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/db1f8048-9ab6-4948-91b5-158ea5f96e18.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:46:33
8849	LINGUIÇA PAIO DEFUMADA PERDIGÃO 370G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/f82247f0-4cf5-4fae-af62-e5e4c2e5eefa.jpg	18.99	\N	S	0	Shopper	2022-04-17	22:46:33
8850	QUEIJO MUSSARELA TIROLEZ STICK 60G C/3UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/e2f1b049-dd8e-476b-a0e2-8a2880ba9375.jpg	16.68	\N	S	0	Shopper	2022-04-17	22:46:34
8851	KIT EMMENTAL, ESTEPE E GRUYERE TIROLEZ	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/Kit-6_g9LIuhW.jpg	58.09	\N	S	0	Shopper	2022-04-17	22:46:34
8852	SALSICHA SADIA HOT DOG 500G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/SALSICHA-SADIA-HOT-DOG-500G_jtsu9XZ.jpg	28.48	\N	S	0	Shopper	2022-04-17	22:46:34
8853	PRESUNTO COZIDO MAGRO FATIADO SADIA SOLTÍSSIMO 200G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/PRESUNTO-COZIDO-MAGRO-FATIADO-SADIA-SOLTISSIMO-200G_MbOwsxs.jpg	20.98	\N	S	0	Shopper	2022-04-17	22:46:35
8854	QUEIJO MUSSARELA FATIADO SADIA SOLTÍSSIMO 200G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/86100dde-c6c5-444b-886c-b89b2cdcbbf9.jpg	14.19	\N	S	0	Shopper	2022-04-17	22:46:35
8855	SALAME HAMBURGUÊS FATIADO SADIA 100G C/ 3UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/SALAME-HAMBURGUeS-FATIADO-SADIA-100G.jpg	48.90	\N	S	0	Shopper	2022-04-17	22:46:36
8856	SALAME ITALIANO SADIA FATIADO 100G C/ 3UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/SALAME-ITALIANO-SADIA-FATIADO-100G.jpg	51.90	\N	S	0	Shopper	2022-04-17	22:46:36
8857	MORTADELA BOLOGNA C/ PISTACHE CERATTI 150G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/MORTADELA-BOLOGNA-C-PISTACHE-CERATTI-150G_P2CTLBB.jpg	16.78	\N	S	0	Shopper	2022-04-17	22:46:36
8858	MORTADELA BOLOGNA LIGHT FATIADA CERATTI 100G C/ 3UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/MORTADELA-BOLOGNA-LIGHT-FATIADA-CERATTI-100G_jiMdQbZ.jpg	21.96	\N	S	0	Shopper	2022-04-17	22:46:37
8859	MORTADELA BOLOGNA TRADICIONAL CERATTI 150G C/ 3UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/MORTADELA-BOLOGNA-TRADICIONAL-CERATTI-150G_XLuuK9R.jpg	28.47	\N	S	0	Shopper	2022-04-17	22:46:37
8860	SALAMINHO CERATTI 290G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/SALAMINHO_CERATTI_290G_C2_485_KYjPUXh.jpg	45.08	\N	S	0	Shopper	2022-04-17	22:46:38
8861	QUEIJO MUSSARELA LIGHT TIROLEZ 150G C/ 3UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/QUEIJO-MUSSARELA-LIGHT-TIROLEZ-150G_ARWTndh.jpg	33.99	\N	S	0	Shopper	2022-04-17	22:46:38
8862	QUEIJO PRATO LIGHT TIROLEZ 150G C/ 3UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/QUEIJO-PRATO-LIGHT-TIROLEZ-150G_FlIjQDK.jpg	33.99	\N	S	0	Shopper	2022-04-17	22:46:39
8863	QUEIJO PRATO LIGHT ZERO LACTOSE TIROLEZ 150G C/ 3UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/QUEIJO-PRATO-LIGHT-ZERO-LACTOSE-TIROLEZ-150G_YIJtfh5.jpg	34.59	\N	S	0	Shopper	2022-04-17	22:46:39
8864	QUEIJO PRATO TIROLEZ 150G C/ 3UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/QUEIJO-PRATO-TIROLEZ-150G.jpg	29.88	\N	S	0	Shopper	2022-04-17	22:46:39
8865	QUEIJO COALHO TIROLEZ 350G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/QUEIJO-COALHO-TIROLEZ-350G.jpg	43.68	\N	S	0	Shopper	2022-04-17	22:46:40
8866	QUEIJO EMMENTAL TIROLEZ 190G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/QUEIJO-EMMENTAL-TIROLEZ-190G.jpg	41.98	\N	S	0	Shopper	2022-04-17	22:46:40
8867	QUEIJO ESTEPE TIROLEZ 233G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/QUEIJO-ESTEPE-TIROLEZ-233G.jpg	41.98	\N	S	0	Shopper	2022-04-17	22:46:41
8868	QUEIJO GORGONZOLA TIROLEZ 135G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/QUEIJO-GORGONZOLA-TIROLEZ-135G.jpg	28.28	\N	S	0	Shopper	2022-04-17	22:46:41
8869	QUEIJO GOUDA TIROLEZ 188G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/QUEIJO-GOUDA-TIROLEZ-188G.jpg	35.38	\N	S	0	Shopper	2022-04-17	22:46:41
8870	QUEIJO GRUYERE TIROLEZ 190G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/QUEIJO-GRUYERE-TIROLEZ-190G.jpg	41.58	\N	S	0	Shopper	2022-04-17	22:46:42
8871	QUEIJO MINAS MEIA CURA TIROLEZ 600G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/9a1b81b2-d8c7-4046-adf0-dd97833856c2.jpg	40.90	\N	S	0	Shopper	2022-04-17	22:46:42
8872	QUEIJO MINAS TIROLEZ TRADICIONAL 500G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/QUEIJOMINAS11379.jpg	31.49	\N	S	0	Shopper	2022-04-17	22:46:43
8873	QUEIJO MUSSARELA PEDAÇO TIROLEZ 380G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/90baf768-3101-498a-8b3d-68ddb4539e3c.jpg	24.49	\N	S	0	Shopper	2022-04-17	22:46:43
8874	QUEIJO PARMESÃO TIROLEZ 245G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/queijoraparmesao245gtiro685.jpg	28.49	\N	S	0	Shopper	2022-04-17	22:46:43
8875	QUEIJO PRATO PEDAÇO TIROLEZ 380G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/abe005d9-9581-4a21-adee-b412b98ddac1.jpg	24.49	\N	S	0	Shopper	2022-04-17	22:46:44
8876	QUEIJO RALADO TIROLEZ PARMESÃO 50G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/tirolezralado50g128.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:46:44
8877	QUEIJO REINO TIROLEZ 600G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/tirolezreino600g135.jpg	57.90	\N	S	0	Shopper	2022-04-17	22:46:45
8878	QUEIJO TIPO BRIE TIROLEZ 125G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/cb7fe96e-8d28-4ef7-8103-cbefae044497.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:46:45
8879	QUEIJO TIPO CAMEMBERT TIROLEZ 125G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/3626252d-52af-486f-9683-48942ae692e8.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:46:45
8880	QUEIJO TIPO GRANA GRAN MESTRI 150G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/8849.png	20.99	\N	S	0	Shopper	2022-04-17	22:46:46
8881	QUEIJO POLENGUINHO LIGHT 34G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/40bb1804-bf00-49e6-8c54-0cdba41a9dfb.jpg	2.49	\N	S	0	Shopper	2022-04-17	22:46:46
8882	QUEIJO POLENGUINHO LIGHT 68G C/ 4UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/1283808e-726c-4e28-a7b9-62bb9f7df342.jpg	4.88	\N	S	0	Shopper	2022-04-17	22:46:47
8883	QUEIJO POLENGUINHO TRADICIONAL 34G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/bc477ffd-9286-431a-a1e0-d801bc120cfc.jpg	2.49	\N	S	0	Shopper	2022-04-17	22:46:47
8884	QUEIJO POLENGUINHO TRADICIONAL 68G C/ 4UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/240c1fc9-a932-435c-8706-b32c01462751.jpg	4.88	\N	S	0	Shopper	2022-04-17	22:46:47
8885	QUEIJO RALADO FAIXA AZUL PARMESÃO 100G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/queijo_ralado_faixa_azul_100g_EIulu4H.jpg	15.48	\N	S	0	Shopper	2022-04-17	22:46:48
8886	QUEIJO RALADO FAIXA AZUL PARMESÃO 50G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/Faixa_Azul.jpg	8.19	\N	S	0	Shopper	2022-04-17	22:46:48
8887	QUEIJO RALADO QUATÁ PARMESÃO 100G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/quata_ralado_100g_7562.jpg	10.48	\N	S	0	Shopper	2022-04-17	22:46:49
8888	QUEIJO RALADO QUATÁ PARMESÃO 50G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/QUATACINQUENTA463.jpg	5.69	\N	S	0	Shopper	2022-04-17	22:46:49
8889	QUEIJO TIPO GRANA POLENGHI SELECTION 200G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/416c243c-1073-4e17-8871-43f4b6214e08.jpg	33.49	\N	S	0	Shopper	2022-04-17	22:46:49
8890	LINGUIÇA FININHA DEFUMADA SEARA 215G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/3c8dd90e-f0df-4246-9107-3ebb1b7ea9fc.jpg	13.68	\N	S	0	Shopper	2022-04-17	22:46:50
8891	LINGUIÇA PAIO SEARA 370G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/8346359d-e974-4cc3-bd5a-2e3b0e4c8718.jpg	12.09	\N	S	0	Shopper	2022-04-17	22:46:50
8892	LINGUIÇA TIPO CALABRESA SEARA 400G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/ea087425-919d-4d41-b3ac-9e9efd3e8628.jpg	16.29	\N	S	0	Shopper	2022-04-17	22:46:51
8893	LINGUIÇA TOSCANA SEARA 700G C/ 2UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/bad8ff92-d678-4286-b810-5e645fc43002.jpg	45.90	\N	S	0	Shopper	2022-04-17	22:46:51
8894	QUEIJO CAMEMBERT ILE DE FRANCE 125G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/aeeccb93-57a4-4591-8bf6-faad48d779c2.jpg	29.49	\N	S	0	Shopper	2022-04-17	22:46:51
8895	CALABRESA CURADA PIRINEUS 180G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/pirineuscalabresa2165.jpg	28.49	\N	S	0	Shopper	2022-04-17	22:46:52
8896	CHORIZO ESPANHOL PIRINEUS TRADICIONAL 180G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/pirineuschorizoespanhol546.jpg	29.49	\N	S	0	Shopper	2022-04-17	22:46:52
8897	COPA CURADA PIRINEUS FATIADA 100G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/copapirineus16fatiado.jpg	19.29	\N	S	0	Shopper	2022-04-17	22:46:53
8898	QUEIJO 3 QUEIJOS RALADO FRESCO VIGOR 150G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/69bcca63-fffd-4cfa-9001-0ca798433f0a.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:46:53
8899	QUEIJO BRIE VIGOR FRACIONADO 120G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/b3b0369c-85d3-49e2-9dcb-7df4e3973945.jpg	17.79	\N	S	0	Shopper	2022-04-17	22:46:53
8900	QUEIJO DE CABRA CREMOSO SOIGNON 140G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/a7955fef-5eea-4bf6-945c-add17523717a.jpg	40.90	\N	S	0	Shopper	2022-04-17	22:46:54
8901	QUEIJO EMMENTAL VIGOR FRACIONADO 145G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/c4b80f92-261c-451e-b2ec-7f1749b55039.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:46:54
8902	QUEIJO GRANA PADANO SORESINA 125G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/c9298b35-f203-48ca-bc3b-13d5dd851117.jpg	44.90	\N	S	0	Shopper	2022-04-17	22:46:55
8903	QUEIJO GRUYERE VIGOR FRACIONADO 145G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/10fa0f15-1b36-4fcb-b226-e0a557ae6d03.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:46:55
8904	QUEIJO PARMESÃO RALADO FRESCO VIGOR 150G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/39a2d94e-9640-453b-99d8-11cc347d11ec.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:46:55
8905	QUEIJO PROVOLONE QUATÁ FRACIONADO 280G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/queijoprovolonequata1268.jpg	18.49	\N	S	0	Shopper	2022-04-17	22:46:56
8906	QUEIJO RALADO VIGOR 3 QUEIJOS 100G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/quejoralado3vigor12365.jpg	11.29	\N	S	0	Shopper	2022-04-17	22:46:56
8907	QUEIJO RALADO VIGOR PARMESÃO 100G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/queijo_ralado_vigor_100g_325654.png	11.08	\N	S	0	Shopper	2022-04-17	22:46:57
8908	QUEIJO RALADO LA SERENÍSSIMA PARMESÃO 50G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/f4f0b342-b352-4228-a5d1-2476c7ab0170.jpg	4.59	\N	S	0	Shopper	2022-04-17	22:46:57
8909	QUEIJO RALADO VIGOR PARMESÃO 50G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/VIGORQUEIJO697.jpg	6.19	\N	S	0	Shopper	2022-04-17	22:46:57
8910	SALAME TIPO CHORIZO PIRINEUS CANTIMPALO PEPPERONE FATIADO 110G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/PIRIPEPP12492.jpg	19.29	\N	S	0	Shopper	2022-04-17	22:46:58
8911	SALAME TIPO CHORIZO PIRINEUS CANTIMPALO TRADICIONAL FATIADO 110G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/PIRICANT12491.jpg	19.29	\N	S	0	Shopper	2022-04-17	22:46:58
8912	QUEIJO PARMESÃO PRESIDENT 180G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/presidentparmesao180g569.jpg	18.99	\N	S	0	Shopper	2022-04-17	22:46:59
8913	QUEIJO DE RICOTA DEFUMADA TANIA COM PIMENTA FRACIONADO	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/taniaricotacpimenta473.jpg	10.99	\N	S	0	Shopper	2022-04-17	22:46:59
8914	QUEIJO DE RICOTA DEFUMADA TANIA SEM PIMENTA FRACIONADO	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/taniaricotaspimenta472.jpg	11.29	\N	S	0	Shopper	2022-04-17	22:47:00
8915	QUEIJO PARMESÃO TANIA FRACIONADO	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/parmesaotaniafracionado841.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:47:00
8916	QUEIJO PROVOLONE TANIA CURADO DEFUMADO FRACIONADO	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/provolonetaniafracionado845.jpg	25.49	\N	S	0	Shopper	2022-04-17	22:47:00
8917	QUEIJO PROVOLONE TANIA FRESCO DEFUMADO 200G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/provolonetania200g4577.jpg	12.89	\N	S	0	Shopper	2022-04-17	22:47:01
8918	QUEIJO PROVOLONE TANIA FRESCO DEFUMADO 400G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/provolonetania400g459.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:47:01
8919	QUEIJO POLENGUINHO ZERO LACTOSE LIGHT 68G C/ 4UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/59a4aae6-6cdf-4e2d-abad-01d59ee3e159.jpg	5.29	\N	S	0	Shopper	2022-04-17	22:47:02
8920	COPA CURADA E DEFUMADA SPECIALLI 100G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/d73f16cc-84ba-4cc2-b738-bcd7a1c193d9.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:47:02
8921	QUEIJO MINAS FRESCAL VEGANO DE CASTANHA DE CAJU VIDA VEG 200G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/403e7dde-1b28-469f-9839-13b8c83dc9c2.jpg	21.99	\N	S	0	Shopper	2022-04-17	22:47:02
8922	QUEIJO VEGANO DE CASTANHA DE CAJU VIDA VEG 300G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/7d07c5a3-ebfb-4317-ae0b-f0074edfa748.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:47:03
8923	QUEIJO PRATO FATIADO PRESIDENT 150G C/ 3UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/746498f5-7623-4681-887a-b1ae17f5d508.jpg	28.29	\N	S	0	Shopper	2022-04-17	22:47:03
8924	QUEIJO CHEDDAR SANDWICH-IN POLENGHI 144G C/ 3UN	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/d4ce3f3c-0570-49de-bb91-fd5e77555461.jpg	33.48	\N	S	0	Shopper	2022-04-17	22:47:04
8925	PÃO DE FORMA 100% INTEGRAL WICKBOLD GIRASSOL E CASTANHA 400G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/wickboldgirassolcastanha1685.jpg	10.39	\N	S	0	Shopper	2022-04-17	22:47:04
8926	QUEIJO RALADO PARMESÃO GROSSO SCALA 50G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/f2cd9d08-c5b6-41f1-b4a5-815c8508d6fa.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:47:04
8927	SALAMITOS SADIA 36G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/79fde311-98df-4a57-bdff-320efd9c0256.jpg	4.39	\N	S	0	Shopper	2022-04-17	22:47:05
8928	QUEIJO VEGANO TIPO CHÈVRE NOMOO 100G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/b6dc2b76-04aa-4c13-baf1-96ec474c4fd2.jpg	27.49	\N	S	0	Shopper	2022-04-17	22:47:05
8929	QUEIJO VEGANO TIPO MOZZARELLA NOMOO 150G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/32e42af7-33ac-433a-8e5a-33d0812a8f3d.jpg	27.49	\N	S	0	Shopper	2022-04-17	22:47:06
8930	QUEIJO VEGANO TIPO PARMESÃO RALADO NOMOO 100G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/dbe2c918-ea9b-4c84-9155-22255dee0e53.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:47:06
8931	QUEIJO VEGANO TIPO PROVOLONE NOMOO 150G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/9c45bfec-e12e-43ba-8c48-5f5acb0864d3.jpg	27.49	\N	S	0	Shopper	2022-04-17	22:47:06
8932	QUEIJO PARMESÃO CILINDRO FAIXA AZUL 195G	\N	Alimentos	queijos frios e embutidos	\N	https://d2om08pcbtz1n1.cloudfront.net/1519711f-4802-43f2-a3eb-b6ea94edcc58.jpg	33.49	\N	S	0	Shopper	2022-04-17	22:47:07
8933	TEMPERO CARNE ESTAR BEM 190G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/03d500f3-78d5-4320-936f-14e900fdb104.jpg	16.29	\N	S	0	Shopper	2022-04-17	22:47:15
8934	TEMPERO FRANGO ESTAR BEM 190G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/f04992d4-ec17-44f9-aedf-82f2e82cab34.jpg	16.29	\N	S	0	Shopper	2022-04-17	22:47:16
8935	TEMPERO PEIXE ESTAR BEM 190G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/c86b0025-3120-4455-9830-31ef1c0b2237.jpg	16.29	\N	S	0	Shopper	2022-04-17	22:47:16
8936	FLOR DE SAL LEBRE GOURMET 250G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/97513e07-2ffd-46c8-bd10-0c194ca453ff.jpg	34.49	\N	S	0	Shopper	2022-04-17	22:47:17
8937	SAL GRANULADO LEBRE GOURMET IODADO PARA PARRILLA 500G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/ac6df98e-ac74-4a47-af46-25f2632577ed.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:47:17
8938	SAL GROSSO LEBRE GOURMET IODADO DO HIMALAIA 500G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/salhimalaiagrossolebre123.jpg	11.09	\N	S	0	Shopper	2022-04-17	22:47:17
8939	SAL MOÍDO DO HIMALAIA LEBRE GOURMET IODADO 500G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/23e56c51-5c2d-4eb0-9616-e58d2540e253.jpg	11.09	\N	S	0	Shopper	2022-04-17	22:47:18
8940	SAL GROSSO LEBRE 1KG	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/cf6f9ed6-96b5-4b71-85ae-f2a0e2f36185.jpg	2.49	\N	S	0	Shopper	2022-04-17	22:47:18
8941	SAL REFINADO LEBRE LIGHT IODADO 500G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/e33ea5d2-399f-4403-84ac-b2ab0982fa40.jpg	6.79	\N	S	0	Shopper	2022-04-17	22:47:19
8942	SAL MARINHO LEBRE REFINADO IODADO SALEIRO 100G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/5dfe4938-7d6c-4d36-92d3-87175042b411.jpg	2.99	\N	S	0	Shopper	2022-04-17	22:47:19
8943	SAL REFINADO LEBRE LIGHT IODADO SALEIRO 100G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/566ce8a9-cbee-4b68-bb7b-d126f6a97906.jpg	6.89	\N	S	0	Shopper	2022-04-17	22:47:19
8944	REALÇADOR DE SABOR AJINOMOTO FRASCO 100G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/AJINOFRAS12651.jpg	9.19	\N	S	0	Shopper	2022-04-17	22:47:20
8945	REALÇADOR DE SABOR AJINOMOTO REFIL 100G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/AJINOREF12652.jpg	5.59	\N	S	0	Shopper	2022-04-17	22:47:20
8946	TEMPERO ORIENTAL HONDASHI AJINOMOTO 10G C/ 6UN	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/b35627ea-7aac-4907-be01-95ba1fa99c13.jpg	12.39	\N	S	0	Shopper	2022-04-17	22:47:21
8947	ALECRIM LIOFILIZADO EM VIDRO LYOH 8G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/429eb40e-3827-411e-b4b6-a673cbab677c.jpg	28.49	\N	S	0	Shopper	2022-04-17	22:47:21
8948	ALHO PORÓ LIOFILIZADO EM VIDRO LYOH 5G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/756ec4d2-b9a1-4b06-988d-d77fc696ddda.jpg	28.49	\N	S	0	Shopper	2022-04-17	22:47:22
8949	CIBOULETTE LIOFILIZADA EM VIDRO LYOH 5G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/11a18b74-c790-47e4-939a-e1888414cf78.jpg	31.49	\N	S	0	Shopper	2022-04-17	22:47:22
8950	COENTRO LIOFILIZADO EM VIDRO LYOH 2,5G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/43bf044e-43ef-4e4a-910d-658739e69d3e.jpg	31.49	\N	S	0	Shopper	2022-04-17	22:47:22
8951	HORTELÃ LIOFILIZADA EM VIDRO LYOH 2,5G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/2b8c8e81-1afe-4246-9920-d7e38063911e.jpg	28.49	\N	S	0	Shopper	2022-04-17	22:47:23
8952	MANJERICÃO LIOFILIZADO EM VIDRO LYOH 2,5G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/d00295ec-518d-42f7-a1fd-531d92f8684a.jpg	28.49	\N	S	0	Shopper	2022-04-17	22:47:23
8953	PIMENTA DEDO DE MOÇA LIOFILIZADA EM VIDRO LYOH 6G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/dee1ab6b-1e14-4ce5-ae5f-cd649de484ee.jpg	31.49	\N	S	0	Shopper	2022-04-17	22:47:24
8954	SÁLVIA LIOFILIZADA EM VIDRO LYOH 2,5G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/a3bb7900-52ca-4cd1-baf8-556f3f4c7534.jpg	28.49	\N	S	0	Shopper	2022-04-17	22:47:24
8955	TOMILHO LIOFILIZADO EM VIDRO LYOH 5G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/3ba3468b-7066-467e-8ace-465dfab0c143.jpg	31.49	\N	S	0	Shopper	2022-04-17	22:47:24
8956	ALHO PORÓ LIOFILIZADO REFIL LYOH 5G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/7983d616-24c5-452b-9079-df5680f74c7f.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:47:25
8957	CIBOULETTE LIOFILIZADA REFIL LYOH 5G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/8691a6be-ba21-4c02-9234-6b703fd2f451.jpg	24.49	\N	S	0	Shopper	2022-04-17	22:47:25
8958	HORTELÃ LIOFILIZADA REFIL LYOH 2,5G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/a0136d19-e2da-4345-8801-e996962b6e41.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:47:26
8959	MANJERICÃO LIOFILIZADO REFIL LYOH 2,5G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/8e793839-9690-44c5-9b02-818275a481e8.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:47:26
8960	PIMENTA DEDO DE MOÇA LIOFILIZADA REFIL LYOH 6G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/db3f3af2-be98-4a93-a296-c16912352da2.jpg	24.49	\N	S	0	Shopper	2022-04-17	22:47:26
8961	SÁLVIA LIOFILIZADA REFIL LYOH 2,5G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/132d7c89-d3c9-45b9-85fb-a9642e110456.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:47:27
8962	TEMPERO GOLDEN CURRY FORTE KARAKUCHI 92G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/7701d22b-6c2a-4884-a810-09208350fb03.jpg	29.49	\N	S	0	Shopper	2022-04-17	22:47:27
8963	PIMENTA COM AZEITE GALLO EXTRA FORTE 50ML	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/azeite_com_pimenta_extra_forte_gallo_50ml_5485.jpg	22.49	\N	S	0	Shopper	2022-04-17	22:47:28
8964	PIMENTA COM AZEITE GALLO ORIGINAL 50ML	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/azeite_com_pimenta_original_gallo_50ml_5485.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:47:28
8965	PIMENTA COM COMINHO EM PÓ KISABOR 40G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/pimentacominokisabor40g46.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:47:28
8966	SAL MARINHO MALDON DEFUMADO 125G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/3ba4f5db-22ea-41dc-a7c6-daf59d058f93.jpg	27.49	\N	S	0	Shopper	2022-04-17	22:47:29
8967	SAL MARINHO INTEGRAL VITAO 1KG	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/sal2.jpg	6.99	\N	S	0	Shopper	2022-04-17	22:47:29
8968	PIMENTA NEGRA CARMENCITA COM MOEDOR 50G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/PIMENTANEGRA456.jpg	29.49	\N	S	0	Shopper	2022-04-17	22:47:30
8969	SAL DO HIMALAIA CARMENCITA COM MOEDOR 110G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/HIMALAIACARMENCITA569.jpg	25.49	\N	S	0	Shopper	2022-04-17	22:47:30
8970	SAL ZERO SÓDIO NUTRICARE 100% SEM SÓDIO SALEIRO 80G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/zero_sodio.jpg	15.49	\N	S	0	Shopper	2022-04-17	22:47:30
8971	CURRY BOMBAY SACHÊ 30G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/47679f6a-16da-4022-9580-b33e08cfce9f.jpg	10.69	\N	S	0	Shopper	2022-04-17	22:47:31
8972	PÁPRICA DOCE BOMBAY SACHÊ 30G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/d811c764-3376-45db-8a36-9ff6f95e5e1d.jpg	14.69	\N	S	0	Shopper	2022-04-17	22:47:31
8973	PÁPRICA PICANTE BOMBAY SACHÊ 30G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/4f847366-adb9-4bf3-84e5-cd5b3a15241f.jpg	15.79	\N	S	0	Shopper	2022-04-17	22:47:32
8974	PIMENTA SÍRIA BOMBAY 30G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/9e433aba-c0e3-49f1-93ad-75faf2e5d607.jpg	12.59	\N	S	0	Shopper	2022-04-17	22:47:32
8975	ALECRIM BOMBAY VIDRO 25G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/199c0bf6-4fbc-4401-a0ef-a464a00071f2.jpg	15.29	\N	S	0	Shopper	2022-04-17	22:47:32
8976	CARDAMOMO BAGA BOMBAY POUCH 10G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/12152b51-0721-43f6-8de1-092e4a9545ce.jpg	29.49	\N	S	0	Shopper	2022-04-17	22:47:33
8977	CHIMICHURRI BOMBAY POUCH 20G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/b4719b41-bece-4e3c-9411-1756b99a39a8.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:47:33
8978	CHIMICHURRI BOMBAY VIDRO 30G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/c372195a-b8a0-4f32-80cb-acad29f4bdae.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:47:34
8979	COMINHO GRÃOS BOMBAY POUCH 20G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/d897ab3c-7d5a-41aa-a2b4-6a27c11d9cae.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:47:34
8980	CRAVO DA INDIA FLOR BOMBAY SACHÊ 20G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/51f9fc80-dc3a-4082-a116-952d76a3d360.jpg	15.29	\N	S	0	Shopper	2022-04-17	22:47:34
8981	CÚRCUMA EM PÓ BOMBAY VIDRO 75G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/cf7a62f4-b594-4672-80ff-c5a360dc411a.jpg	17.99	\N	S	0	Shopper	2022-04-17	22:47:35
8982	CURRY BOMBAY VIDRO 50G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/7e202f04-4641-46e0-b209-6330023fcece.jpg	22.49	\N	S	0	Shopper	2022-04-17	22:47:35
8983	GENGIBRE EM PÓ BOMBAY VIDRO 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/a57a638b-c067-49cf-a761-71e55cff03f6.jpg	22.99	\N	S	0	Shopper	2022-04-17	22:47:36
8984	GENGIBRE PO BOMBAY POUCH 30G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/e70ae16b-4b1b-4a38-b431-ecded54c26d1.jpg	8.99	\N	S	0	Shopper	2022-04-17	22:47:36
8985	HERBES DE PROVENCE BOMBAY VIDRO 20G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/1d1ad2b5-9282-4f59-8041-09d8166fbe6c.jpg	18.79	\N	S	0	Shopper	2022-04-17	22:47:36
8986	LEMON PEPPER BOMBAY 40G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/3cf20245-0eab-4406-93d9-68665698869b.jpg	8.39	\N	S	0	Shopper	2022-04-17	22:47:37
8987	LEMON PEPPER BOMBAY VIDRO 90G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/ceca1abc-3907-4743-9382-200a63110393.jpg	21.99	\N	S	0	Shopper	2022-04-17	22:47:37
8988	LOURO FOLHA BOMBAY SACHÊ 5G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/f4c45a4f-2ae1-42d1-a51b-ca8cd357a887.jpg	7.69	\N	S	0	Shopper	2022-04-17	22:47:38
8989	MOLHO BARBECUE BOMBAY 350G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/cfb51097-684f-456e-bc13-a87d9ea8eb48.jpg	18.99	\N	S	0	Shopper	2022-04-17	22:47:38
8990	MOLHO SRIRACHA BOMBAY 330G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/e33e0dd2-4a69-4c33-862d-e075236274a7.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:47:38
8991	ÓREGANO BOMBAY SACHÊ 5G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/4d41d218-9f08-45e9-ba7e-6540bc6d4f0a.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:47:39
8992	ORÉGANO BOMBAY VIDRO 10G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/5bcdf181-ef4c-4f0d-974f-913752cdc568.jpg	12.99	\N	S	0	Shopper	2022-04-17	22:47:39
8993	PÁPRICA PICANTE BOMBAY VIDRO 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/6e995767-a6f1-4abf-987b-2fb19e3060f9.jpg	22.99	\N	S	0	Shopper	2022-04-17	22:47:40
8994	PIMENTA CAIENA EM PÓ BOMBAY VIDRO 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/686b53f9-8df2-4a77-9ebb-52d0150a699f.jpg	22.99	\N	S	0	Shopper	2022-04-17	22:47:40
8995	PIMENTA CALABRESA EM PÓ BOMBAY SACHÊ 15G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/527c63c1-9a79-4778-b8ba-3995c0c74ff9.jpg	8.89	\N	S	0	Shopper	2022-04-17	22:47:41
8996	PIMENTA DO REINO GRÃO BOMBAY SACHÊ 40G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/e58a0bee-305b-4489-b441-823e6e3545d6.jpg	10.79	\N	S	0	Shopper	2022-04-17	22:47:41
8997	PIMENTA DO REINO PÓ BOMBAY SACHÊ 30G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/8040880a-7a27-4a62-b961-744f931d51f9.jpg	10.79	\N	S	0	Shopper	2022-04-17	22:47:41
8998	ZATTAR BOMBAY POUCH 40G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/7e54f565-3dcc-431f-bb2b-466b570cb340.jpg	13.39	\N	S	0	Shopper	2022-04-17	22:47:42
8999	FOLHA DE LOURO KITANO 4G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/570.jpg	2.59	\N	S	0	Shopper	2022-04-17	22:47:42
9000	ORÉGANO KITANO 3G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/918.jpg	2.09	\N	S	0	Shopper	2022-04-17	22:47:43
9001	CRAVO DA ÍNDIA KITANO 40G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/423.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:47:43
9002	PIMENTA DO REINO EM GRÃOS KITANO 15G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/2255.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:47:43
9003	PIMENTA DO REINO EM PÓ KITANO 15G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/941.jpg	3.69	\N	S	0	Shopper	2022-04-17	22:47:44
9004	MOLHO DE PIMENTA TABASCO TRADICIONAL 60ML	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/tabasco.png	20.99	\N	S	0	Shopper	2022-04-17	22:47:44
9005	MOLHO DE PIMENTA TABASCO CHIPOTLE 60ML	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/fb4a5381-c47a-468d-8af4-be4fca28f33a.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:47:45
9006	CEBOLA  PICADA KAMAR POTE 200G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/35a28e7e-5460-4e0a-b363-99e6c6bb27f0.jpg	5.19	\N	S	0	Shopper	2022-04-17	22:47:45
9007	MOLHO DE PIMENTA TABASCO VERDE 60ML	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/d1718944-4779-4d31-bb85-91b4f8ed8de9.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:47:45
9008	TEMPERO BAIANO KAMAR 20GR	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/af1e89e3-5d0b-4cbd-958c-469c11ddf81e.jpg	4.19	\N	S	0	Shopper	2022-04-17	22:47:46
9009	TEMPERO COMPLETO KAMAR 200G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/64d625d7-6974-44d0-89da-616fe120d1ae.jpg	4.19	\N	S	0	Shopper	2022-04-17	22:47:46
9010	TEMPERO REFOGA FACIL KAMAR 200GR	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/a247a5fa-16a1-4511-954e-388aa4741a5d.jpg	4.19	\N	S	0	Shopper	2022-04-17	22:47:47
9011	MOLHO DE PIMENTA VERDE ZEROSÓDIO NUTRICARE 150ML	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/Design_sem_nome_22.jpg	12.29	\N	S	0	Shopper	2022-04-17	22:47:47
9012	SAL PARRILHERO ARGENTINO DE CABRÓN 500G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/f1d1ce82-c782-4a88-82bf-9aaee687f3ea.jpg	19.79	\N	S	0	Shopper	2022-04-17	22:47:47
9013	SAL PARRILLA CHIMICHURRI DE CABRÓN 500G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/65e5124b-8a39-4a41-bebc-3667110e953b.jpg	19.49	\N	S	0	Shopper	2022-04-17	22:47:48
9014	SAL REFINADO CISNE LIGHT 500G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/Sal-Refinado-Cisne-Light-500g.jpg	6.89	\N	S	0	Shopper	2022-04-17	22:47:48
9015	SAL REFINADO CISNE 1KG	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1438971668_4s5njIU7sBe6A80V9Jl179W168z1K6.jpg	2.69	\N	S	0	Shopper	2022-04-17	22:47:49
9016	SAL SALEIRO CISNE 100G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1462899687_df26921W89i1DD5xmE5AHzCLNjXY1a.jpg	4.19	\N	S	0	Shopper	2022-04-17	22:47:49
9017	CALDO KNORR DE CARNE 57G C/ 6UN	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/258.png	1.89	\N	S	0	Shopper	2022-04-17	22:47:49
9018	CALDO SAZÓN SABOR CARNE 32,5G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1438894202_v3Y8nyL6682JSOuHIMQI074gy997DF.jpg	1.99	\N	S	0	Shopper	2022-04-17	22:47:50
9019	TEMPERO PARA ARROZ BRANCO SAZÓN 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/sazonarrotemperoajino546.jpg	4.49	\N	S	0	Shopper	2022-04-17	22:47:50
9020	TEMPERO PARA CARNE SAZÓN COM TOQUE DE ALEGRIM 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/sazonalecriamcarne5486.jpg	4.69	\N	S	0	Shopper	2022-04-17	22:47:51
9021	TEMPERO PARA CARNE SAZÓN COM TOQUE DE ALHO 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/sazonalhocafneajino5789.jpg	4.49	\N	S	0	Shopper	2022-04-17	22:47:51
9022	TEMPERO PARA FRANGO SAZÓN 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/SAZFRANG12654.jpg	4.49	\N	S	0	Shopper	2022-04-17	22:47:51
9023	TEMPERO PARA LEGUMES SAZÓN 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/sazonlegumesajino6465.jpg	4.49	\N	S	0	Shopper	2022-04-17	22:47:52
9024	TEMPERO PARA MASSAS SAZÓN 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/sazonmassasajino548.jpg	4.49	\N	S	0	Shopper	2022-04-17	22:47:52
9025	TEMPERO PARA PIPOCA MANTEIGA SAZÓN 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/SAZMANT12658.jpg	4.69	\N	S	0	Shopper	2022-04-17	22:47:53
9026	TEMPERO PARA PIPOCA SAZÓN CHURRASCO 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/saconpipocachurras4453.jpg	4.69	\N	S	0	Shopper	2022-04-17	22:47:53
9027	TEMPERO SAZÓN SABORES DO NORDESTE 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/sazonnordesteajino54789.jpg	4.49	\N	S	0	Shopper	2022-04-17	22:47:53
9028	CALDO KNORR DE GALINHA ZERO SAL 48G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/265.png	2.29	\N	S	0	Shopper	2022-04-17	22:47:54
9029	TEMPERO COMPLETO 7 VEGETAIS MEU SEGREDO MAGGI 49G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/9ad5465f-7fae-4eed-bd7c-53570799d808.jpg	3.79	\N	S	0	Shopper	2022-04-17	22:47:54
9030	TEMPERO COMPLETO SABOR AMI ALHO E SAL 300G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/produtos_1438202234_a9j9x497Wb7422aV79KT2oAPWBiJf8.jpg	4.59	\N	S	0	Shopper	2022-04-17	22:47:55
9031	TEMPERO EM PASTA MIX DE CEBOLA & ALHO COM ERVAS FINAS MAGGI DA HORTA VIDRO 160G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/468f2810-0444-4c13-98b9-fe333d433f0d.jpg	9.99	\N	S	0	Shopper	2022-04-17	22:47:55
9032	TEMPERO KNORR MEU ARROZ ALHO E CEBOLA 48G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/1216.jpg	5.09	\N	S	0	Shopper	2022-04-17	22:47:55
9033	TEMPERO KNORR MEU FEIJÃO CASEIRO 48G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/1221.jpg	5.09	\N	S	0	Shopper	2022-04-17	22:47:56
9034	TEMPERO MAGGI FONDOR 120G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/d042d36d-8f5c-44f7-a33e-dd14e503a2e3.jpg	7.79	\N	S	0	Shopper	2022-04-17	22:47:56
9035	TEMPERO PARA CARNE MAGGI GRIL 120G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/ae9573d3-88f9-480a-9fa1-b5acd065590f.jpg	6.49	\N	S	0	Shopper	2022-04-17	22:47:57
9036	CANELA EM PÓ BOMBAY SACHÊ 30G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/4dc553cf-9d7e-4f72-8d78-ca34847bcfee.jpg	10.79	\N	S	0	Shopper	2022-04-17	22:47:57
9037	CANELA EM PÓ BOMBAY VIDRO 50G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/beeaf371-4741-409a-8cde-b95cec065d0d.jpg	20.49	\N	S	0	Shopper	2022-04-17	22:47:58
9038	CANELA RAMA BOMBAY SACHÊ 10G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/04b796eb-0bbb-4097-8625-60c9ee0b43c8.jpg	8.09	\N	S	0	Shopper	2022-04-17	22:47:58
9039	AÇAFRÃO DA TERRA EM PÓ KITANO 50G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/kitanoacaofraodaterra128.jpg	9.19	\N	S	0	Shopper	2022-04-17	22:47:58
9040	CANELA EM CASCA KITANO 20G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/kitanocanelaemcasca20g51465.jpg	4.99	\N	S	0	Shopper	2022-04-17	22:47:59
9041	CANELA EM PÓ KITANO 50G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/1a9cf67d-f5b3-4246-991d-8a31249215b0.jpg	5.69	\N	S	0	Shopper	2022-04-17	22:47:59
9042	CANELA EM PÓ KITANO 8G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/1215.jpg	1.99	\N	S	0	Shopper	2022-04-17	22:48:00
9043	NOZ MOSCADA KITANO 8G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/nozmoscada8gkitano558.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:48:00
9044	PIMENTA E COMINHO EM PÓ KITANO 70G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/kitanopimentacminho70g435.jpg	10.49	\N	S	0	Shopper	2022-04-17	22:48:00
9045	MIX DE PIMENTAS KITANO RESERVA 45G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/adfc9eb1-b4f2-4054-b1d1-e5d5aecab7a8.jpg	25.49	\N	S	0	Shopper	2022-04-17	22:48:01
9046	PÁPRICA DEFUMADA KITANO RESERVA 36G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/04353a8b-2920-4aba-afd8-000d0a53c32d.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:48:01
9047	SAL ROSA DO HIMALAIA KITANO RESERVA 100G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/ac41edc4-387a-41ea-9ec3-a9f85bb21752.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:48:02
9048	AÇAFRÃO DA TERRA AROMA DAS ÍNDIAS 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/acafraodaterraaroma6465.jpg	4.69	\N	S	0	Shopper	2022-04-17	22:48:02
9049	ALECRIM AROMA DAS INDIAS 20G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/aromaalecrim20g45684.jpg	2.49	\N	S	0	Shopper	2022-04-17	22:48:02
9050	BICARBONATO DE SÓDIO AROMA DAS ÍNDIAS 100G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/bicabornatosodioaroma100g548.jpg	2.59	\N	S	0	Shopper	2022-04-17	22:48:03
9051	CHEIRO VERDE AROMA DAS ÍNDIAS 15G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/cheiroverdearomadasindias6548.jpg	2.59	\N	S	0	Shopper	2022-04-17	22:48:03
9052	CHIMICHURRI AROMA DAS ÍNDIAS 25G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/chimichurriaromadasindias5468.jpg	4.49	\N	S	0	Shopper	2022-04-17	22:48:04
9053	COENTRO EM FOLHAS AROMA DAS ÍNDIAS 8G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/aromadasindiascoentrofolhas8g646532.jpg	3.09	\N	S	0	Shopper	2022-04-17	22:48:04
9054	COLORIFICO AROMA DAS ÍNDIAS 80G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/aroamdasindiascolorifico54654.jpg	2.39	\N	S	0	Shopper	2022-04-17	22:48:04
9055	COMINHO EM PÓ PREMIUM AROMA DAS ÍNDIAS 50G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/50eb4c81-1aa3-414f-823f-9ec5d694adfe.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:48:05
9056	CRAVO DA INDIA AROMA DAS ÍNDIAS 35G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/cravodaindiaaromadasindias35g564635.jpg	7.69	\N	S	0	Shopper	2022-04-17	22:48:05
9057	CURRY EM PÓ AROMA DAS ÍNDIAS 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/curryaromadasindias60g8796.jpg	3.49	\N	S	0	Shopper	2022-04-17	22:48:06
9058	ERVA DOCE AROMA DAS ÍNDIAS 50G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/ervadocearomadasindais48465.jpg	5.79	\N	S	0	Shopper	2022-04-17	22:48:06
9059	ERVAS FINAS AROMA DAS ÍNDIAS 15G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/ervasfinasaromadasindias15g646.jpg	2.39	\N	S	0	Shopper	2022-04-17	22:48:06
9060	MANJERICÃO AROMA DAS ÍNDIAS 15G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/manjericaoaromadasindias15g898645.jpg	1.99	\N	S	0	Shopper	2022-04-17	22:48:07
9061	ORÉGANO AROMA DAS ÍNDIAS 15G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/oreganoaromadasindias15g4846.jpg	2.69	\N	S	0	Shopper	2022-04-17	22:48:07
9062	TEMPERO EM PASTA CASEIRO RECEITA DE CASA COM PIMENTA POTE 450G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/748ae6fa-8b75-41b1-864a-0d7b1ebb4eea.jpg	10.29	\N	S	0	Shopper	2022-04-17	22:48:08
9063	TEMPERO EM PASTA CASEIRO RECEITA DE CASA POTE 450G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/32833099-913b-4f78-8bbc-bc9ffc9733e5.jpg	10.29	\N	S	0	Shopper	2022-04-17	22:48:08
9064	LEMON PEPPER BR SPICES MOEDOR 70G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/efc3c042-9b3c-448e-b816-67db05754ed6.jpg	17.49	\N	S	0	Shopper	2022-04-17	22:48:08
9065	SAL DE PARRILLA PARA CHURRASCO BR SPICES POTE 1,1KG	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/00f4144a-9335-40b6-b49c-95361713c469.jpg	21.99	\N	S	0	Shopper	2022-04-17	22:48:09
9066	SAL DE PARRILLA PARA CHURRASCO COM ALHO BR SPICES POTE 1,015KG	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/331461c5-634c-4f86-8aad-36a03927e17d.jpg	22.49	\N	S	0	Shopper	2022-04-17	22:48:09
9067	SAL ROSA DO HIMALAIA GROSSO BR SPICES 100G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/95c9528c-1281-4289-800c-752f39afb834.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:48:10
9068	TEMPERO FIT COMPLETO BR SPICES POTE 50G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/71007a1b-8b20-4741-ba7b-9001baaa206e.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:48:10
9069	TEMPERO MIX DE BARBECUE BR SPICES MOEDOR 80G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/a3d1b2d1-1ca8-4871-9433-c03d3f601bfc.jpg	16.79	\N	S	0	Shopper	2022-04-17	22:48:10
9070	TEMPERO MIX DE PIMENTAS BR SPICES MOEDOR 50G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/76cf0ec1-989b-4aec-8beb-08783e0cfc53.jpg	18.99	\N	S	0	Shopper	2022-04-17	22:48:11
9071	TEMPERO PARA PIPOCA SEGREDO DE EXPERT BR SPICES POTE 110G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/9056.jpg	16.29	\N	S	0	Shopper	2022-04-17	22:48:11
9072	TEMPERO SEGREDO DE EXPERT PARA FEIJÃO BR SPICES POTE 90G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/8902.jpg	16.29	\N	S	0	Shopper	2022-04-17	22:48:12
9073	TEMPERO SEGREDO DE EXPERT PARA HAMBÚRGUER BR SPICES POTE 100G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/Segredo_de_Expert_Hamburguer_100g_BR_Spices_frontal_alta.jpg	16.29	\N	S	0	Shopper	2022-04-17	22:48:12
9074	FUNGHI PORCINI SECCHI LA PASTINA 10G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/3c56f169-bd34-4eae-a88d-c5280e16dfcb.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:48:12
9075	TEMPERO FUNCIONAL BOM SPICE ANTIOX 40G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/BOMSPICEANTIOX258.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:48:13
9076	TEMPERO FUNCIONAL BOM SPICE DETOX 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/BOMSPICEDETOX258.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:48:13
9077	TEMPERO FUNCIONAL BOM SPICE DRY 40G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/BOMSPICEDRY258.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:48:14
9078	TEMPERO FUNCIONAL BOM SPICE FIBRAS 90G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/BOMSPICEFIBRAS258.jpg	20.99	\N	S	0	Shopper	2022-04-17	22:48:14
9079	TEMPERO FUNCIONAL BOM SPICE FIT 30G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/BOMSPICEFIT258.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:48:14
9080	PIMENTA MALAGUETA VERMELHA DA TERRINHA 70G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/b1ef082f-ecc4-4c6a-b332-432d7f8f9961.jpg	9.49	\N	S	0	Shopper	2022-04-17	22:48:15
9081	CREME CHANTILLY SPRAY VIGOR 250G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/f1869680-a653-4350-92f4-9a6acf942baf.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:48:15
9082	TEMPERO FUNCIONAL BOM SPICE TERM 60G	\N	Alimentos	sal pimenta e temperos	\N	https://d2om08pcbtz1n1.cloudfront.net/BOMSPICETERM258.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:48:16
9083	VINAGRE  DE VINHO BRANCO GALLO 250ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/vinagre_branco_gallo_250ml_5485.jpg	11.79	\N	S	0	Shopper	2022-04-17	22:48:21
9084	VINAGRE  DE VINHO TINTO GALLO 250ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/VINAGREVINHOTINTO482.jpg	12.19	\N	S	0	Shopper	2022-04-17	22:48:22
9085	VINAGRE LA PASTINA MAÇÃ 250ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/lapastinamacavinagre1478.jpg	18.99	\N	S	0	Shopper	2022-04-17	22:48:22
9086	ACETO BALSÂMICO LA PASTINA 500ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/98acce4b-0e2b-4bec-8426-8622b0277872.jpg	26.49	\N	S	0	Shopper	2022-04-17	22:48:23
9087	VINAGRE SOUL BRASIL COM AÇAÍ ORGÂNICO 250ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/acai1.jpeg	23.49	\N	S	0	Shopper	2022-04-17	22:48:23
9088	VINAGRE SOUL BRASIL COM ACEROLA ORGÂNICO 250ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/VINAGREACEROLA258.jpg	23.49	\N	S	0	Shopper	2022-04-17	22:48:23
9089	VINAGRE SOUL BRASIL COM GOIABA ORGÂNICO 250ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/VINAGREGOIABA258.jpg	22.99	\N	S	0	Shopper	2022-04-17	22:48:24
9090	VINAGRE SOUL BRASIL COM MANGA UBA ORGÂNICO 250ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/VINAGREMANGA258.jpg	22.99	\N	S	0	Shopper	2022-04-17	22:48:24
9091	VINAGRE BOMBAY DE MEXERICA, ALECRIM E CARDAMOMO 250ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/8670.png	23.99	\N	S	0	Shopper	2022-04-17	22:48:25
9092	ACETO BALSÂMICO PONTI CONCENTRADO 250G	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/860b6575-92fd-408f-9700-d7ca369d7e00.jpg	41.90	\N	S	0	Shopper	2022-04-17	22:48:25
9093	VINAGRE CASTELO ALHO 750ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/512dcf16-f01a-410e-bcfd-21a8a5af2eb9.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:48:25
9094	VINAGRE CASTELO COLORIDO 750ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/0d7ce8aa-5388-404f-ad87-62136695911d.jpg	3.29	\N	S	0	Shopper	2022-04-17	22:48:26
9095	VINAGRE CASTELO LIMÃO 750ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/2880ed95-73ca-4c6f-94b9-9420a7d9aebf.jpg	6.29	\N	S	0	Shopper	2022-04-17	22:48:26
9096	VINAGRE CASTELO MAÇÃ 750ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/5be104fb-7fc1-4751-9054-d04bf5f85460.jpg	7.89	\N	S	0	Shopper	2022-04-17	22:48:27
9097	VINAGRE CASTELO VINHO BRANCO 750ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/016ebea1-bbf9-4c52-b716-3fdfec769764.jpg	6.49	\N	S	0	Shopper	2022-04-17	22:48:27
9098	VINAGRE ALCOOL AROMATICO CASTELO MAÇÃ VERDE 6% 2L	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/6ed50457-d0ae-4a6b-9457-bc1fa5b46235.jpg	11.09	\N	S	0	Shopper	2022-04-17	22:48:27
9099	VINAGRE CASTELO VINHO TINTO 750ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/ebbbad5c-b39e-43b9-bb52-b91aba403825.jpg	6.49	\N	S	0	Shopper	2022-04-17	22:48:28
9100	VINAGRE DE ÁLCOOL 6% CASTELO 2L	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/ca4c9ad4-91f7-49a2-b3bc-d20ff0aeb739.jpg	11.09	\N	S	0	Shopper	2022-04-17	22:48:28
9101	VINAGRE DE ALCOOL CASTELO INCOLOR 750ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/13f0d708-3132-4ef9-9ef2-95cbe3a36b8a.jpg	3.29	\N	S	0	Shopper	2022-04-17	22:48:29
9102	VINAGRE CASTELO VINHO TINTO VIDRO 500ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/d917fc2a-c8e1-45ac-91ea-aaa38ce1b073.jpg	11.09	\N	S	0	Shopper	2022-04-17	22:48:29
9103	VINAGRE CASTELO BALSÂMICO 500ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/e2e39b0b-d3f1-49b4-a464-02aa16b50242.jpg	19.99	\N	S	0	Shopper	2022-04-17	22:48:29
9104	ACETO BALSÂMICO DI MODENA IGP NOR FOODS 500ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/01c4d7c3-0656-4806-b0a9-0aa55636bb41.jpg	21.49	\N	S	0	Shopper	2022-04-17	22:48:30
9105	VINAGRE DE MAÇÃ NOR FOODS 500ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/c598909e-dea5-4a43-a88d-b16df28e896b.jpg	17.79	\N	S	0	Shopper	2022-04-17	22:48:30
9106	VINAGRE DE VINHO BRANCO NOR FOODS 500ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/c402d997-c9f4-4bf2-a1e7-c76966740aeb.jpg	9.19	\N	S	0	Shopper	2022-04-17	22:48:31
9107	VINAGRE DE VINHO BRANCO RAIOLA 500ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/VINAGRE_DE_VINHO_BRANCO_RAIOLA_500ML.jpg	15.29	\N	S	0	Shopper	2022-04-17	22:48:31
9108	VINAGRE DE VINHO TINTO RAIOLA 500ML	\N	Alimentos	vinagre e aceto balsamico	\N	https://d2om08pcbtz1n1.cloudfront.net/VINAGRE_DE_VINHO_TINTO_RAIOLA_500ML.jpg	15.29	\N	S	0	Shopper	2022-04-17	22:48:31
\.


--
-- Name: webscraping_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.webscraping_id_seq', 9108, true);


--
-- Name: produtos produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (in_codigo);


--
-- PostgreSQL database dump complete
--

