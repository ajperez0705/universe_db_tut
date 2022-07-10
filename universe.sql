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
    name character varying NOT NULL,
    description text,
    num_stars integer,
    num_planets integer,
    distance_from_earth numeric(12,2),
    has_life boolean
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
    name character varying,
    planet_id integer,
    temperature integer NOT NULL,
    throwaway boolean
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
    name character varying,
    star_id integer,
    livable boolean NOT NULL,
    temperature integer
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
    name character varying NOT NULL,
    galaxy_id integer,
    apparent_magnitude numeric(2,2) NOT NULL,
    throwaway boolean
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
-- Name: test_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test_table (
    test_table_id integer NOT NULL,
    name character varying NOT NULL,
    age integer
);


ALTER TABLE public.test_table OWNER TO freecodecamp;

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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Earths home', 1, 8, 0.00, true);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 'Satellite of Milky Way', 3, 6, 0.25, false);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Nearest major galaxy from earth', 2, 80, 2.50, false);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 'Discovered by Edward Pigott in 1779', 4, 70, 3.00, false);
INSERT INTO public.galaxy VALUES (5, 'Bodes', 'Discovered by Johnny boy in 1774', 1, 42, 12.00, false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Spiral galaxy in constellation mof Virgo', 2, 2, 22.00, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 1, 20, true);
INSERT INTO public.moon VALUES (2, 'Deimos', 1, 30, true);
INSERT INTO public.moon VALUES (3, 'Calisto', 1, 30, true);
INSERT INTO public.moon VALUES (4, 'Io', 2, 40, true);
INSERT INTO public.moon VALUES (5, 'Dione', 3, 30, true);
INSERT INTO public.moon VALUES (6, 'Tethys', 3, 20, true);
INSERT INTO public.moon VALUES (7, 'Titan', 2, 30, true);
INSERT INTO public.moon VALUES (8, 'Rhea', 1, 30, true);
INSERT INTO public.moon VALUES (9, 'Hyperion', 1, 20, true);
INSERT INTO public.moon VALUES (10, 'Europa', 1, 10, true);
INSERT INTO public.moon VALUES (11, 'Ariel', 4, 20, true);
INSERT INTO public.moon VALUES (12, 'Titania', 2, 90, true);
INSERT INTO public.moon VALUES (13, 'Charon', 1, 30, true);
INSERT INTO public.moon VALUES (14, 'Umbriel', 1, 20, true);
INSERT INTO public.moon VALUES (15, 'Miranda', 5, 20, true);
INSERT INTO public.moon VALUES (16, 'James', 2, 20, true);
INSERT INTO public.moon VALUES (17, 'Miriam', 4, 10, true);
INSERT INTO public.moon VALUES (18, 'Helena', 9, 10, true);
INSERT INTO public.moon VALUES (19, 'Guy', 2, 70, true);
INSERT INTO public.moon VALUES (20, 'Jada', 1, 30, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 80);
INSERT INTO public.planet VALUES (2, 'Uranus', 1, false, 350);
INSERT INTO public.planet VALUES (3, 'Mercury', 1, false, 500);
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, 400);
INSERT INTO public.planet VALUES (5, 'Neptune', 1, false, 200);
INSERT INTO public.planet VALUES (6, 'Jupiter', 1, false, 300);
INSERT INTO public.planet VALUES (7, 'Venus', 1, false, 80);
INSERT INTO public.planet VALUES (8, 'Saturn', 1, false, 700);
INSERT INTO public.planet VALUES (9, 'America', 1, true, 80);
INSERT INTO public.planet VALUES (10, 'China', 2, false, 800);
INSERT INTO public.planet VALUES (11, 'Russia', 3, false, 10);
INSERT INTO public.planet VALUES (12, 'Brazil', 1, true, 90);
INSERT INTO public.planet VALUES (13, 'Puerto Rico', 1, true, 90);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 0.20, true);
INSERT INTO public.star VALUES (2, 'Sirius', 2, 0.44, true);
INSERT INTO public.star VALUES (3, 'Canopus', 2, 0.22, true);
INSERT INTO public.star VALUES (4, 'Arcturus', 2, 0.12, true);
INSERT INTO public.star VALUES (5, 'Vega', 5, 0.89, true);
INSERT INTO public.star VALUES (6, 'Altair', 6, 0.72, true);


--
-- Data for Name: test_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test_table VALUES (1, 'Andrew', 29);
INSERT INTO public.test_table VALUES (2, 'Helena', 31);
INSERT INTO public.test_table VALUES (3, 'Jada', 25);


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
-- Name: test_table test_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test_table
    ADD CONSTRAINT test_table_pkey PRIMARY KEY (test_table_id);


--
-- Name: test_table unique_person_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test_table
    ADD CONSTRAINT unique_person_id UNIQUE (test_table_id);


--
-- Name: moon moon_planets_moon_revolves_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planets_moon_revolves_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_used_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_used_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_home_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_home_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

