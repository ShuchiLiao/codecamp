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
    name character varying(30) NOT NULL,
    number integer,
    description text,
    age numeric,
    is_spheric boolean,
    been_explored boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    number integer,
    description text,
    age numeric,
    is_spheric boolean,
    been_explored boolean,
    moon_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    number integer,
    description text,
    age numeric,
    is_spheric boolean,
    been_explored boolean,
    planet_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    number integer,
    description text,
    age numeric,
    is_spheric boolean,
    been_explored boolean,
    star_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: supernova; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.supernova (
    name character varying(30),
    supernova_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.supernova OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('a', 10, 'gg1', 100, false, false, 1);
INSERT INTO public.galaxy VALUES ('b', 11, 'gg2', 101, false, false, 2);
INSERT INTO public.galaxy VALUES ('c', 12, 'gg3', 102, false, false, 3);
INSERT INTO public.galaxy VALUES ('d', 13, 'gg4', 103, false, false, 4);
INSERT INTO public.galaxy VALUES ('e', 14, 'gg5', 104, false, false, 5);
INSERT INTO public.galaxy VALUES ('f', 15, 'gg6', 105, false, false, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('p1', 1000, 'pp1', 1000, true, false, 1, 3);
INSERT INTO public.moon VALUES ('p2', 1000, 'pp2', 1000, true, false, 2, 3);
INSERT INTO public.moon VALUES ('p3', 1000, 'pp3', 1000, true, false, 3, 3);
INSERT INTO public.moon VALUES ('p4', 1000, 'pp4', 1000, true, false, 4, 3);
INSERT INTO public.moon VALUES ('p5', 1000, 'pp5', 1000, true, false, 5, 3);
INSERT INTO public.moon VALUES ('p6', 1000, 'pp6', 1000, true, false, 6, 3);
INSERT INTO public.moon VALUES ('p7', 1000, 'pp7', 1000, true, false, 7, 6);
INSERT INTO public.moon VALUES ('p8', 1000, 'pp8', 1000, true, false, 8, 6);
INSERT INTO public.moon VALUES ('p9', 1000, 'pp9', 1000, true, false, 9, 6);
INSERT INTO public.moon VALUES ('p10', 1000, 'pp10', 1000, true, false, 10, 6);
INSERT INTO public.moon VALUES ('p11', 1000, 'pp11', 1000, true, false, 11, 6);
INSERT INTO public.moon VALUES ('p12', 1000, 'pp12', 1000, true, false, 12, 6);
INSERT INTO public.moon VALUES ('s13', 1000, 'ss13', 1000, true, false, 13, 6);
INSERT INTO public.moon VALUES ('s14', 1000, 'ss14', 1000, true, false, 14, 9);
INSERT INTO public.moon VALUES ('s14', 1000, 'ss14', 1000, true, false, 15, 9);
INSERT INTO public.moon VALUES ('s14', 1000, 'ss14', 1000, true, false, 16, 9);
INSERT INTO public.moon VALUES ('s14', 1000, 'ss14', 1000, true, false, 17, 9);
INSERT INTO public.moon VALUES ('s14', 1000, 'ss14', 1000, true, false, 18, 9);
INSERT INTO public.moon VALUES ('s14', 1000, 'ss14', 1000, true, false, 19, 9);
INSERT INTO public.moon VALUES ('s14', 1000, 'ss14', 1000, true, false, 20, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('p1', 1000, 'pp1', 1000, true, false, 1, 3);
INSERT INTO public.planet VALUES ('p2', 1000, 'pp2', 1000, true, false, 2, 3);
INSERT INTO public.planet VALUES ('p3', 1000, 'pp3', 1000, true, false, 3, 3);
INSERT INTO public.planet VALUES ('p4', 1000, 'pp4', 1000, true, false, 4, 3);
INSERT INTO public.planet VALUES ('p5', 1000, 'pp5', 1000, true, false, 5, 3);
INSERT INTO public.planet VALUES ('p6', 1000, 'pp6', 1000, true, false, 6, 3);
INSERT INTO public.planet VALUES ('p7', 1000, 'pp7', 1000, true, false, 7, 6);
INSERT INTO public.planet VALUES ('p8', 1000, 'pp8', 1000, true, false, 8, 6);
INSERT INTO public.planet VALUES ('p9', 1000, 'pp9', 1000, true, false, 9, 6);
INSERT INTO public.planet VALUES ('p10', 1000, 'pp10', 1000, true, false, 10, 6);
INSERT INTO public.planet VALUES ('p11', 1000, 'pp11', 1000, true, false, 11, 6);
INSERT INTO public.planet VALUES ('p12', 1000, 'pp12', 1000, true, false, 12, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('aa', 100, 'ss1', 1000, false, false, 1, 1);
INSERT INTO public.star VALUES ('bb', 101, 'ss2', 1001, false, false, 2, 2);
INSERT INTO public.star VALUES ('cc', 102, 'ss3', 1002, false, false, 3, 3);
INSERT INTO public.star VALUES ('dd', 103, 'ss4', 1004, false, false, 4, 4);
INSERT INTO public.star VALUES ('ee', 105, 'ss5', 1005, false, false, 5, 5);
INSERT INTO public.star VALUES ('ff', 106, 'ss6', 1006, false, false, 6, 6);


--
-- Data for Name: supernova; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.supernova VALUES ('blackhole1', 1, 1);
INSERT INTO public.supernova VALUES ('blackhole2', 2, 3);
INSERT INTO public.supernova VALUES ('blackhole3', 4, 5);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: supernova supernova_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova
    ADD CONSTRAINT supernova_pkey PRIMARY KEY (supernova_id);


--
-- Name: supernova supernova_supernova_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova
    ADD CONSTRAINT supernova_supernova_id_key UNIQUE (supernova_id);


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

