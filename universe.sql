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
-- Name: astroid_belt; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astroid_belt (
    astroid_belt_id integer NOT NULL,
    size_mi integer,
    name character varying(20) NOT NULL
);


ALTER TABLE public.astroid_belt OWNER TO freecodecamp;

--
-- Name: astroid_belt_astroid_belt_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astroid_belt_astroid_belt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astroid_belt_astroid_belt_id_seq OWNER TO freecodecamp;

--
-- Name: astroid_belt_astroid_belt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astroid_belt_astroid_belt_id_seq OWNED BY public.astroid_belt.astroid_belt_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    discoverer text,
    year numeric,
    priority boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    radius_mi integer,
    planet_id integer NOT NULL,
    priority boolean NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    radius_mi integer,
    star_id integer NOT NULL,
    priority boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    radius_mi integer,
    priority boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: astroid_belt astroid_belt_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid_belt ALTER COLUMN astroid_belt_id SET DEFAULT nextval('public.astroid_belt_astroid_belt_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astroid_belt; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astroid_belt VALUES (1, 5000000, 'Orion');
INSERT INTO public.astroid_belt VALUES (2, 6700000, 'Zues');
INSERT INTO public.astroid_belt VALUES (3, 6700000, 'Hades');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Dan', 1909, true);
INSERT INTO public.galaxy VALUES (2, 'Snickers', 'Danny', 1919, true);
INSERT INTO public.galaxy VALUES (3, 'Hersheys', 'Isaac', 1929, true);
INSERT INTO public.galaxy VALUES (4, 'Million Dollar', 'Aaron', 1939, false);
INSERT INTO public.galaxy VALUES (5, 'Almond Joy', 'Ed', 1949, false);
INSERT INTO public.galaxy VALUES (6, 'KitKat', 'Eddie', 1959, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Blue', 10000, 1, true);
INSERT INTO public.moon VALUES (2, 'Red', 11000, 1, true);
INSERT INTO public.moon VALUES (3, 'Green', 21000, 1, true);
INSERT INTO public.moon VALUES (4, 'Teal', 21040, 1, false);
INSERT INTO public.moon VALUES (5, 'Orange', 21040, 1, false);
INSERT INTO public.moon VALUES (6, 'White', 21040, 1, false);
INSERT INTO public.moon VALUES (7, 'Block', 21040, 1, false);
INSERT INTO public.moon VALUES (8, 'Black', 21040, 1, false);
INSERT INTO public.moon VALUES (9, 'Yellow', 21040, 1, false);
INSERT INTO public.moon VALUES (10, 'Apple', 21040, 2, false);
INSERT INTO public.moon VALUES (11, 'Banana', 22040, 2, false);
INSERT INTO public.moon VALUES (12, 'Pear', 22040, 2, false);
INSERT INTO public.moon VALUES (13, 'Peach', 22040, 2, false);
INSERT INTO public.moon VALUES (14, 'Strawberry', 32040, 3, true);
INSERT INTO public.moon VALUES (15, 'Blackberry', 32040, 3, true);
INSERT INTO public.moon VALUES (16, 'Blueberry', 32040, 3, true);
INSERT INTO public.moon VALUES (17, 'Redberry', 32040, 3, true);
INSERT INTO public.moon VALUES (18, 'Greenberry', 32040, 3, true);
INSERT INTO public.moon VALUES (19, 'Kelp', 42040, 4, true);
INSERT INTO public.moon VALUES (20, 'Sesame', 44040, 5, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 30000, 1, true);
INSERT INTO public.planet VALUES (2, 'Water', 50000, 2, false);
INSERT INTO public.planet VALUES (3, 'Fire', 55000, 3, false);
INSERT INTO public.planet VALUES (4, 'Wind', 75000, 4, true);
INSERT INTO public.planet VALUES (5, 'Mud', 75500, 5, true);
INSERT INTO public.planet VALUES (6, 'Electric', 75560, 6, true);
INSERT INTO public.planet VALUES (8, 'Sand', 60000, 1, false);
INSERT INTO public.planet VALUES (9, 'Waver', 65000, 2, true);
INSERT INTO public.planet VALUES (10, 'Sumo', 65000, 2, true);
INSERT INTO public.planet VALUES (11, 'Storm', 65000, 6, true);
INSERT INTO public.planet VALUES (12, 'Thunder', 65000, 6, true);
INSERT INTO public.planet VALUES (13, 'Shick', 65000, 6, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Yuga', 200000, true, 1);
INSERT INTO public.star VALUES (2, 'Tarius', 240000, true, 2);
INSERT INTO public.star VALUES (3, 'Drax', 246000, false, 3);
INSERT INTO public.star VALUES (4, 'Operation Whitewash', 296000, false, 4);
INSERT INTO public.star VALUES (5, 'ArizonaCity', 296600, false, 5);
INSERT INTO public.star VALUES (6, 'EZC', 696600, false, 6);


--
-- Name: astroid_belt_astroid_belt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astroid_belt_astroid_belt_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astroid_belt astroid_belt_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid_belt
    ADD CONSTRAINT astroid_belt_name_key UNIQUE (name);


--
-- Name: astroid_belt astroid_belt_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid_belt
    ADD CONSTRAINT astroid_belt_pkey PRIMARY KEY (astroid_belt_id);


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
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

