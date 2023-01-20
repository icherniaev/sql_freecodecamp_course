--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (53, 2018, 'Final', 21, 22, 4, 2);
INSERT INTO public.games VALUES (54, 2018, 'Third Place', 23, 24, 2, 0);
INSERT INTO public.games VALUES (55, 2018, 'Semi-Final', 22, 24, 2, 1);
INSERT INTO public.games VALUES (56, 2018, 'Semi-Final', 21, 23, 1, 0);
INSERT INTO public.games VALUES (57, 2018, 'Quarter-Final', 22, 25, 3, 2);
INSERT INTO public.games VALUES (58, 2018, 'Quarter-Final', 24, 26, 2, 0);
INSERT INTO public.games VALUES (59, 2018, 'Quarter-Final', 23, 27, 2, 1);
INSERT INTO public.games VALUES (60, 2018, 'Quarter-Final', 21, 28, 2, 0);
INSERT INTO public.games VALUES (61, 2018, 'Eighth-Final', 24, 29, 2, 1);
INSERT INTO public.games VALUES (62, 2018, 'Eighth-Final', 26, 30, 1, 0);
INSERT INTO public.games VALUES (63, 2018, 'Eighth-Final', 23, 31, 3, 2);
INSERT INTO public.games VALUES (64, 2018, 'Eighth-Final', 27, 32, 2, 0);
INSERT INTO public.games VALUES (65, 2018, 'Eighth-Final', 22, 33, 2, 1);
INSERT INTO public.games VALUES (66, 2018, 'Eighth-Final', 25, 34, 2, 1);
INSERT INTO public.games VALUES (67, 2018, 'Eighth-Final', 28, 35, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Eighth-Final', 21, 36, 4, 3);
INSERT INTO public.games VALUES (69, 2014, 'Final', 37, 36, 1, 0);
INSERT INTO public.games VALUES (70, 2014, 'Third Place', 38, 27, 3, 0);
INSERT INTO public.games VALUES (71, 2014, 'Semi-Final', 36, 38, 1, 0);
INSERT INTO public.games VALUES (72, 2014, 'Semi-Final', 37, 27, 7, 1);
INSERT INTO public.games VALUES (73, 2014, 'Quarter-Final', 38, 39, 1, 0);
INSERT INTO public.games VALUES (74, 2014, 'Quarter-Final', 36, 23, 1, 0);
INSERT INTO public.games VALUES (75, 2014, 'Quarter-Final', 27, 29, 2, 1);
INSERT INTO public.games VALUES (76, 2014, 'Quarter-Final', 37, 21, 1, 0);
INSERT INTO public.games VALUES (77, 2014, 'Eighth-Final', 27, 40, 2, 1);
INSERT INTO public.games VALUES (78, 2014, 'Eighth-Final', 29, 28, 2, 0);
INSERT INTO public.games VALUES (79, 2014, 'Eighth-Final', 21, 41, 2, 0);
INSERT INTO public.games VALUES (80, 2014, 'Eighth-Final', 37, 42, 2, 1);
INSERT INTO public.games VALUES (81, 2014, 'Eighth-Final', 38, 32, 2, 1);
INSERT INTO public.games VALUES (82, 2014, 'Eighth-Final', 39, 43, 2, 1);
INSERT INTO public.games VALUES (83, 2014, 'Eighth-Final', 36, 30, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Eighth-Final', 23, 44, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (21, 'France');
INSERT INTO public.teams VALUES (22, 'Croatia');
INSERT INTO public.teams VALUES (23, 'Belgium');
INSERT INTO public.teams VALUES (24, 'England');
INSERT INTO public.teams VALUES (25, 'Russia');
INSERT INTO public.teams VALUES (26, 'Sweden');
INSERT INTO public.teams VALUES (27, 'Brazil');
INSERT INTO public.teams VALUES (28, 'Uruguay');
INSERT INTO public.teams VALUES (29, 'Colombia');
INSERT INTO public.teams VALUES (30, 'Switzerland');
INSERT INTO public.teams VALUES (31, 'Japan');
INSERT INTO public.teams VALUES (32, 'Mexico');
INSERT INTO public.teams VALUES (33, 'Denmark');
INSERT INTO public.teams VALUES (34, 'Spain');
INSERT INTO public.teams VALUES (35, 'Portugal');
INSERT INTO public.teams VALUES (36, 'Argentina');
INSERT INTO public.teams VALUES (37, 'Germany');
INSERT INTO public.teams VALUES (38, 'Netherlands');
INSERT INTO public.teams VALUES (39, 'Costa Rica');
INSERT INTO public.teams VALUES (40, 'Chile');
INSERT INTO public.teams VALUES (41, 'Nigeria');
INSERT INTO public.teams VALUES (42, 'Algeria');
INSERT INTO public.teams VALUES (43, 'Greece');
INSERT INTO public.teams VALUES (44, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 84, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 44, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
