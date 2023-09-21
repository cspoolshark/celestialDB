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
-- Name: celestial_user; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_user (
    celestial_user_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer
);


ALTER TABLE public.celestial_user OWNER TO freecodecamp;

--
-- Name: celestial_user_celestial_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_user_celestial_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_user_celestial_user_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_user_celestial_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_user_celestial_user_id_seq OWNED BY public.celestial_user.celestial_user_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    type character varying(20),
    in_constallation boolean,
    diameter numeric
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
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    size integer,
    type character varying(20)
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
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    type character varying(20) NOT NULL,
    distance_from_earth integer,
    has_water boolean NOT NULL
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
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    type character varying(20) NOT NULL,
    distance_from_earth numeric,
    num_planets integer
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
-- Name: celestial_user celestial_user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_user ALTER COLUMN celestial_user_id SET DEFAULT nextval('public.celestial_user_celestial_user_id_seq'::regclass);


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
-- Data for Name: celestial_user; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_user VALUES (1, 'Me', 46);
INSERT INTO public.celestial_user VALUES (2, 'Myself', 64);
INSERT INTO public.celestial_user VALUES (3, 'Who', 36);
INSERT INTO public.celestial_user VALUES (4, 'What', 29);
INSERT INTO public.celestial_user VALUES (5, 'I dont know', 24);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'This is the best galaxy!', 'spiral', false, 105700);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, 'barred spiral', false, 220000);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'This is an unusual hat shaped spiral galaxy', 'spiral', true, 50000);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', NULL, 'ring', true, 130000);
INSERT INTO public.galaxy VALUES (6, 'Messier 82', NULL, 'starburst', true, 37000);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', NULL, 'face-on spiral', true, 170000);
INSERT INTO public.galaxy VALUES (7, 'Centaurus A', NULL, 'elliptical', true, 97000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 5, 'Io', NULL, NULL);
INSERT INTO public.moon VALUES (2, 5, 'Europa', NULL, NULL);
INSERT INTO public.moon VALUES (3, 5, 'Ganymede', NULL, NULL);
INSERT INTO public.moon VALUES (4, 5, 'Callisto', NULL, NULL);
INSERT INTO public.moon VALUES (5, 5, 'Themisto', NULL, NULL);
INSERT INTO public.moon VALUES (6, 5, 'Himalia', NULL, NULL);
INSERT INTO public.moon VALUES (7, 5, 'Carpo', NULL, NULL);
INSERT INTO public.moon VALUES (8, 5, 'Valetudo', NULL, NULL);
INSERT INTO public.moon VALUES (9, 5, 'Carme', NULL, NULL);
INSERT INTO public.moon VALUES (10, 5, 'Adrastea', NULL, NULL);
INSERT INTO public.moon VALUES (11, 5, 'Metis', NULL, NULL);
INSERT INTO public.moon VALUES (12, 5, 'Amalthea', NULL, NULL);
INSERT INTO public.moon VALUES (13, 5, 'Thebe', NULL, NULL);
INSERT INTO public.moon VALUES (14, 5, 'Dia', NULL, NULL);
INSERT INTO public.moon VALUES (15, 5, 'Leda', NULL, NULL);
INSERT INTO public.moon VALUES (16, 5, 'Ersa', NULL, NULL);
INSERT INTO public.moon VALUES (17, 5, 'Pandia', NULL, NULL);
INSERT INTO public.moon VALUES (18, 5, 'Lysithea', NULL, NULL);
INSERT INTO public.moon VALUES (19, 5, 'Elara', NULL, NULL);
INSERT INTO public.moon VALUES (20, 5, 'Eupheme', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', NULL, 'Terrestrial', 48000000, false);
INSERT INTO public.planet VALUES (2, 1, 'Venus', NULL, 'Terrestrial', 42113000, false);
INSERT INTO public.planet VALUES (4, 1, 'Mars', NULL, 'Terrestrial', 140000000, false);
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', NULL, 'Gas Giant', 393170000, false);
INSERT INTO public.planet VALUES (6, 1, 'Saturn', 'Beautiful rings', 'Gas Giant', 887000000, false);
INSERT INTO public.planet VALUES (7, 1, 'Uranus', NULL, 'Ice Giant', 1768800000, true);
INSERT INTO public.planet VALUES (8, 1, 'Neptune', NULL, 'Ice Giant', 3, true);
INSERT INTO public.planet VALUES (9, 1, 'Pluto', NULL, 'Dwarf', 5, true);
INSERT INTO public.planet VALUES (10, 1, 'Ceres', NULL, 'Dwarf', 320000000, false);
INSERT INTO public.planet VALUES (11, 1, 'Makemake', NULL, 'Dwarf', 5, false);
INSERT INTO public.planet VALUES (12, 1, 'Haumea', NULL, 'Dwarf', 5, false);
INSERT INTO public.planet VALUES (3, 1, 'Earth', 'Best planet ever', 'Terrestrial', 0, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 'Yellow', 0.0000158, 8);
INSERT INTO public.star VALUES (3, 1, 'Sirius', 'White Dwarf', 8.6, NULL);
INSERT INTO public.star VALUES (2, 1, 'Alpha Centauri A', 'Yellow', 4.3, NULL);
INSERT INTO public.star VALUES (4, 1, 'Sigma Draconis', 'Yellow-orange Dwarf', 18.76, 9);
INSERT INTO public.star VALUES (5, 1, 'Altair', 'White Dwarf', 16.73, 0);
INSERT INTO public.star VALUES (6, 1, 'Delta Pavonis', 'Yellow-orange Dwarf', 19.95, 7);


--
-- Name: celestial_user_celestial_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_user_celestial_user_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: celestial_user celestial_user_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_user
    ADD CONSTRAINT celestial_user_name_key UNIQUE (name);


--
-- Name: celestial_user celestial_user_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_user
    ADD CONSTRAINT celestial_user_pkey PRIMARY KEY (celestial_user_id);


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