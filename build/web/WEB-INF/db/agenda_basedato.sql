--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2018-10-30 16:32:48

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2108 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 98867)
-- Name: contactos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE contactos (
    id integer NOT NULL,
    nombre character varying,
    apellido character varying
);


ALTER TABLE contactos OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 98865)
-- Name: contactos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contactos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE contactos_id_seq OWNER TO postgres;

--
-- TOC entry 2109 (class 0 OID 0)
-- Dependencies: 181
-- Name: contactos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE contactos_id_seq OWNED BY contactos.id;


--
-- TOC entry 1982 (class 2604 OID 98870)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contactos ALTER COLUMN id SET DEFAULT nextval('contactos_id_seq'::regclass);


--
-- TOC entry 2100 (class 0 OID 98867)
-- Dependencies: 182
-- Data for Name: contactos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contactos (id, nombre, apellido) FROM stdin;
1	nombre1	apellid1
2	nombre2	sgagasg
4545	sfasfa	gdasgdasgag
454	fasfas	asgasga
75544	gagag	gagaga
45454	fasfas	gasgasgas
10	hfajsfas	fahsjfhasdf
45	fasa	gasdgas
8	asda	sasg
\.


--
-- TOC entry 2110 (class 0 OID 0)
-- Dependencies: 181
-- Name: contactos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contactos_id_seq', 1, false);


--
-- TOC entry 1984 (class 2606 OID 98875)
-- Name: contactos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contactos
    ADD CONSTRAINT contactos_pkey PRIMARY KEY (id);


--
-- TOC entry 2107 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-10-30 16:32:50

--
-- PostgreSQL database dump complete
--

