--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(30),
    stars integer,
    observed_supernovas integer,
    mass double precision,
    description text NOT NULL,
    is_spiral boolean
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
    name character varying(30),
    craters integer,
    geological_layers integer,
    mass double precision,
    description text NOT NULL,
    has_volcans boolean,
    planet_id integer
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
    name character varying(30),
    orbits integer,
    registered_impacts integer,
    mass double precision,
    description text NOT NULL,
    has_rings boolean,
    star_id integer
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
    name character varying(30),
    years double precision,
    planets integer,
    mass double precision,
    description text NOT NULL,
    variable boolean,
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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(30),
    eons numeric(2,1),
    description text DEFAULT 'general'::text NOT NULL,
    images text DEFAULT 'general'::text NOT NULL
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


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
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1000000000, 5, 12345678.9, 'A nearby spiral galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 2000000000, 10, 98765432.1, 'Our home galaxy', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 300000000, 2, 5432100, 'A small galaxy in the Local Group', true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 1500000000, 4, 8765432.1, 'A spiral galaxy with a bright nucleus', false);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 1200000000, 3, 6543210.98, 'Interacting grand-design spiral galaxy', true);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 900000000, 1, 4321987.77, 'Ring galaxy with starburst', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (84, 'Luna', 1000, 5, 0.07, 'Earth''s natural satellite', false, 26);
INSERT INTO public.moon VALUES (85, 'Phobos', 300, 1, 0.01, 'Inner moon of Mars', false, 27);
INSERT INTO public.moon VALUES (86, 'Deimos', 150, 1, 0.01, 'Outer moon of Mars', false, 27);
INSERT INTO public.moon VALUES (87, 'Io', 2000, 5, 0.89, 'Volcanically active moon of Jupiter', true, 25);
INSERT INTO public.moon VALUES (88, 'Europa', 800, 4, 0.48, 'Icy moon of Jupiter', false, 25);
INSERT INTO public.moon VALUES (89, 'Ganymede', 600, 5, 1.48, 'Largest moon in the Solar System', false, 25);
INSERT INTO public.moon VALUES (90, 'Callisto', 400, 6, 1.08, 'Heavily cratered moon of Jupiter', false, 25);
INSERT INTO public.moon VALUES (91, 'Titan', 700, 4, 1.35, 'Moon with thick atmosphere', false, 26);
INSERT INTO public.moon VALUES (92, 'Enceladus', 500, 3, 0.12, 'Icy moon with plumes', true, 26);
INSERT INTO public.moon VALUES (93, 'Mimas', 300, 2, 0.04, 'Cratered moon of Saturn', false, 26);
INSERT INTO public.moon VALUES (94, 'Triton', 400, 4, 0.21, 'Retrograde orbit moon of Neptune', true, 28);
INSERT INTO public.moon VALUES (95, 'Oberon', 250, 7, 0.18, 'Moon of Uranus', false, 27);
INSERT INTO public.moon VALUES (96, 'Titania', 220, 7, 0.25, 'Large moon of Uranus', false, 27);
INSERT INTO public.moon VALUES (97, 'Ariel', 210, 2, 0.13, 'Geologically young moon of Uranus', false, 27);
INSERT INTO public.moon VALUES (98, 'Umbriel', 190, 2, 0.12, 'Dark surface moon of Uranus', false, 27);
INSERT INTO public.moon VALUES (99, 'Miranda', 130, 2, 0.07, 'Moon with varied geology', false, 27);
INSERT INTO public.moon VALUES (100, 'Nereid', 100, 1, 0.03, 'Outer moon of Neptune', false, 28);
INSERT INTO public.moon VALUES (101, 'Proteus', 80, 1, 0.05, 'Irregularly shaped moon', false, 28);
INSERT INTO public.moon VALUES (102, 'Moon X1', 50, 1, 0.01, 'Test moon one', false, 29);
INSERT INTO public.moon VALUES (103, 'Moon X2', 60, 1, 0.01, 'Test moon two', false, 30);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (25, 'Mercury', 88, 0, 0.33, 'Closest to the Sun', false, 1);
INSERT INTO public.planet VALUES (26, 'Venus', 225, 1, 4.87, 'Second planet', false, 1);
INSERT INTO public.planet VALUES (27, 'Earth', 365, 2, 5.97, 'Our planet', false, 1);
INSERT INTO public.planet VALUES (28, 'Mars', 687, 5, 0.64, 'Red planet', false, 1);
INSERT INTO public.planet VALUES (29, 'Jupiter', 4333, 50, 1898, 'Gas giant', true, 1);
INSERT INTO public.planet VALUES (30, 'Saturn', 10759, 30, 568, 'Rings and moons', true, 1);
INSERT INTO public.planet VALUES (31, 'Uranus', 30687, 20, 86.8, 'Ice giant', true, 1);
INSERT INTO public.planet VALUES (32, 'Neptune', 60190, 10, 102, 'Furthest known', true, 1);
INSERT INTO public.planet VALUES (33, 'Planet X', 100000, 0, 1, 'Hypothetical planet', false, 2);
INSERT INTO public.planet VALUES (34, 'Kepler-22b', 290, 1, 10, 'Exoplanet in habitable zone', false, 2);
INSERT INTO public.planet VALUES (35, 'Gliese 581c', 13, 0, 5, 'Potentially habitable', false, 2);
INSERT INTO public.planet VALUES (36, 'HD 209458 b', 3, 0, 220, 'First transiting exoplanet', false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600000000, 8, 1, 'The star at the center of our solar system', false, 2);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4800000000, 1, 0.12, 'Closest star to the Sun', true, 2);
INSERT INTO public.star VALUES (3, 'Rigel', 8000000, 0, 21, 'Blue supergiant in Orion', true, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 10000000, 0, 20, 'Red supergiant expected to go supernova', true, 1);
INSERT INTO public.star VALUES (5, 'Sirius', 242000000, 1, 2.06, 'Brightest star in the night sky', false, 2);
INSERT INTO public.star VALUES (6, 'Vega', 455000000, 2, 2.14, 'Bright star in Lyra constellation', false, 3);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'fiste', NULL, 'general', 'general');
INSERT INTO public.universe VALUES (2, 'diastole', NULL, 'general', 'general');
INSERT INTO public.universe VALUES (3, 'figaroo', NULL, 'general', 'general');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 103, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 36, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


--
-- Name: galaxy description_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT description_galaxy UNIQUE (description);


--
-- Name: planet description_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT description_planet UNIQUE (description);


--
-- Name: star description_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT description_star UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_description UNIQUE (description);


--
-- Name: universe unique_universe; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT unique_universe UNIQUE (universe_id);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


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

