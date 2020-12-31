--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9 (Debian 11.9-0+deb10u1)
-- Dumped by pg_dump version 11.9 (Debian 11.9-0+deb10u1)

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
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: follow; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.follow (
    user_id bigint,
    follower_id bigint
);


--
-- Name: playlist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.playlist (
    playlist_id bigint NOT NULL,
    name character varying(45) NOT NULL,
    date date NOT NULL,
    user_id bigint
);


--
-- Name: playlist_playlist_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.playlist_playlist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: playlist_playlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.playlist_playlist_id_seq OWNED BY public.playlist.playlist_id;


--
-- Name: user_account; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_account (
    user_id bigint NOT NULL,
    email character varying(45) NOT NULL,
    age integer,
    country character varying(45),
    username character varying(20) NOT NULL,
    password character varying(100) NOT NULL
);


--
-- Name: user_account_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_account_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_account_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_account_user_id_seq OWNED BY public.user_account.user_id;


--
-- Name: playlist playlist_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.playlist ALTER COLUMN playlist_id SET DEFAULT nextval('public.playlist_playlist_id_seq'::regclass);


--
-- Name: user_account user_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_account ALTER COLUMN user_id SET DEFAULT nextval('public.user_account_user_id_seq'::regclass);


--
-- Data for Name: follow; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.follow (user_id, follower_id) FROM stdin;
1	4
15	8
20	4
8	2
5	3
19	18
19	7
5	1
8	18
7	5
13	11
12	20
13	3
20	10
1	19
5	6
10	4
17	7
5	13
9	2
18	1
7	20
\.


--
-- Data for Name: playlist; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.playlist (playlist_id, name, date, user_id) FROM stdin;
1	techno	2020-12-31	2
2	patologia	2020-12-31	8
3	hard rock	2020-12-31	2
4	heavy metal	2020-12-31	1
5	ambient	2020-12-31	11
6	music for sport	2020-12-31	19
7	for my travel	2020-12-31	17
8	rock	2020-12-31	7
9	rapsy	2020-12-31	6
10	my top 5 jazz	2020-12-31	4
11	electronic	2020-12-31	12
12	club/dance	2020-12-31	9
13	dance	2020-12-31	8
14	top 5 my music	2020-12-31	2
15	swing	2020-12-31	14
16	alternative rock	2020-12-31	13
17	my rock	2020-12-31	2
18	classical	2020-12-31	3
19	to work	2020-12-31	5
20	old classical	2020-12-31	10
21	for travel	2020-12-31	10
22	my music to work	2020-12-31	13
\.


--
-- Data for Name: user_account; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.user_account (user_id, email, age, country, username, password) FROM stdin;
1	gparlet0@cloudflare.com	22	Mexico	plackie0	$1$4LEESTQO$v9aagAjs8WtY.IApxt6Ym1
2	aattenbrow1@jigsy.com	21	Ireland	aattenbrow1	$1$iHBZeqxy$7nKr9Hq0mDSEyJkdZatoH1
3	bburwood2@hatena.ne.jp	32	China	bburwood2	$1$M57eJ/GS$a/ob5z2U06tqaT4yoSSgK0
4	tperrygo3@godaddy.com	19	China	tperrygo3	$1$Z3O.NFxL$QZ8KOO2MnZx01Bfo2wF6k1
5	lzienkiewicz4@smugmug.com	38	Portugal	lzienkiewicz4	$1$1QGCApSz$B84N.fF1Jm.yd4KctT3mJ.
6	rbernakiewicz5@wordpress.com	40	Russia	rbernakiewicz5	$1$dMfKHFXE$wgsn5HWakfXgqXgbQ/6z6/
7	wcaple7@illinois.edu	31	China	wcaple7	$1$NqBbI90Y$ief86u3U508hcNtmusOTg1
8	ecannam6@squarespace.com	16	China	ecannam6	$1$cZdwJCIU$LV7dIg.9sWiHA0JJtEtam1
9	tyann8@imageshack.us	52	Russia	tyann8	$1$DXtl5g.h$kQd19xcqak1WID7Y8eLzo1
10	wbannon9@jalbum.net	25	China	wbannon9	$1$TGB6py3I$X3z23si1Zjjm9jMYjnCSk1
11	gmcgaugheya@tumblr.com	27	Czech Republic	gmcgaugheya	$1$mXY5QsWV$T8lsiUoR3NfkoqSu13hen0
12	abernardeaub@ft.com	31	Indonesia	abernardeaub	$1$3gVNxupV$XMqMByS5Ei4nMOGCmIaHZ0
13	tlouisc@intel.com	30	Poland	tlouisc	$1$Xp3QLBe6$CekxGrQpYEDuacZMyOffk/
14	asheltond@trellian.com	29	Palestinian Territory	asheltond	$1$dccqa57g$htl3Wg3yVLab02LDpYPQ1.
15	weatheralle@dmoz.org	23	Ukraine	weatheralle	$1$AA4z5QqD$pITuFf3sHRvT4MoLqBaGX/
16	akopkef@issuu.com	27	Cyprus	akopkef	$1$4LUBLOY5$tYrByACq1VC4awxKd.KQj/
17	lshrubsallh@examiner.com	34	France	lshrubsallh	$1$7VpEJhZ5$9Jbd2RuEsyF3jHC/LkraO.
18	dpellingtoni@telegraph.co.uk	21	Portugal	dpellingtoni	$1$AA.iy.K0$TH4a5j/rUBo/yLXrGlEpz0
19	mcellerj@globo.com	23	Sweden	mcellerj	$1$Da/lxESZ$6ezNWZM3UlKTYD4ert2ru/
20	mgollyk@vimeo.com	43	Czech Republic	mgollyk	$1$/pL19Gh9$HlBquVi4gtGNukI2APMuy0
\.


--
-- Name: playlist_playlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.playlist_playlist_id_seq', 22, true);


--
-- Name: user_account_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.user_account_user_id_seq', 21, true);


--
-- Name: playlist playlist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_pkey PRIMARY KEY (playlist_id);


--
-- Name: user_account user_account_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_email_key UNIQUE (email);


--
-- Name: user_account user_account_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (user_id);


--
-- Name: user_account user_account_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_username_key UNIQUE (username);


--
-- Name: follow follow_follower_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.follow
    ADD CONSTRAINT follow_follower_id_fkey FOREIGN KEY (follower_id) REFERENCES public.user_account(user_id);


--
-- Name: follow follow_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.follow
    ADD CONSTRAINT follow_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);


--
-- Name: playlist playlist_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);


--
-- PostgreSQL database dump complete
--

