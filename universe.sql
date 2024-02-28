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
    name character varying(55) NOT NULL,
    type character varying(55),
    age_in_millions_of_years integer,
    has_life boolean,
    description text
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
    planet_id integer,
    name character varying(55) NOT NULL,
    type character varying(55),
    description text
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
    star_id integer,
    name character varying(55) NOT NULL,
    type character varying(55),
    age integer,
    age_in_millions_of_years integer,
    has_life boolean,
    description text
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
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    planet_id integer,
    name character varying(100) NOT NULL,
    scientific_name character varying(100) NOT NULL,
    classification character varying(100),
    habitat character varying(255),
    average_lifespan_years integer,
    description text
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.species_species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.species_species_id_seq OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.species_species_id_seq OWNED BY public.species.species_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(55) NOT NULL,
    age_in_millions_of_years integer,
    type character varying(55),
    distance_from_earth numeric(10,2),
    description text
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
-- Name: species species_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species ALTER COLUMN species_id SET DEFAULT nextval('public.species_species_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 13000, true, 'The Milky Way is the galaxy where the Solar System resides.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 10000, false, 'Andromeda is the nearest spiral galaxy to the Milky Way.');
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Elliptical', 60000, false, 'Messier 87 is a supergiant elliptical galaxy in the constellation Virgo.');
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Spiral', 40000, false, 'Triangulum is a spiral galaxy in the constellation Triangulum.');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral', 10000, false, 'The Sombrero Galaxy is an unbarred spiral galaxy in the constellation Virgo.');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Spiral', 23000, false, 'The Whirlpool Galaxy is an interacting grand-design spiral galaxy in the constellation Canes Venatici.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Moon', 'Natural satellite', 'The Moon is Earth''s only permanent natural satellite.');
INSERT INTO public.moon VALUES (2, 5, 'Io', 'Galilean moon', 'Io is the innermost and third-largest of the four Galilean moons of Jupiter.');
INSERT INTO public.moon VALUES (3, 5, 'Europa', 'Galilean moon', 'Europa is the smallest of the four Galilean moons orbiting Jupiter.');
INSERT INTO public.moon VALUES (4, 5, 'Ganymede', 'Galilean moon', 'Ganymede is the largest moon of Jupiter and in the Solar System.');
INSERT INTO public.moon VALUES (5, 5, 'Callisto', 'Galilean moon', 'Callisto is the second-largest moon of Jupiter and the third-largest moon in the Solar System.');
INSERT INTO public.moon VALUES (6, 6, 'Titan', 'Saturnian moon', 'Titan is the largest moon of Saturn and the second-largest natural satellite in the Solar System.');
INSERT INTO public.moon VALUES (7, 6, 'Enceladus', 'Saturnian moon', 'Enceladus is the sixth-largest moon of Saturn.');
INSERT INTO public.moon VALUES (8, 6, 'Mimas', 'Saturnian moon', 'Mimas is a moon of Saturn which was discovered in 1789 by William Herschel.');
INSERT INTO public.moon VALUES (9, 6, 'Tethys', 'Saturnian moon', 'Tethys is a moon of Saturn which was discovered by G. D. Cassini in 1684.');
INSERT INTO public.moon VALUES (10, 6, 'Rhea', 'Saturnian moon', 'Rhea is the second-largest moon of Saturn and the ninth-largest moon in the Solar System.');
INSERT INTO public.moon VALUES (11, 3, 'Phobos', 'Martian moon', 'Phobos is the larger and innermost of the two natural satellites of Mars.');
INSERT INTO public.moon VALUES (12, 3, 'Deimos', 'Martian moon', 'Deimos is the smaller and outermost of the two natural satellites of Mars.');
INSERT INTO public.moon VALUES (13, 5, 'Amalthea', 'Jovian moon', 'Amalthea is the third moon of Jupiter in order of distance from the planet.');
INSERT INTO public.moon VALUES (14, 5, 'Himalia', 'Jovian moon', 'Himalia is a prograde irregular satellite of Jupiter.');
INSERT INTO public.moon VALUES (15, 5, 'Leda', 'Jovian moon', 'Leda is a prograde irregular satellite of Jupiter.');
INSERT INTO public.moon VALUES (16, 5, 'Elara', 'Jovian moon', 'Elara is a prograde irregular satellite of Jupiter.');
INSERT INTO public.moon VALUES (17, 5, 'Ananke', 'Jovian moon', 'Ananke is a retrograde irregular satellite of Jupiter.');
INSERT INTO public.moon VALUES (18, 5, 'Carme', 'Jovian moon', 'Carme is a retrograde irregular satellite of Jupiter.');
INSERT INTO public.moon VALUES (19, 5, 'Pasiphae', 'Jovian moon', 'Pasiphae is a retrograde irregular satellite of Jupiter.');
INSERT INTO public.moon VALUES (20, 5, 'Sinope', 'Jovian moon', 'Sinope is a retrograde irregular satellite of Jupiter.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 'Terrestrial', 5, 4500, false, 'Mercury is the smallest and innermost planet in the Solar System.');
INSERT INTO public.planet VALUES (2, 1, 'Venus', 'Terrestrial', 5, 4500, false, 'Venus is the second planet from the Sun.');
INSERT INTO public.planet VALUES (3, 1, 'Earth', 'Terrestrial', 5, 4500, true, 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.');
INSERT INTO public.planet VALUES (4, 1, 'Mars', 'Terrestrial', 5, 4500, false, 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, after Mercury.');
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', 'Gas Giant', 5, 4500, false, 'Jupiter is the fifth planet from the Sun and the largest in the Solar System.');
INSERT INTO public.planet VALUES (6, 1, 'Saturn', 'Gas Giant', 5, 4500, false, 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.');
INSERT INTO public.planet VALUES (7, 1, 'Uranus', 'Ice Giant', 5, 4500, false, 'Uranus is the seventh planet from the Sun.');
INSERT INTO public.planet VALUES (8, 1, 'Neptune', 'Ice Giant', 5, 4500, false, 'Neptune is the eighth and farthest-known Solar planet from the Sun.');
INSERT INTO public.planet VALUES (9, 2, 'Proxima b', 'Exoplanet', NULL, NULL, NULL, 'Proxima b is an exoplanet orbiting within the habitable zone of the red dwarf star Proxima Centauri.');
INSERT INTO public.planet VALUES (10, 2, 'Gliese 581g', 'Exoplanet', NULL, NULL, NULL, 'Gliese 581g is an unconfirmed exoplanet in the Gliese 581 planetary system.');
INSERT INTO public.planet VALUES (11, 2, 'Kepler-186f', 'Exoplanet', NULL, NULL, false, 'Kepler-186f is an exoplanet orbiting the red dwarf Kepler-186.');
INSERT INTO public.planet VALUES (12, 2, 'TRAPPIST-1e', 'Exoplanet', NULL, NULL, false, 'TRAPPIST-1e is an exoplanet orbiting the ultracool dwarf star TRAPPIST-1.');


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 3, 'Human', 'Homo sapiens', 'Mammal', 'Terrestrial', 80, 'Humans are the only extant members of the subtribe Hominina.');
INSERT INTO public.species VALUES (2, 3, 'Tiger', 'Panthera tigris', 'Mammal', 'Terrestrial', 10, 'The tiger is the largest extant cat species and a member of the genus Panthera.');
INSERT INTO public.species VALUES (3, 3, 'Blue Whale', 'Balaenoptera musculus', 'Mammal', 'Marine', 90, 'The blue whale is the largest animal known to have ever existed.');
INSERT INTO public.species VALUES (4, 4, 'Martian Microbe', 'Unknown', 'Microorganism', 'Subsurface', 1, 'Hypothetical microorganisms that may exist beneath the surface of Mars.');
INSERT INTO public.species VALUES (5, 5, 'Jovian Gas Giant Jellyfish', 'Unknown', 'Invertebrate', 'Atmospheric', 5, 'Hypothetical jellyfish-like creatures that may inhabit the upper atmosphere of Jupiter.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 4600, 'G-type main-sequence', 8.30, 'The Sun is the star at the center of the Solar System.');
INSERT INTO public.star VALUES (2, 1, 'Alpha Centauri', 6000, 'Triple star system', 4.37, 'Alpha Centauri is the closest star system to the Solar System.');
INSERT INTO public.star VALUES (3, 1, 'Sirius', 250, 'Binary star system', 8.60, 'Sirius is the brightest star in the night sky.');
INSERT INTO public.star VALUES (4, 2, 'Proxima Centauri', 6000, 'Red dwarf', 4.24, 'Proxima Centauri is the closest known star to the Sun.');
INSERT INTO public.star VALUES (5, 3, 'Virgo A', 13000, 'Elliptical', 54.00, 'Virgo A is the radio galaxy and the largest galaxy in the Virgo Cluster.');
INSERT INTO public.star VALUES (6, 4, 'M33 X-7', 5000, 'Black hole binary system', 3.00, 'M33 X-7 is an X-ray binary system in the Triangulum Galaxy.');


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: species_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.species_species_id_seq', 5, true);


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
-- Name: species species_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_name_key UNIQUE (name);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


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
-- Name: species species_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
