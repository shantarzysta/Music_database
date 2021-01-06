--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Ubuntu 13.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.1 (Ubuntu 13.1-1.pgdg20.04+1)

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
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: album; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.album (
    album_id bigint NOT NULL,
    name character varying(45) NOT NULL,
    production_date date NOT NULL,
    producer_id bigint,
    playlist_id bigint
);


ALTER TABLE public.album OWNER TO postgres;

--
-- Name: album_album_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.album_album_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_album_id_seq OWNER TO postgres;

--
-- Name: album_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.album_album_id_seq OWNED BY public.album.album_id;


--
-- Name: artist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artist (
    artist_id bigint NOT NULL,
    firstname character varying(45) NOT NULL,
    lastname character varying(45) NOT NULL,
    date_of_birth date NOT NULL,
    nationality character varying(45),
    biography character varying(1000),
    date_of_death date NOT NULL,
    user_id bigint
);


ALTER TABLE public.artist OWNER TO postgres;

--
-- Name: artist_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.artist_artist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_artist_id_seq OWNER TO postgres;

--
-- Name: artist_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.artist_artist_id_seq OWNED BY public.artist.artist_id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events (
    event_id bigint NOT NULL,
    date date NOT NULL,
    location character varying(45) NOT NULL,
    title character varying(45) NOT NULL,
    artist_id bigint
);


ALTER TABLE public.events OWNER TO postgres;

--
-- Name: events_event_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.events_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_event_id_seq OWNER TO postgres;

--
-- Name: events_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.events_event_id_seq OWNED BY public.events.event_id;


--
-- Name: follow; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.follow (
    user_id bigint,
    follower_id bigint
);


ALTER TABLE public.follow OWNER TO postgres;

--
-- Name: interested; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.interested (
    user_id bigint,
    event_id bigint
);


ALTER TABLE public.interested OWNER TO postgres;

--
-- Name: playlist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.playlist (
    playlist_id bigint NOT NULL,
    name character varying(45) NOT NULL,
    date date NOT NULL,
    user_id bigint
);


ALTER TABLE public.playlist OWNER TO postgres;

--
-- Name: playlist_playlist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.playlist_playlist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.playlist_playlist_id_seq OWNER TO postgres;

--
-- Name: playlist_playlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.playlist_playlist_id_seq OWNED BY public.playlist.playlist_id;


--
-- Name: producer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producer (
    producer_id bigint NOT NULL,
    name character varying(45) NOT NULL,
    genre character varying(45),
    date date NOT NULL
);


ALTER TABLE public.producer OWNER TO postgres;

--
-- Name: producer_producer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producer_producer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producer_producer_id_seq OWNER TO postgres;

--
-- Name: producer_producer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producer_producer_id_seq OWNED BY public.producer.producer_id;


--
-- Name: score; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.score (
    score_id bigint NOT NULL,
    score numeric(10,0) DEFAULT 0,
    user_id bigint
);


ALTER TABLE public.score OWNER TO postgres;

--
-- Name: score_score_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.score_score_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.score_score_id_seq OWNER TO postgres;

--
-- Name: score_score_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.score_score_id_seq OWNED BY public.score.score_id;


--
-- Name: user_account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_account (
    user_id bigint NOT NULL,
    email character varying(45) NOT NULL,
    age integer,
    country character varying(45),
    username character varying(20) NOT NULL,
    password character varying(100) NOT NULL
);


ALTER TABLE public.user_account OWNER TO postgres;

--
-- Name: user_account_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_account_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_account_user_id_seq OWNER TO postgres;

--
-- Name: user_account_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_account_user_id_seq OWNED BY public.user_account.user_id;


--
-- Name: album album_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album ALTER COLUMN album_id SET DEFAULT nextval('public.album_album_id_seq'::regclass);


--
-- Name: artist artist_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artist ALTER COLUMN artist_id SET DEFAULT nextval('public.artist_artist_id_seq'::regclass);


--
-- Name: events event_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events ALTER COLUMN event_id SET DEFAULT nextval('public.events_event_id_seq'::regclass);


--
-- Name: playlist playlist_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playlist ALTER COLUMN playlist_id SET DEFAULT nextval('public.playlist_playlist_id_seq'::regclass);


--
-- Name: producer producer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producer ALTER COLUMN producer_id SET DEFAULT nextval('public.producer_producer_id_seq'::regclass);


--
-- Name: score score_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.score ALTER COLUMN score_id SET DEFAULT nextval('public.score_score_id_seq'::regclass);


--
-- Name: user_account user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_account ALTER COLUMN user_id SET DEFAULT nextval('public.user_account_user_id_seq'::regclass);


--
-- Data for Name: album; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.album (album_id, name, production_date, producer_id, playlist_id) FROM stdin;
1	4LOVE	2021-01-06	9	16
2	Mah hart	2021-01-06	9	16
3	BAGNO	2021-01-06	2	2
4	Dark Side of the Wall	2021-01-06	1	8
5	Toxicity	2021-01-06	3	8
\.


--
-- Data for Name: artist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artist (artist_id, firstname, lastname, date_of_birth, nationality, biography, date_of_death, user_id) FROM stdin;
1	Anna	Wannna	2021-01-06	Poland	xoxoxoxoxo	2021-01-06	1
2	Robin	Sparkles	2021-01-06	Canada	HIMYM	2021-01-06	2
3	Jimmy	Neutron	2021-01-06	English	smth clever	2021-01-06	3
4	Frank	Sinatra	2021-01-06	Italian	I make money only around christmas	2021-01-06	4
5	Corey	Taylor	2021-01-06	American	515	2021-01-06	5
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events (event_id, date, location, title, artist_id) FROM stdin;
1	2021-01-06	Plac Placka	super koncert	1
2	2021-01-06	Knotfest	Otwarcie parasola	5
3	2021-01-06	Mall	Super fun concert	2
\.


--
-- Data for Name: follow; Type: TABLE DATA; Schema: public; Owner: postgres
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
-- Data for Name: interested; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.interested (user_id, event_id) FROM stdin;
1	3
5	3
7	3
9	3
20	3
2	1
1	2
1	1
15	1
14	1
14	2
17	2
17	3
12	2
11	2
7	1
\.


--
-- Data for Name: playlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.playlist (playlist_id, name, date, user_id) FROM stdin;
1	techno	2021-01-05	2
2	patologia	2021-01-05	8
3	hard rock	2021-01-05	2
4	heavy metal	2021-01-05	1
5	ambient	2021-01-05	11
6	music for sport	2021-01-05	19
7	for my travel	2021-01-05	17
8	rock	2021-01-05	7
9	rapsy	2021-01-05	6
10	my top 5 jazz	2021-01-05	4
11	electronic	2021-01-05	12
12	club/dance	2021-01-05	9
13	dance	2021-01-05	8
14	top 5 my music	2021-01-05	2
15	swing	2021-01-05	14
16	alternative rock	2021-01-05	13
17	my rock	2021-01-05	2
18	classical	2021-01-05	3
19	to work	2021-01-05	5
20	old classical	2021-01-05	10
21	for travel	2021-01-05	10
22	my music to work	2021-01-05	13
\.


--
-- Data for Name: producer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producer (producer_id, name, genre, date) FROM stdin;
1	Bronnjovi	Rock	2021-01-06
2	MFG	Rap	2021-01-06
3	FL Records	Metal	2021-01-06
4	Slickson Music	Funk	2021-01-06
5	AT SOUNDS	Classical	2021-01-06
6	MUSICX	Disco Polo	2021-01-06
7	Gangsta Culture	Rap	2021-01-06
8	Collins booms	Funk	2021-01-06
9	Myslav	Alternative	2021-01-06
10	TYR	Folk	2021-01-06
\.


--
-- Data for Name: score; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.score (score_id, score, user_id) FROM stdin;
1	8	1
2	9	2
3	5	3
4	6	4
5	8	5
6	9	6
7	7	7
8	8	8
9	6	9
10	5	10
11	8	11
12	9	12
13	10	13
14	2	14
15	8	17
\.


--
-- Data for Name: user_account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_account (user_id, email, age, country, username, password) FROM stdin;
1	gparlet0@cloudflare.com	22	Mexico	plackie0	$1$strdsV/x$3XB2CG0H/ksXH9AhT7mZA1
2	aattenbrow1@jigsy.com	21	Ireland	aattenbrow1	$1$jGgdxx6R$9vdZ4Cw7VCgAJ47SrCYxg1
3	bburwood2@hatena.ne.jp	32	China	bburwood2	$1$GbisZhis$kd6DWHnB4hS9aDIn9l7Ul1
4	tperrygo3@godaddy.com	19	China	tperrygo3	$1$jb8vsHVk$H7rXEGUV0p1pJu0qsrlAK/
5	lzienkiewicz4@smugmug.com	38	Portugal	lzienkiewicz4	$1$uaj2Axmo$Ed8vLzjkuyqK7nKmBm9Jy0
6	rbernakiewicz5@wordpress.com	40	Russia	rbernakiewicz5	$1$nssLu0yi$ifBxKkM9f01kyjqbuT21V.
7	wcaple7@illinois.edu	31	China	wcaple7	$1$wLNOQVkX$Kf79wgDAIDQ/OThd1NeHS/
8	ecannam6@squarespace.com	16	China	ecannam6	$1$WqknEUD6$bb9SXCWLAbXI2XmBnlt8r0
9	tyann8@imageshack.us	52	Russia	tyann8	$1$cqWaE/Ao$NRwR2w0P6HtBz2nw2ZRJB1
10	wbannon9@jalbum.net	25	China	wbannon9	$1$de//V4Vf$mAX6OJk6W0fgmK.tYWAQp.
11	gmcgaugheya@tumblr.com	27	Czech Republic	gmcgaugheya	$1$DFh/YMgF$qNh4OxMRQmWlHd0wqjkXI.
12	abernardeaub@ft.com	31	Indonesia	abernardeaub	$1$6hV3sJQh$BtQqx3WZBfCLbaVjj4Qvq0
13	tlouisc@intel.com	30	Poland	tlouisc	$1$36bpLH7/$QHRGBmqpKsRga4OefHzj51
14	asheltond@trellian.com	29	Palestinian Territory	asheltond	$1$nJyBEn.M$unSJl2W0HPmmYbIH/InXG.
15	weatheralle@dmoz.org	23	Ukraine	weatheralle	$1$14Fwxrsm$JJvVH.glsn9UA/sYNH5ht.
16	akopkef@issuu.com	27	Cyprus	akopkef	$1$sXIIiTUO$jd2iguUegg1sAF.CfP0ac.
17	lshrubsallh@examiner.com	34	France	lshrubsallh	$1$il560krd$aMTIWYekIX/HhK5.n8qAk1
18	dpellingtoni@telegraph.co.uk	21	Portugal	dpellingtoni	$1$Y1R0sT63$dNnXFU.ky3fko/pmLBCSu1
19	mcellerj@globo.com	23	Sweden	mcellerj	$1$fftzE68k$A7gyR6wbrmB79Ec1GzdgP/
20	mgollyk@vimeo.com	43	Czech Republic	mgollyk	$1$ts64vxym$panymzS2QLddzPMyvy9SI.
\.


--
-- Name: album_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.album_album_id_seq', 5, true);


--
-- Name: artist_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artist_artist_id_seq', 5, true);


--
-- Name: events_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.events_event_id_seq', 3, true);


--
-- Name: playlist_playlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.playlist_playlist_id_seq', 22, true);


--
-- Name: producer_producer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producer_producer_id_seq', 10, true);


--
-- Name: score_score_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.score_score_id_seq', 15, true);


--
-- Name: user_account_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_account_user_id_seq', 20, true);


--
-- Name: album album_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (album_id);


--
-- Name: artist artist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_pkey PRIMARY KEY (artist_id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (event_id);


--
-- Name: playlist playlist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_pkey PRIMARY KEY (playlist_id);


--
-- Name: producer producer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producer
    ADD CONSTRAINT producer_pkey PRIMARY KEY (producer_id);


--
-- Name: score score_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.score
    ADD CONSTRAINT score_pkey PRIMARY KEY (score_id);


--
-- Name: user_account user_account_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_email_key UNIQUE (email);


--
-- Name: user_account user_account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (user_id);


--
-- Name: user_account user_account_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_username_key UNIQUE (username);


--
-- Name: album album_playlist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_playlist_id_fkey FOREIGN KEY (playlist_id) REFERENCES public.playlist(playlist_id);


--
-- Name: album album_producer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_producer_id_fkey FOREIGN KEY (producer_id) REFERENCES public.producer(producer_id);


--
-- Name: artist artist_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);


--
-- Name: events events_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artist(artist_id);


--
-- Name: follow follow_follower_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow
    ADD CONSTRAINT follow_follower_id_fkey FOREIGN KEY (follower_id) REFERENCES public.user_account(user_id);


--
-- Name: follow follow_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow
    ADD CONSTRAINT follow_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);


--
-- Name: interested interested_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interested
    ADD CONSTRAINT interested_event_id_fkey FOREIGN KEY (event_id) REFERENCES public.events(event_id);


--
-- Name: interested interested_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interested
    ADD CONSTRAINT interested_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);


--
-- Name: playlist playlist_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);


--
-- Name: score score_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.score
    ADD CONSTRAINT score_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);


--
-- PostgreSQL database dump complete
--

