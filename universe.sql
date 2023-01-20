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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(30),
    num_stars integer,
    size integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: general_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.general_info (
    name character varying(30) NOT NULL,
    file character varying(30),
    extension character varying(30) NOT NULL,
    general_info_id integer NOT NULL
);


ALTER TABLE public.general_info OWNER TO freecodecamp;

--
-- Name: general_info_general_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.general_info_general_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.general_info_general_info_id_seq OWNER TO freecodecamp;

--
-- Name: general_info_general_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.general_info_general_info_id_seq OWNED BY public.general_info.general_info_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    has_life boolean,
    radius numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    has_life boolean,
    radius numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    constellation character varying(30),
    distance_from_earth integer,
    spectral_type text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: general_info general_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_info ALTER COLUMN general_info_id SET DEFAULT nextval('public.general_info_general_info_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', NULL, NULL, NULL);


--
-- Data for Name: general_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.general_info VALUES ('Earth', 'earth', 'txt', 1);
INSERT INTO public.general_info VALUES ('Mars', 'mars', 'txt', 2);
INSERT INTO public.general_info VALUES ('Venus', 'venus', 'txt', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, false, 1737);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, false, 9377);
INSERT INTO public.moon VALUES (3, 'Daemos', 4, false, 6);
INSERT INTO public.moon VALUES (4, 'Europe', 5, false, NULL);
INSERT INTO public.moon VALUES (5, 'Io', 5, false, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, false, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, false, NULL);
INSERT INTO public.moon VALUES (8, 'Leda', 5, false, NULL);
INSERT INTO public.moon VALUES (9, 'Ersa', 5, false, NULL);
INSERT INTO public.moon VALUES (10, 'Himalia', 5, false, NULL);
INSERT INTO public.moon VALUES (11, 'Mimas', 6, false, NULL);
INSERT INTO public.moon VALUES (12, 'Enceladus', 6, false, NULL);
INSERT INTO public.moon VALUES (13, 'Tethus', 6, false, NULL);
INSERT INTO public.moon VALUES (14, 'Dione', 6, false, NULL);
INSERT INTO public.moon VALUES (15, 'Rhea', 6, false, NULL);
INSERT INTO public.moon VALUES (16, 'Titan', 6, false, NULL);
INSERT INTO public.moon VALUES (17, 'Lapetus', 6, false, NULL);
INSERT INTO public.moon VALUES (18, 'Miranda', 7, false, NULL);
INSERT INTO public.moon VALUES (19, 'Ariel', 7, false, NULL);
INSERT INTO public.moon VALUES (20, 'Oberon', 7, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 6371);
INSERT INTO public.planet VALUES (2, 'Mercury', 1, false, 2439);
INSERT INTO public.planet VALUES (3, 'Venus', 1, false, 6051);
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, 3389);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, false, 69911);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, false, 58232);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, false, 25362);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, false, 24622);
INSERT INTO public.planet VALUES (9, 'proxima b', 6, false, 7371);
INSERT INTO public.planet VALUES (10, 'proxima c', 6, false, 8371);
INSERT INTO public.planet VALUES (11, 'proxima d', 6, false, 9371);
INSERT INTO public.planet VALUES (12, 'proxima e', 6, false, 10201);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'Hercules', 93, '-');
INSERT INTO public.star VALUES (2, 'R71', 2, 'Mensa', 2489, 'LBV');
INSERT INTO public.star VALUES (3, 'AB7', 3, 'Tucana', 197, 'WN4');
INSERT INTO public.star VALUES (4, 'Alpheratz', 4, 'Andromeda', 96, 'A3V');
INSERT INTO public.star VALUES (5, 'Alpha Trianguli', 5, 'Triangulum', 391, 'F5III');
INSERT INTO public.star VALUES (6, 'Alpha Centauri', 6, 'Centaurus', 4, 'G2V');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: general_info_general_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.general_info_general_info_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: general_info general_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_info
    ADD CONSTRAINT general_info_name_key UNIQUE (name);


--
-- Name: general_info general_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_info
    ADD CONSTRAINT general_info_pkey PRIMARY KEY (general_info_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: general_info general_info_planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_info
    ADD CONSTRAINT general_info_planet_name_fkey FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

