--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (11, 12, 7);
INSERT INTO public.games VALUES (12, 12, 8);
INSERT INTO public.games VALUES (13, 13, 843);
INSERT INTO public.games VALUES (14, 13, 461);
INSERT INTO public.games VALUES (15, 14, 654);
INSERT INTO public.games VALUES (16, 14, 971);
INSERT INTO public.games VALUES (17, 13, 364);
INSERT INTO public.games VALUES (18, 13, 1);
INSERT INTO public.games VALUES (19, 13, 975);
INSERT INTO public.games VALUES (20, 15, 563);
INSERT INTO public.games VALUES (21, 15, 799);
INSERT INTO public.games VALUES (22, 16, 621);
INSERT INTO public.games VALUES (23, 16, 658);
INSERT INTO public.games VALUES (24, 15, 461);
INSERT INTO public.games VALUES (25, 15, 1);
INSERT INTO public.games VALUES (26, 15, 19);
INSERT INTO public.games VALUES (27, 17, 991);
INSERT INTO public.games VALUES (28, 17, 974);
INSERT INTO public.games VALUES (29, 18, 649);
INSERT INTO public.games VALUES (30, 18, 619);
INSERT INTO public.games VALUES (31, 17, 675);
INSERT INTO public.games VALUES (32, 17, 120);
INSERT INTO public.games VALUES (33, 17, 376);
INSERT INTO public.games VALUES (34, 19, 612);
INSERT INTO public.games VALUES (35, 19, 174);
INSERT INTO public.games VALUES (36, 20, 212);
INSERT INTO public.games VALUES (37, 20, 13);
INSERT INTO public.games VALUES (38, 19, 388);
INSERT INTO public.games VALUES (39, 19, 314);
INSERT INTO public.games VALUES (40, 19, 77);
INSERT INTO public.games VALUES (41, 21, 975);
INSERT INTO public.games VALUES (42, 21, 338);
INSERT INTO public.games VALUES (43, 22, 143);
INSERT INTO public.games VALUES (44, 22, 822);
INSERT INTO public.games VALUES (45, 21, 284);
INSERT INTO public.games VALUES (46, 21, 877);
INSERT INTO public.games VALUES (47, 21, 230);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (12, 'Praveen');
INSERT INTO public.users VALUES (13, 'user_1752318044472');
INSERT INTO public.users VALUES (14, 'user_1752318044471');
INSERT INTO public.users VALUES (15, 'user_1752319099475');
INSERT INTO public.users VALUES (16, 'user_1752319099474');
INSERT INTO public.users VALUES (17, 'user_1752319597538');
INSERT INTO public.users VALUES (18, 'user_1752319597537');
INSERT INTO public.users VALUES (19, 'user_1752319774464');
INSERT INTO public.users VALUES (20, 'user_1752319774463');
INSERT INTO public.users VALUES (21, 'user_1752319812601');
INSERT INTO public.users VALUES (22, 'user_1752319812600');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 47, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 22, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

