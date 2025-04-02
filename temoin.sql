--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2025-04-02 15:16:27

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
-- TOC entry 218 (class 1259 OID 100085)
-- Name: avion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.avion (
    id integer NOT NULL,
    modele character varying(255) NOT NULL,
    datefabrication date NOT NULL
);


ALTER TABLE public.avion OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 100084)
-- Name: avion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.avion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.avion_id_seq OWNER TO postgres;

--
-- TOC entry 4907 (class 0 OID 0)
-- Dependencies: 217
-- Name: avion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.avion_id_seq OWNED BY public.avion.id;


--
-- TOC entry 234 (class 1259 OID 108416)
-- Name: liaisonsiegevol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.liaisonsiegevol (
    id integer NOT NULL,
    idtypesiege integer,
    idvol integer,
    prix numeric(10,2) NOT NULL
);


ALTER TABLE public.liaisonsiegevol OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 108415)
-- Name: liaisonsiegevol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.liaisonsiegevol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.liaisonsiegevol_id_seq OWNER TO postgres;

--
-- TOC entry 4908 (class 0 OID 0)
-- Dependencies: 233
-- Name: liaisonsiegevol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.liaisonsiegevol_id_seq OWNED BY public.liaisonsiegevol.id;


--
-- TOC entry 222 (class 1259 OID 100108)
-- Name: liaisontypesiegeavion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.liaisontypesiegeavion (
    id integer NOT NULL,
    idtypesiege integer,
    idavion integer,
    nombre integer NOT NULL
);


ALTER TABLE public.liaisontypesiegeavion OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 100107)
-- Name: liaisontypesiegeavion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.liaisontypesiegeavion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.liaisontypesiegeavion_id_seq OWNER TO postgres;

--
-- TOC entry 4909 (class 0 OID 0)
-- Dependencies: 221
-- Name: liaisontypesiegeavion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.liaisontypesiegeavion_id_seq OWNED BY public.liaisontypesiegeavion.id;


--
-- TOC entry 232 (class 1259 OID 100185)
-- Name: liaisonvolannulation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.liaisonvolannulation (
    id integer NOT NULL,
    dureavantvol integer NOT NULL,
    idvol integer
);


ALTER TABLE public.liaisonvolannulation OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 100184)
-- Name: liaisonvolannulation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.liaisonvolannulation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.liaisonvolannulation_id_seq OWNER TO postgres;

--
-- TOC entry 4910 (class 0 OID 0)
-- Dependencies: 231
-- Name: liaisonvolannulation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.liaisonvolannulation_id_seq OWNED BY public.liaisonvolannulation.id;


--
-- TOC entry 228 (class 1259 OID 100156)
-- Name: liaisonvolpromotion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.liaisonvolpromotion (
    id integer NOT NULL,
    idvol integer,
    idtypesiege integer,
    nombresiege integer NOT NULL,
    promotion integer NOT NULL
);


ALTER TABLE public.liaisonvolpromotion OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 100155)
-- Name: liaisonvolpromotion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.liaisonvolpromotion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.liaisonvolpromotion_id_seq OWNER TO postgres;

--
-- TOC entry 4911 (class 0 OID 0)
-- Dependencies: 227
-- Name: liaisonvolpromotion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.liaisonvolpromotion_id_seq OWNED BY public.liaisonvolpromotion.id;


--
-- TOC entry 230 (class 1259 OID 100173)
-- Name: liaisonvolreservation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.liaisonvolreservation (
    id integer NOT NULL,
    dureavantvol integer NOT NULL,
    idvol integer
);


ALTER TABLE public.liaisonvolreservation OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 100172)
-- Name: liaisonvolreservation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.liaisonvolreservation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.liaisonvolreservation_id_seq OWNER TO postgres;

--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 229
-- Name: liaisonvolreservation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.liaisonvolreservation_id_seq OWNED BY public.liaisonvolreservation.id;


--
-- TOC entry 237 (class 1259 OID 108443)
-- Name: reservation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reservation (
    id integer NOT NULL,
    idutilisateur integer,
    idvol integer,
    datyheure timestamp without time zone NOT NULL,
    passport bytea,
    statut integer,
    place integer NOT NULL,
    prix numeric(10,2) NOT NULL
);


ALTER TABLE public.reservation OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 108442)
-- Name: reservation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reservation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reservation_id_seq OWNER TO postgres;

--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 236
-- Name: reservation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reservation_id_seq OWNED BY public.reservation.id;


--
-- TOC entry 220 (class 1259 OID 100099)
-- Name: typesiege; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.typesiege (
    id integer NOT NULL,
    val character varying(255) NOT NULL,
    desce character varying(255)
);


ALTER TABLE public.typesiege OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 100098)
-- Name: typesiege_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.typesiege_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.typesiege_id_seq OWNER TO postgres;

--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 219
-- Name: typesiege_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.typesiege_id_seq OWNED BY public.typesiege.id;


--
-- TOC entry 216 (class 1259 OID 100074)
-- Name: utilisateur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utilisateur (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    role character varying(50) NOT NULL
);


ALTER TABLE public.utilisateur OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 100073)
-- Name: utilisateur_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.utilisateur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.utilisateur_id_seq OWNER TO postgres;

--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 215
-- Name: utilisateur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.utilisateur_id_seq OWNED BY public.utilisateur.id;


--
-- TOC entry 224 (class 1259 OID 100125)
-- Name: ville; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ville (
    id integer NOT NULL,
    val character varying(255) NOT NULL,
    desce text
);


ALTER TABLE public.ville OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 100124)
-- Name: ville_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ville_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ville_id_seq OWNER TO postgres;

--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 223
-- Name: ville_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ville_id_seq OWNED BY public.ville.id;


--
-- TOC entry 226 (class 1259 OID 100134)
-- Name: vol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vol (
    id integer NOT NULL,
    idavion integer,
    idvilledepart integer,
    idvillearive integer,
    datedepart timestamp without time zone NOT NULL,
    datearive timestamp without time zone NOT NULL,
    dure integer NOT NULL,
    statut integer
);


ALTER TABLE public.vol OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 100133)
-- Name: vol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vol_id_seq OWNER TO postgres;

--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 225
-- Name: vol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vol_id_seq OWNED BY public.vol.id;


--
-- TOC entry 235 (class 1259 OID 108437)
-- Name: voldetails; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.voldetails AS
 SELECT t.id,
    t.idavion,
    t.idvilledepart,
    t.idvillearive,
    t.datedepart,
    t.datearive,
    t.dure,
    t.statut,
    t.idtypesiege,
    t.prix,
    t1.nombresiege,
    t1.promotion,
    t2.nombre,
    vi.val AS villedepart,
    vi1.val AS villearive,
    tpy.val AS typesiege,
    avi.modele
   FROM ((((((( SELECT v.id,
            v.idavion,
            v.idvilledepart,
            v.idvillearive,
            v.datedepart,
            v.datearive,
            v.dure,
            v.statut,
            l.idtypesiege,
            l.prix
           FROM (public.vol v
             LEFT JOIN public.liaisonsiegevol l ON ((v.id = l.idvol)))) t
     LEFT JOIN public.liaisonvolpromotion t1 ON ((t1.id = ( SELECT max(liaisonvolpromotion.id) AS max
           FROM public.liaisonvolpromotion
          WHERE ((t.id = liaisonvolpromotion.idvol) AND (t.idtypesiege = liaisonvolpromotion.idtypesiege))))))
     LEFT JOIN public.liaisontypesiegeavion t2 ON (((t.idavion = t2.idavion) AND (t.idtypesiege = t2.id))))
     JOIN public.avion avi ON ((avi.id = t.idavion)))
     JOIN public.typesiege tpy ON ((tpy.id = t.idtypesiege)))
     JOIN public.ville vi ON ((vi.id = t.idvilledepart)))
     JOIN public.ville vi1 ON ((vi1.id = t.idvillearive)));


ALTER VIEW public.voldetails OWNER TO postgres;

--
-- TOC entry 4689 (class 2604 OID 100088)
-- Name: avion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avion ALTER COLUMN id SET DEFAULT nextval('public.avion_id_seq'::regclass);


--
-- TOC entry 4697 (class 2604 OID 108419)
-- Name: liaisonsiegevol id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisonsiegevol ALTER COLUMN id SET DEFAULT nextval('public.liaisonsiegevol_id_seq'::regclass);


--
-- TOC entry 4691 (class 2604 OID 100111)
-- Name: liaisontypesiegeavion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisontypesiegeavion ALTER COLUMN id SET DEFAULT nextval('public.liaisontypesiegeavion_id_seq'::regclass);


--
-- TOC entry 4696 (class 2604 OID 100188)
-- Name: liaisonvolannulation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisonvolannulation ALTER COLUMN id SET DEFAULT nextval('public.liaisonvolannulation_id_seq'::regclass);


--
-- TOC entry 4694 (class 2604 OID 100159)
-- Name: liaisonvolpromotion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisonvolpromotion ALTER COLUMN id SET DEFAULT nextval('public.liaisonvolpromotion_id_seq'::regclass);


--
-- TOC entry 4695 (class 2604 OID 100176)
-- Name: liaisonvolreservation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisonvolreservation ALTER COLUMN id SET DEFAULT nextval('public.liaisonvolreservation_id_seq'::regclass);


--
-- TOC entry 4698 (class 2604 OID 108446)
-- Name: reservation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation ALTER COLUMN id SET DEFAULT nextval('public.reservation_id_seq'::regclass);


--
-- TOC entry 4690 (class 2604 OID 100102)
-- Name: typesiege id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typesiege ALTER COLUMN id SET DEFAULT nextval('public.typesiege_id_seq'::regclass);


--
-- TOC entry 4688 (class 2604 OID 100077)
-- Name: utilisateur id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur ALTER COLUMN id SET DEFAULT nextval('public.utilisateur_id_seq'::regclass);


--
-- TOC entry 4692 (class 2604 OID 100128)
-- Name: ville id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ville ALTER COLUMN id SET DEFAULT nextval('public.ville_id_seq'::regclass);


--
-- TOC entry 4693 (class 2604 OID 100137)
-- Name: vol id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vol ALTER COLUMN id SET DEFAULT nextval('public.vol_id_seq'::regclass);


--
-- TOC entry 4883 (class 0 OID 100085)
-- Dependencies: 218
-- Data for Name: avion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.avion (id, modele, datefabrication) FROM stdin;
1	Boeing 737	2010-05-15
2	Airbus A320	2012-08-20
3	Boeing 777	2015-11-30
\.


--
-- TOC entry 4899 (class 0 OID 108416)
-- Dependencies: 234
-- Data for Name: liaisonsiegevol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.liaisonsiegevol (id, idtypesiege, idvol, prix) FROM stdin;
5	1	3	1000.00
6	2	3	1000.00
\.


--
-- TOC entry 4887 (class 0 OID 100108)
-- Dependencies: 222
-- Data for Name: liaisontypesiegeavion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.liaisontypesiegeavion (id, idtypesiege, idavion, nombre) FROM stdin;
1	1	1	150
2	2	1	30
3	3	2	10
\.


--
-- TOC entry 4897 (class 0 OID 100185)
-- Dependencies: 232
-- Data for Name: liaisonvolannulation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.liaisonvolannulation (id, dureavantvol, idvol) FROM stdin;
1	3600	3
\.


--
-- TOC entry 4893 (class 0 OID 100156)
-- Dependencies: 228
-- Data for Name: liaisonvolpromotion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.liaisonvolpromotion (id, idvol, idtypesiege, nombresiege, promotion) FROM stdin;
4	3	1	12	12
5	3	2	12	50
\.


--
-- TOC entry 4895 (class 0 OID 100173)
-- Dependencies: 230
-- Data for Name: liaisonvolreservation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.liaisonvolreservation (id, dureavantvol, idvol) FROM stdin;
1	3600	3
\.


--
-- TOC entry 4901 (class 0 OID 108443)
-- Dependencies: 237
-- Data for Name: reservation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reservation (id, idutilisateur, idvol, datyheure, passport, statut, place, prix) FROM stdin;
6	1	3	2025-03-14 12:00:00	\\x89504e470d0a1a0a0000000d4948445200000117000000960806000000f448cc1d000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000138d49444154785eed9dcd79e3380c8653c0a4801431b71ca7826dc00d6c017b7223ae247d4c4f5e0314281002ff24d196edeff03e3316499004814f94cc241f7fbe7e5f7ffdfa050000bb027101000c01e202001802c4050030848fd39f2fb7000000b6f0f1df7fff5d3f3fbfafe79fbfd7cbe9d3ad04402f9fa7cbf5efcff9fafd89987a57761597d3e5eff5e7fced96dd83eff30fcf61cd7ca4cddfbf337a2e645b97d9f25a32d5da136cc329fffc3e5f7fd4f5999febf9bb638e19fb2dd0daeab6cce5e4d625b43f3cdfae119e47c717e8e3a5c485fa9fc5a53df164fea5b1b338342693575e6b1fc4271df3f7f9b298c35a1fb7daafd1dabf272e125ff2b9e40f0f88cb7361c4655a74bebba481180322de7d2ed7d39448de5d9951c143752830745d0994706736fd39d772d83bb2a629113e4fd7cbad6e495c79dc83c4a5a57f614d82f5d8af51ea9fca12ff67c485b0fe38727c817524e2420b12ef2e9cb06181a55c07152fa249a652e0c5459780538b9bb55f48664bb031d963db7370b62089914bc0da7836894bc7785789cb0a7fe4c8f5cffed362d1b073b19f8f1c5fa09fec6351b8dbe5935597cbb5eae2ab60b1edcbc118eebc1c3c9a85bd490c69bc26305b08823ad9368117835791f8ab455c32ed43bf03c5a5c37e0daf7f2f16bcf54ce6af85e8c1f105c6d0262e4ee2786daa8b5fb85324fd758a03f59b046e645d4285b1dcdaab3154c7eff848536adf93fc8714174f1c2ac9acc5e0e8f105d671df9d4b61f109694f75b59d98ec1615203a605afaaa11e63ccfaf1abc5bc4659a9ff67f8e55e2d261bf46abb8f07c277fb8f1a5da3c3abec018b2e2420b218b25e57a41b8dc24930e28b9969455165f12fae7270db4167472ef113c762eb5f16f111782fd699269cf6f8b5aeccf229ef7bfd7bf8d0ff685127f2fbeb47f9f21be403f8b17ba11b3508bdd83b3c80b3bca46d3e24bfb4a3d0f0ee8a95d6f0286a053e326bcc03675741f31a134ca46adbd57c79bc35a71216af64be212c4c9a0d629f121cd5b89ad1b5fc6bf478f2fd00f8b8b57f00864f1f7d8be0360417cdd9743890bdf7d9c3b16007b80f8ba2f87109779bb8e6761b03f88afc770a89d0b00e07580b8000086007101000c817f131ddea23f3ff37b057cd50a8ec1aee2b2e50cc61e5082d11cd6cc2749ce09998bd84bca17e7346c9df9e5a19ce1d0be09fda587da6ad8b3349eafd9ee9b8acbd6f86bf12f68e7e3ebebeb65c485fa9fc5a52f714b4929fe91b9452199eadbcf04db9b04880f98ddc6233f9e20e3a36bad63f4c4c83bc10b7159177fadfe05ed989dcb9424acdca9a3630245659fefcc616174d98449365a785d3726eb742c3be9cfb996c33d1d3bd11a6ca5a494b96b5b5c5fc482fb4fbfe69c7d2ae272be9e2f613ef4f9723eddca1be737ed7c5ac4bf340f4abed937fe78b5ef747fb57222b1af7676ec9fcb6dfe53fbcb494ee3a6f3cfb68fbed4a778e7b63aa6121a45b6c7bfa09d445c6841c4c13a61a43c975c72ad74e788012009a9c4236bbfe30e1c6cccc96b7f10ae46a93f3b3efb98936b2bfe1071a123f1f439dc1183cd9680ee994f6e2c745df7c589acd6afe6ef5a39db53e5fab3883ff5cfd779ddd3f917dbc7f8348262c6436d740cb5b2265e409dec3b979040f964d5e572adb4b81c0cc9dd286dcf0128c2e38ca746b03789a1247347b0f0f848fc14d2ff1cdccb32c22686becee212e7761be3cfe57ab9ddc5bf3be6a885de2bd7d44440d0fea6cf61fef93e4ae55e2ce898d17dc9f8b46057db7bf169c64fac16970eff8276dac4c55948af4d555c0a419ff4e7884308369de0733070722765427bc094c6a713813e5b31c9b54dc4652a8fd71cffe5e809fedc5896febb617ccc6da5ccb1912b776d33cbf891f1699f56db7bf1e9c46429fe4af4f817b4c37fb7c85d3c9becc6f9dedda6b4b8b9a0d7487baadb1b243c4613c05ebd1ca536565c2419c45f5ea007ff843a5ceed8a6f936898bb2e5956bbc79d8f1f33567ccb16caa5ff387947bb1a0d17dc9f8f498aaeda7ba497c3ae35f2d2e1dfe05edf0213a6ff168a1e6e099032129378bcb819309d896840f49bbeef76dd800ee0db2d2f86af397e0cc95e76cf72403db3309d8fa6d914d1ef99c5b2ba2b65eb69cc797f35f455ca84eb17da3b8b0edc29c4ab4fa17b493884bb225350b1d03527016716147d9a8052b11db57ea7970b04ded7a9256288d4fc6a56d2e762f05ffe46cf78e93eda83ea4adbb7e84ea93fd13cb6e49749a777a6e7b35fe5a79b6ced47f8bb814db4f65357159d8707c5e22e75fb08e431dfff7820800f09c1c4a5cf8ce61ee460080e7e410e2326f47f1c61e8057e1503b1700c0eb007101000c01e2020018028b0bbea501bd785f0503a0d9555cd69c2fd9137a314c73e89d4f6edcf14c46c309657b46429f9390f124e526314bed5b49cfb2f4b50f87c80c857322565cf618ffbb33c7c96b7cb1f152e242fdcfe2923f4e6e1111c95d6f16974c328a7f1762a3ea97dab710927bfb09d3d63574c565c3f8df9d7063b8addf6dcd5e545ca6a0e73b4f1aa83121e29d697640086c5d366192878256d78dc9361dfb4ffa73aee5b0776c4d4ba2e41243c6bcb7b8105c7fa7e494d3c15b6f0e44495c16bb9bc6f1cff1a54f31a76b2bbe663b531d3b8ea47fd5f76c7fb6a7c5af35be72f64713c61fe22bc4f20b8a0b395516484f52ca4bc941940233068db3e059fb1dc9166c4cf61c3128c1739dfa9220a7ffcb7cf6161711832df3d5f4ceb7446e0d39f1d4f874f2d2e796f9ebf8e2fab67d263ea8dcf6af3f8bfdacb8e4e24bf55fb27f4f5e565c92c551c9d3925c042d881798845d4cdbde0b063d9e1ac15e18238f57f55563eefbd6efe5262e535b9a0f8d21ccff166c0b8cb8987219bfccc72b134aed6bec1990de1a7a6badd78b3eb7cc5fcfc7da2cc587dbbf8a49d7be37bee9b3ad5fb32fd77284f6e9dc19d57f2b7baee5a3691317b350a17cd9a62a2e853b41d29f230ecb049f1780ef324999d0181c323feae336c6d3f4eb285371496dd9802ccd4f7c25bee1f19aba35ff94d833205d71f1e6ef256f65feb9f8a2cfc5f68bb517a678f1ec9bf185fec21cec7c6af6c5e63dd8732d1fcd7d772e95e491f654376727078f710aa6de448df3bb2d2c8bc9eddf1ff53b6e5be6df925c32270966edefde316bc258527b6b6915171eef16713136cbed97b19696d7c585a0b9c9faeabe6af66b88ff17e264fa6fe12dc485164216c026472c37ceb301a769499e1070f458d2ef5c1d4cd4578f38d97e25d8e4b7f37bc96503b225b94afe6bf14f09b66712c47e5b342741debf6467212e66fc2101dac75f8b2fa2367f5bdfa2cbc37aa5e3e3eb93a8c8ce54ae1335fbf7e265c525515de3e8853a3b22b2b0a36cb4244f6cbf62912570e8ff5e829488739be634cfa3535c64de133119277b7a4c92009270a5f6ad581bb67d495c38b9545b46ad434c5882fca4c49cca5be69f949b35aec547cd46323e9a1f7db6e222365a62d7d81f8debff2717191617afe011c802eb3b1c787eb0aeefc9a1c485ef5ece5d053c371097f7e410e2326fa95fe35913a4405cde9343ed5c0000af03c405003004880b0060082c2e782606cf80c4295efa3f07bb8a4beff992bda117c3348735f38981eb9c315896dd50019e9eb198f0ce71983ac573201d09546a1fcb9c331b7cb6a2a71f393c3771efb58e7359292e6be373ebfab20d678dec581eeddfbdf9f8fdcfbf71e2cf2e2ed4ff2c2ecb539839bc04d45f8b4bb9cccdd60fc1e788914a02b6e7243851b35f43eacbfaf9e34bfde15d2b119227adff6c7f91709bb8ecb7be1eafe05fcbc7d7d71f159c93d358394d308a43a3b2cece0e8ed16513cad954879cabebc664da18fc56f1352dc1e41db99e7db2141782e721e263828fdb9bf173fd8ee0d3f6755d0f3d56b966fb4bc6ebf457424ef6aebdf9cce3d3a7bcdbe38be0f14b99f163cd7ed25693590fcbf6f52dfb6fab7f8fcac79fafdfc9c2ca0475c279c1a88355ae95ee0c718193840c8b93b5dfb8f844b031d97382a144ae2f998f1d9f0443fcec059f69530ebeb2fd1ad23eae9df91caecd01ec8969895e7f5a643c3abe74fcd8f9db72b916af1b3fcef6cbc9bed7ce85af993197d697a0bef5fc355bfd7b5412715906633e5975b95cab8a8b0a16db9e03de049bb7103982bd30461eaf13983978e11bc485c57122f1556bf0a9f6da46cd7e0dafbd379fb00697eba5d7b79d6264f1d6734d7c115e12bbf6553cc9b5e1e2a2fd7fc3fa38f871b93e5bfd7b54dac4c55928af4d555c0acabe0836db1f2fb05ebc7931581c9232a16dc17263b3e22273e3fe7470b4065f66fe35fb35bcb5e0fe166b463ebed9ee105e62b8b834c617e1f9d1b5efd82cc56789adeb6bb1ebf0dee2e23a772e976ba5c56b71beb4a7babd41a005a967a1093fb84300904f6c2089d089bf5cfff0b5d93fa531d5ecd770d7cf1913b126c1b42fbcf21ab5f1b9fe73e28bf0fce8da1f2d2e7cad6d7d3d74fbadfe3d2ad9afa26921c45952ae1786cbcde2b183cdb5a4ace27c71f8dd7f9fcbb4b8b9f9d5e66f834fece9f996e6dfeadf1cdefae5d682ecf6f846e0f198646ffd7d317bc517e1f9d1b3ef894bce2735b6aeaf871d4b8b7f9f8d445c92478ac5024ae04c388bb4b0d3e9fcd8be6391040ea6a9dd9a042acd4fc6a56d86800b012dff8f6da7eb5297e0f99b3a62af665faee570d72f93446b7c23d839583b3571d16d7be2cb6d4f4c36a4bc262e0b3b8d71b6797d9df6defad4fcfb6c1ceaf8bf1724e0f9c1babe2787121756eecc1d173c2f1097f7e410e2326f07fbdfb580e30371794f0eb5730100bc0e101700c010202e008021b0b8e0991800b037bb8acb9633147b402f86690e6be6e39d8bd084434e8678ce229cd1d0730f2fa9e74351c5f6de3908263d545543e68d17e3e008bc94b850ffb3b8742666455c046f8e2c0eb7fee4c70fa47ff98b8dba6ecd476b7dc8e327313ad3bf1017f0788cb8c89d6f79d7943af35d750e607bb230a24e40521d4a1a5d579228dcb94d7fceb51c21b14cdf13ad89ba5d5cced7f3f46742e9f345fdad695d7784b884b509eb117ce18b4b5cc3867902b095445c281965f7a28354ca75d0b34898202d25461415b9bb2bf1c8da6f3c9e4d041b7372db1f34abb187b8d09f38a5b2f03321614e763738425c3410177014b28f45e13d423e5975b95cab8a8b0a6adb5e27b7379e1ac1de248692ec1d09b4495c62dbdb18e8f7a55ce8ffc7131700ee499bb83889e7b5a98a4b6127b21033db1f0b5cd85d05e604a27ee7eb9af624db2c2ed3dca43c279035f1a895d780b880a370df9d4be53147da53ddde04d382d4fb4845ec252e1aaa0b7101ef4a565c28c82561a45c073d979b64b48f3e9a96840f2246dfb2f42787168755e2b4415c7273f3ead6c4a3565ea3242eb28e101f700f162f74232659c24e45953b89b8b0a36c34898bb4afd4f3d0bb8735091a92528d9d5073249b8bf2a9bf167129b5cfb5e9c1b5ef8888d4b33b2a00f686c5c52b7804222e08fc71b01062e702eec0a1c48503bfe1d104f433bf1087b080fb700871097753043e00afc4a1762e0080d701e202001802c4050030842e71895f1537bc74d5e746f02d1000efc75389cbda33200080fb33ecb108e202c07bd32c2ef3d7c53732276817a74417e232ed7cb83cfdb9a4b82b8aede7afa593be356a1c54878447d71521921f2b48fa73ae0100f6a37be7c2c99b39b6aeaf7b3b174a78d9bd84e3f64140a45cef4ab81ff3f855dab94451913e957864ed67441200b09d5dc4c5fb09e9da63d1909fba566264db8f784c0300e4d9475c3c71e8111755772e5fb6a98a4b6127b21033d31f00605f86898bde49dc6de75279cc91f65437670700b00f3b3d1605f190840def53d4fb8fcc2e44ecd8f6b1dcec2eb460c9b5a4ac222e41c4d6fdbe1800401f4de222c92fdfc244543287c49dae9300388f45b9b6a10fdaa9a87247441676948d267191f6957a0080ed74ef5c9e191117bcc805603c6f252ea5c72a00c0bebc85b8b0a8f0a314deb500702fde6ae70200b81f101700c010202e008021405c00004380b8000086007101000c01e202001802c405003004880b006008515c921f3c744eb3be7b3900a00fec5c000043f838415c000003f8f8e75f880b00607ff05804001802c4050030043c16010086f0f1e704710100ec0f762e008021e09d0b006008101700c010de4a5ce6bf7b84a3fd008ce66dc425fc15c89febf94cff425c0018cd5b884bd8b10441092203710160346ff7ce05e202c07d80b8000086007101000c01e202001802c405003084b71197d345ff0a4b012203c028de6ee70200b80f101700c010202e008021405c00004380b8000086007101000ce1e3ebcf697191fffae0cff9fabde3d7b4dfe79ff92be0cbb24f22fe4a849dfb6e21f4fd733d7fe3ab6900f6e0e3f7d79fe4c2e7e7e97ab909c0e5b44cb23d7e1f0a8bcc01c585c0013b00f6e3e39fdf5fc9053a6cf673fe4eae1121f1b6ff3e9492b81c81a38f0f8067211197f0c7d897c2b1e7ef43c9256fedb169de35a5d00e4bca2ea7b0eb0a65cb479ce4946e667714766e783c02602b3771f91d3fb4dcb547898b902b676198ae8b98c80e6b169e5914ac1ddddefbacc9edde0000edc4772e3661733c425ce69dc9dca7aee795f338a7dd89b71bc9edd208b6fda0f73e00bc0af18fa27909ea71e49d4b565c5848686763f11f7f745b5b060068239e73b1099be3a1e2a28541d559b37329511b2300a04e7288ae25a91e212e411cf27dd6c4853e97deb158f0ce0580ed24e2527a0fb1d839306d2223c9bf683f257bad9c60d1c994b7888bdb872336f8b608807d581cff3fe25d3b889e7921cb22507f47d40b1e8900d88785b88c4ada2d844731efdb9e7d77185b1ff90000330b712138710ff66dc9f2b1686761e1c7263c0e01b017aeb80000c056202e008021405c00004380b8000006f0ebfa3f8d9b7ce9de2856d10000000049454e44ae426082	1	9	1080.00
7	1	3	2025-03-14 12:00:00	\\x89504e470d0a1a0a0000000d4948445200000117000000960806000000f448cc1d000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000138d49444154785eed9dcd79e3380c8653c0a4801431b71ca7826dc00d6c017b7223ae247d4c4f5e0314281002ff24d196edeff03e3316499004814f94cc241f7fbe7e5f7ffdfa050000bb027101000c01e202001802c4050030848fd39f2fb7000000b6f0f1df7fff5d3f3fbfafe79fbfd7cbe9d3ad04402f9fa7cbf5efcff9fafd89987a57761597d3e5eff5e7fced96dd83eff30fcf61cd7ca4cddfbf337a2e645b97d9f25a32d5da136cc329fffc3e5f7fd4f5999febf9bb638e19fb2dd0daeab6cce5e4d625b43f3cdfae119e47c717e8e3a5c485fa9fc5a53df164fea5b1b338342693575e6b1fc4271df3f7f9b298c35a1fb7daafd1dabf272e125ff2b9e40f0f88cb7361c4655a74bebba481180322de7d2ed7d39448de5d9951c143752830745d0994706736fd39d772d83bb2a629113e4fd7cbad6e495c79dc83c4a5a57f614d82f5d8af51ea9fca12ff67c485b0fe38727c817524e2420b12ef2e9cb06181a55c07152fa249a652e0c5459780538b9bb55f48664bb031d963db7370b62089914bc0da7836894bc7785789cb0a7fe4c8f5cffed362d1b073b19f8f1c5fa09fec6351b8dbe5935597cbb5eae2ab60b1edcbc118eebc1c3c9a85bd490c69bc26305b08823ad9368117835791f8ab455c32ed43bf03c5a5c37e0daf7f2f16bcf54ce6af85e8c1f105c6d0262e4ee2786daa8b5fb85324fd758a03f59b046e645d4285b1dcdaab3154c7eff848536adf93fc8714174f1c2ac9acc5e0e8f105d671df9d4b61f109694f75b59d98ec1615203a605afaaa11e63ccfaf1abc5bc4659a9ff67f8e55e2d261bf46abb8f07c277fb8f1a5da3c3abec018b2e2420b218b25e57a41b8dc24930e28b9969455165f12fae7270db4167472ef113c762eb5f16f111782fd699269cf6f8b5aeccf229ef7bfd7bf8d0ff685127f2fbeb47f9f21be403f8b17ba11b3508bdd83b3c80b3bca46d3e24bfb4a3d0f0ee8a95d6f0286a053e326bcc03675741f31a134ca46adbd57c79bc35a71216af64be212c4c9a0d629f121cd5b89ad1b5fc6bf478f2fd00f8b8b57f00864f1f7d8be0360417cdd9743890bdf7d9c3b16007b80f8ba2f87109779bb8e6761b03f88afc770a89d0b00e07580b8000086007101000c817f131ddea23f3ff37b057cd50a8ec1aee2b2e50cc61e5082d11cd6cc2749ce09998bd84bca17e7346c9df9e5a19ce1d0be09fda587da6ad8b3349eafd9ee9b8acbd6f86bf12f68e7e3ebebeb65c485fa9fc5a52f714b4929fe91b9452199eadbcf04db9b04880f98ddc6233f9e20e3a36bad63f4c4c83bc10b7159177fadfe05ed989dcb9424acdca9a3630245659fefcc616174d98449365a785d3726eb742c3be9cfb996c33d1d3bd11a6ca5a494b96b5b5c5fc482fb4fbfe69c7d2ae272be9e2f613ef4f9723eddca1be737ed7c5ac4bf340f4abed937fe78b5ef747fb57222b1af7676ec9fcb6dfe53fbcb494ee3a6f3cfb68fbed4a778e7b63aa6121a45b6c7bfa09d445c6841c4c13a61a43c975c72ad74e788012009a9c4236bbfe30e1c6cccc96b7f10ae46a93f3b3efb98936b2bfe1071a123f1f439dc1183cd9680ee994f6e2c745df7c589acd6afe6ef5a39db53e5fab3883ff5cfd779ddd3f917dbc7f8348262c6436d740cb5b2265e409dec3b979040f964d5e572adb4b81c0cc9dd286dcf0128c2e38ca746b03789a1247347b0f0f848fc14d2ff1cdccb32c22686becee212e7761be3cfe57ab9ddc5bf3be6a885de2bd7d44440d0fea6cf61fef93e4ae55e2ce898d17dc9f8b46057db7bf169c64fac16970eff8276dac4c55948af4d555c0a419ff4e7884308369de0733070722765427bc094c6a713813e5b31c9b54dc4652a8fd71cffe5e809fedc5896febb617ccc6da5ccb1912b776d33cbf891f1699f56db7bf1e9c46429fe4af4f817b4c37fb7c85d3c9becc6f9dedda6b4b8b9a0d7487baadb1b243c4613c05ebd1ca536565c2419c45f5ea007ff843a5ceed8a6f936898bb2e5956bbc79d8f1f33567ccb16caa5ff387947bb1a0d17dc9f8f498aaeda7ba497c3ae35f2d2e1dfe05edf0213a6ff168a1e6e099032129378bcb819309d896840f49bbeef76dd800ee0db2d2f86af397e0cc95e76cf72403db3309d8fa6d914d1ef99c5b2ba2b65eb69cc797f35f455ca84eb17da3b8b0edc29c4ab4fa17b493884bb225350b1d03527016716147d9a8052b11db57ea7970b04ded7a9256288d4fc6a56d2e762f05ffe46cf78e93eda83ea4adbb7e84ea93fd13cb6e49749a777a6e7b35fe5a79b6ced47f8bb814db4f65357159d8707c5e22e75fb08e431dfff7820800f09c1c4a5cf8ce61ee460080e7e410e2326f47f1c61e8057e1503b1700c0eb007101000c01e2020018028b0bbea501bd785f0503a0d9555cd69c2fd9137a314c73e89d4f6edcf14c46c309657b46429f9390f124e526314bed5b49cfb2f4b50f87c80c857322565cf618ffbb33c7c96b7cb1f152e242fdcfe2923f4e6e1111c95d6f16974c328a7f1762a3ea97dab710927bfb09d3d63574c565c3f8df9d7063b8addf6dcd5e545ca6a0e73b4f1aa83121e29d697640086c5d366192878256d78dc9361dfb4ffa73aee5b0776c4d4ba2e41243c6bcb7b8105c7fa7e494d3c15b6f0e44495c16bb9bc6f1cff1a54f31a76b2bbe663b531d3b8ea47fd5f76c7fb6a7c5af35be72f64713c61fe22bc4f20b8a0b395516484f52ca4bc941940233068db3e059fb1dc9166c4cf61c3128c1739dfa9220a7ffcb7cf6161711832df3d5f4ceb7446e0d39f1d4f874f2d2e796f9ebf8e2fab67d263ea8dcf6af3f8bfdacb8e4e24bf55fb27f4f5e565c92c551c9d3925c042d881798845d4cdbde0b063d9e1ac15e18238f57f55563eefbd6efe5262e535b9a0f8d21ccff166c0b8cb8987219bfccc72b134aed6bec1990de1a7a6badd78b3eb7cc5fcfc7da2cc587dbbf8a49d7be37bee9b3ad5fb32fd77284f6e9dc19d57f2b7baee5a3691317b350a17cd9a62a2e853b41d29f230ecb049f1780ef324999d0181c323feae336c6d3f4eb285371496dd9802ccd4f7c25bee1f19aba35ff94d833205d71f1e6ef256f65feb9f8a2cfc5f68bb517a678f1ec9bf185fec21cec7c6af6c5e63dd8732d1fcd7d772e95e491f654376727078f710aa6de448df3bb2d2c8bc9eddf1ff53b6e5be6df925c32270966edefde316bc258527b6b6915171eef16713136cbed97b19696d7c585a0b9c9faeabe6af66b88ff17e264fa6fe12dc485164216c026472c37ceb301a769499e1070f458d2ef5c1d4cd4578f38d97e25d8e4b7f37bc96503b225b94afe6bf14f09b66712c47e5b342741debf6467212e66fc2101dac75f8b2fa2367f5bdfa2cbc37aa5e3e3eb93a8c8ce54ae1335fbf7e265c525515de3e8853a3b22b2b0a36cb4244f6cbf62912570e8ff5e829488739be634cfa3535c64de133119277b7a4c92009270a5f6ad581bb67d495c38b9545b46ad434c5882fca4c49cca5be69f949b35aec547cd46323e9a1f7db6e222365a62d7d81f8debff2717191617afe011c802eb3b1c787eb0aeefc9a1c485ef5ece5d053c371097f7e410e2326fa95fe35913a4405cde9343ed5c0000af03c405003004880b0060082c2e782606cf80c4295efa3f07bb8a4beff992bda117c3348735f38981eb9c315896dd50019e9eb198f0ce71983ac573201d09546a1fcb9c331b7cb6a2a71f393c3771efb58e7359292e6be373ebfab20d678dec581eeddfbdf9f8fdcfbf71e2cf2e2ed4ff2c2ecb539839bc04d45f8b4bb9cccdd60fc1e788914a02b6e7243851b35f43eacbfaf9e34bfde15d2b119227adff6c7f91709bb8ecb7be1eafe05fcbc7d7d71f159c93d358394d308a43a3b2cece0e8ed16513cad954879cabebc664da18fc56f1352dc1e41db99e7db2141782e721e263828fdb9bf173fd8ee0d3f6755d0f3d56b966fb4bc6ebf457424ef6aebdf9cce3d3a7bcdbe38be0f14b99f163cd7ed25693590fcbf6f52dfb6fab7f8fcac79fafdfc9c2ca0475c279c1a88355ae95ee0c718193840c8b93b5dfb8f844b031d97382a144ae2f998f1d9f0443fcec059f69530ebeb2fd1ad23eae9df91caecd01ec8969895e7f5a643c3abe74fcd8f9db72b916af1b3fcef6cbc9bed7ce85af993197d697a0bef5fc355bfd7b5412715906633e5975b95cab8a8b0a16db9e03de049bb7103982bd30461eaf13983978e11bc485c57122f1556bf0a9f6da46cd7e0dafbd379fb00697eba5d7b79d6264f1d6734d7c115e12bbf6553cc9b5e1e2a2fd7fc3fa38f871b93e5bfd7b54dac4c55928af4d555c0acabe0836db1f2fb05ebc7931581c9232a16dc17263b3e22273e3fe7470b4065f66fe35fb35bcb5e0fe166b463ebed9ee105e62b8b834c617e1f9d1b5efd82cc56789adeb6bb1ebf0dee2e23a772e976ba5c56b71beb4a7babd41a005a967a1093fb84300904f6c2089d089bf5cfff0b5d93fa531d5ecd770d7cf1913b126c1b42fbcf21ab5f1b9fe73e28bf0fce8da1f2d2e7cad6d7d3d74fbadfe3d2ad9afa26921c45952ae1786cbcde2b183cdb5a4ace27c71f8dd7f9fcbb4b8b9f9d5e66f834fece9f996e6dfeadf1cdefae5d682ecf6f846e0f198646ffd7d317bc517e1f9d1b3ef894bce2735b6aeaf871d4b8b7f9f8d445c92478ac5024ae04c388bb4b0d3e9fcd8be6391040ea6a9dd9a042acd4fc6a56d86800b012dff8f6da7eb5297e0f99b3a62af665faee570d72f93446b7c23d839583b3571d16d7be2cb6d4f4c36a4bc262e0b3b8d71b6797d9df6defad4fcfb6c1ceaf8bf1724e0f9c1babe2787121756eecc1d173c2f1097f7e410e2326f07fbdfb580e30371794f0eb5730100bc0e101700c010202e008021b0b8e0991800b037bb8acb9633147b402f86690e6be6e39d8bd084434e8678ce229cd1d0730f2fa9e74351c5f6de3908263d545543e68d17e3e008bc94b850ffb3b8742666455c046f8e2c0eb7fee4c70fa47ff98b8dba6ecd476b7dc8e327313ad3bf1017f0788cb8c89d6f79d7943af35d750e607bb230a24e40521d4a1a5d579228dcb94d7fceb51c21b14cdf13ad89ba5d5cced7f3f46742e9f345fdad695d7784b884b509eb117ce18b4b5cc3867902b095445c281965f7a28354ca75d0b34898202d25461415b9bb2bf1c8da6f3c9e4d041b7372db1f34abb187b8d09f38a5b2f03321614e763738425c3410177014b28f45e13d423e5975b95cab8a8b0a6adb5e27b7379e1ac1de248692ec1d09b4495c62dbdb18e8f7a55ce8ffc7131700ee499bb83889e7b5a98a4b6127b21033db1f0b5cd85d05e604a27ee7eb9af624db2c2ed3dca43c279035f1a895d780b880a370df9d4be53147da53ddde04d382d4fb4845ec252e1aaa0b7101ef4a565c28c82561a45c073d979b64b48f3e9a96840f2246dfb2f42787168755e2b4415c7273f3ead6c4a3565ea3242eb28e101f700f162f74232659c24e45953b89b8b0a36c34898bb4afd4f3d0bb8735091a92528d9d5073249b8bf2a9bf167129b5cfb5e9c1b5ef8888d4b33b2a00f686c5c52b7804222e08fc71b01062e702eec0a1c48503bfe1d104f433bf1087b080fb700871097753043e00afc4a1762e0080d701e202001802c4050030842e71895f1537bc74d5e746f02d1000efc75389cbda33200080fb33ecb108e202c07bd32c2ef3d7c53732276817a74417e232ed7cb83cfdb9a4b82b8aede7afa593be356a1c54878447d71521921f2b48fa73ae0100f6a37be7c2c99b39b6aeaf7b3b174a78d9bd84e3f64140a45cef4ab81ff3f855dab94451913e957864ed67441200b09d5dc4c5fb09e9da63d1909fba566264db8f784c0300e4d9475c3c71e8111755772e5fb6a98a4b6127b21033d31f00605f86898bde49dc6de75279cc91f65437670700b00f3b3d1605f190840def53d4fb8fcc2e44ecd8f6b1dcec2eb460c9b5a4ac222e41c4d6fdbe1800401f4de222c92fdfc244543287c49dae9300388f45b9b6a10fdaa9a87247441676948d267191f6957a0080ed74ef5c9e191117bcc805603c6f252ea5c72a00c0bebc85b8b0a8f0a314deb500702fde6ae70200b81f101700c010202e008021405c00004380b8000086007101000c01e202001802c405003004880b006008515c921f3c744eb3be7b3900a00fec5c000043f838415c000003f8f8e75f880b00607ff05804001802c4050030043c16010086f0f1e704710100ec0f762e008021e09d0b006008101700c010de4a5ce6bf7b84a3fd008ce66dc425fc15c89febf94cff425c0018cd5b884bd8b10441092203710160346ff7ce05e202c07d80b8000086007101000c01e202001802c405003084b71197d345ff0a4b012203c028de6ee70200b80f101700c010202e008021405c00004380b8000086007101000ce1e3ebcf697191fffae0cff9fabde3d7b4dfe79ff92be0cbb24f22fe4a849dfb6e21f4fd733d7fe3ab6900f6e0e3f7d79fe4c2e7e7e97ab909c0e5b44cb23d7e1f0a8bcc01c585c0013b00f6e3e39fdf5fc9053a6cf673fe4eae1121f1b6ff3e9492b81c81a38f0f8067211197f0c7d897c2b1e7ef43c9256fedb169de35a5d00e4bca2ea7b0eb0a65cb479ce4946e667714766e783c02602b3771f91d3fb4dcb547898b902b676198ae8b98c80e6b169e5914ac1ddddefbacc9edde0000edc4772e3661733c425ce69dc9dca7aee795f338a7dd89b71bc9edd208b6fda0f73e00bc0af18fa27909ea71e49d4b565c5848686763f11f7f745b5b060068239e73b1099be3a1e2a28541d559b37329511b2300a04e7288ae25a91e212e411cf27dd6c4853e97deb158f0ce0580ed24e2527a0fb1d839306d2223c9bf683f257bad9c60d1c994b7888bdb872336f8b608807d581cff3fe25d3b889e7921cb22507f47d40b1e8900d88785b88c4ada2d844731efdb9e7d77185b1ff90000330b712138710ff66dc9f2b1686761e1c7263c0e01b017aeb80000c056202e008021405c00004380b8000006f0ebfa3f8d9b7ce9de2856d10000000049454e44ae426082	1	2	240.00
8	1	3	2025-03-14 12:00:00	\\x89504e470d0a1a0a0000000d49484452000001ae000000dc0806000000286845e4000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400001a7e49444154785eeddde979a3cc1286e12f80e36c9c8b3371228ac4794c4e3eaa8682eaa27a4168a1ade7c77dcd88a5a117f56b6481fffbdffffef70b00c028082e00c050082e00c050082e00c050082e00c050082e00c050082e00c050082e00c050febb7c7d842b000038a3c3c1f575f9f7fbf3fd19ae7b86cfef9f5fa9c3c7c7e7eff7cfbff4ff68bb88eef3efdfcad645cab6ebfcfa8fafcbefbf9fefdfcf8ff898adfd452a2358fff1f9fdfb6396af7e7ebf3fdb758cea563bd767bbd7f9bd7afc0178bee1834b8ebf0657dfa42e74e2ac9d7b0a9ecb57b84e74055765ff29d8f273fefcbe6cea704b1b6bfdb47f97a0a89ccf33ddebfc082ee0fd5c836b9e30d24fbdf924ba4c26cb4fc597dfaf79928eae261233f1c83632a9d86d759299ae28dcf1826525fe4ac5ea99c83e3ebe7e2fd76d6bc1dd0a9e23c1d5737c758fe012adfa58ebfed3794e6ddb3f3e52db5cbe97f56b3953193de777e6f107e075fe9337f3f2536f0a836972d049c34e9869027013756d525d268c791f3b3114cbef9c58c554c65c5e2a7b9dd87ac8b9dbfa7badf339145c3bcef79e575ca5ba7ababd0d2b5b9f62ff695fcf3f58c8f1a6769672d673689d5fab7c5df6caf107e035b28f0aa7ab807210d8f5baac39719889c6ef6f27feedc4657fd23736e5cd412be7eb26b51e3ac1266ed25a263e236baf9ee02aec3f1df7f1c1951d7fc7a4ecfb232db3fdd5181f765b0d041b16adf37bf5f803705ee5e00a26e5e8cddd9c382a936576bc9dc123c7cd26bd455f1878d3b95cf737e7d03cffa08dacdafe69df270497ed2b3f91d744fb67137d637cd8f5da0ebade0657e9fc5ae5ebb2578d3f00aff3f82baecac421747fd9d696b304896726173bd9f41cab65aaf35abfe6c4174cae566d7fad9f6dff927b0557d4a725e1fe36b81ae3e396e0b265b6cad7658f1a7f00ce2b0b2e7913eb1bdd4e32d97a3751a7c9a13079f74c1c1a163f3f7d13aae527c7a3138faf4bebfc8f049748ede926e2477dab50f8fa4ddbe90f083e241ac1d5181fb704973dbf56f9d13eba2c5bf7c0f107e035d2973316ee4dbeb9ea0926089d60a232ba260eddbfb15d244d8ef37e7b27f769c232e72da249d16d638f918eefd6db325afb47db447538125cb6ecb8ff6e0bae7cdf6df9bdc1553bbfb38f3f00aff1f2473e451324f02c8c3f603c2f0faef45371f09334f00c8c3f603c2f0baef523327eb780e763fc01e3e2e9f00080a1105c0080a1105c0080a164f771010070768783eb967b8cee497ec92e75b8e56bcdeb2fe8575a97cdfd4162739f91df66fd45bfde8364db663a5e7ec37149cff17bbcaa7fee75fe00e00d1f5c72fc35b8fa4241a52029dc78aa13ef26c8e6edfd6b91ca9b27e77483f3f57cf491547a7eb26c4f7069ff44c7ebf1eae03a7afe00e05d836b9e50d24fc5f9a4ba4c36cb4fcdeb154574b592b8895c264dbbed1204f3a376b2e305cb4ac2a756cc7a27ea3dc125b2604ac72f3f6d620aaeefdfefcb541f797df9febaaebf2db8843fdf53f74fc7f903c02ddefaef71d58ee7cfcf7ff457da57db239d8fd4fbdaa6f27a7a06e176322ff1137fe9f5a6fd4ed23fadf307805b651f154e93733908ec7a5dd69c18cd44eaf7b7cfb3bb65629bca9b835683c29c6fcb32711b7ea28dd609a97735b896ba5dcff1e7f27bb9c8fffbeb181ddf1eefecfdd33a7f00b85539b8cca4b5aedf4e5ecd89b1325965c70b82679a9cede4b74ed42938b275aaffaaab767e5a57ad9b0faad2be5970cdeb97653b26ff685b1b3467e89f9ad6f9db6d01608fc75f71552646a1fbcbb6a5724aec64da732cafb68f0f2e0d516daf3838a47da66d6c7059525fdbe625d1c46ffbe4ecfdd33a7fbb2d00ec9105974c523a91f9897b59ef26eb34f9157e8aee9918a7c94cbe6db77f42b3e1b1776215b5f36bd55f43aab4be54b606815fee4513bf6debb3f74febfcedb600b0c7dbfe3d2e513bbf2818a6497c9d8c6bed532a7b6f702d65bbf2a76dcedb3f3de70f00b778f9239f7482b33f99e33ce81f0067f3f2e0e2e3a373a37f009ccdcb822b4d88e923247e597f46f40f80b3e2e9f00080a1105c0080a1105c0080a164f771613ccbd7ce832f50acbfa7badaf975763c5f74533b9e87f61fc7e1e0bae5fea97b92c959ea70cbd7b6d30dbb3ab127f95327b6f722e55f54d8ee7f350784def36503237ab245c9f6d862fb45895a70a914603706d7a3fab7b77e35b5fe7948fbef9cd46ae3236227ce7b1c5fbcfafd79ab7b8c0fdaffef1a3eb8e4f86b70f54d4a113fa92d03d70cf41400c1e08dda607de2842d73ffc469fb677a23ee7bf38a3307d7adf56bf5cfbddb3f3a5eafde368c26cea3c77f54ff3d9aafbfb875fcd3fe7fcf35b8e60e493f55e46feaa5b3969f3ad64193268965b9e12612e934bbad76a24e2cd9f18265256990d9e31ab70c944d70a5f2f33749f46612d1e09cea72ddff5ace52e783c1e5db27eb83ca1b2a6d17ac3fdabf629a4c663b7e22eda95f4dab7f1ed1fea5766ca94d5e59fb9936ec39fed1fe936de4bcecb64b5b057db1a77f8e3a3a3e2cdaffef79ebbfc765f949ad742e517da365ebf948b9daa6f70d2ed56ab768fd3dfa37bde94db9fe75cd9efa455afd73eff68fceb757a90d7d7bf5fcc4ef5f1fe9bfb4fd03df9f4744edbd677c58b4ffdf937d5468dfd8eb1b3f5eafcb9a1d633ad2ef5f1b283da6f2e64949ced70d9a3dfcb9f941ada2fa46cb6cfb493bc8faa8fd4aa2f648e714d4b135a0a3f547fb37da362ab3644ffd2269db4affdcabfdd3c4a26e9c34a2360cdb2f783f948e7fb4ffc423df9f5359eefc4567ff1e1d1fd63bb6ff5f570e2ed368ebfa7830553ba6f266cf8e2703c11f2f0d0e3b78d681920671b64ef54d9c9e1f34a5738fea1bbe31ccc04e65a7bae5c7a869bd71ac563b47eb8ff6efb66fd4fdeb1769f5cfbddadfb6453aa66bb31eadf1b12c6b4c54f6f867787f3ed2d1f161d1fe7fcfe3afb81a834df7976d4be594d8ceec39568daf5b3c30659b7c608a9e37866c73f9dab65f49f4262869d53d5a7fb47fa36df7d853bf48ab7f1ed1fe519bf5e8191f22f5d35ca7d6f18ff69fe879cfe8feb26da99c88f645163ca273f23d3a3eac776cffbf2e0b2e69246d48ed38db5869bd1b78b6b37559b6aed131d300b876ca93ff1e57aa5ffa73fad3317d3df48dd7aabf2ef7c7f6033bbdbe5c0e4d9c25ad768ed6dfa37fed78d96b4ffd22adfe7944fb476db14ed0e5f11b8e0fd7fe692c9b89bd75fc7bf45f342ebc23efcf237ac707edff9edefaef714d8342cf7d3b305af54f03d5ae17f3f96c26cea59dee135c9b76f7c76fac9fb639d6bfe131ccfa9a56fd7ad4ceff5eed9fd52d6c9ff2c4591b1f695f3bfea46cf38358cff1cffefe3c428f7b24b868ffbfebe58f7cea1da0009e8ff7e76bd1feb1970757ed521ac06bf1fe7c2dda3ff6b2e04a1d922e9fb797f8005e8bf7e76bd1fe753c1d1e003014820b003014820b003094ec3e2e00e715dd748d71d07ff77338b86eb97fea9ee4979852875bbe36babdcf23bfc767b98762599fffa2b47d1fd7fa7a2a4feefbe8bb8f48acbfa05dbdb2ad9fed68fd6bfd77b47fb665e7e5f768dd67e4f989efddc7c75147db8ffe7b9de1834b8ebf06577f28787ed25a26263310d3400b7e628ada609a18e58e775be60dc1557923fc7547eadfeabfa3fda3e5dbf7cf3491edff1658ef7b289cf8de787c1c75aff6a3ff9eef1a5cf627c7fc4dbbfda9727d53a6465f961b6ea2900eb5db6a07ebc4911d2f58569206813daed13388bc4d70a5f2f349289aac4439b8aefb5fcb59ea7cc7e05acf45cad4bae765d7da5f4d93edccbca9a2bada375e6fff95caef51ab7f4babff8ef64fd83e3bc6af559bf8b2f6736df8eee3e3a823e3cba2ffb6e53f1a7f8f6be627add2b944f58d96ade723e56a9bf64f8ca2d61eda7eb6ff7cffd4da5fd6a74167cab7af9b03bb637cd4caef51ab7f4b695fedaba3fd13b68f6bdf5e7a4ed1725b07dbfef2bad63eef303e8eaab5df1e72def4dff6f523651f15da37eefac68ed7eb3239d9a8d384afa8df3f6a287b3e2d5379f3a423e76b8eb5973fb7522744f58d96d9f6937690f551fbd52c03d3d0f609079e2bbfd6fed1b9d8736e0d6c796dcbf7dbb7cad76535b5fab7b4faef68ff44ed938e79c3180cc74fd47e51fb17dae7af8f8f69ffbceec98ef63f32be2cfa6f5bbe2e7b947270b94a4cebb7958d3a4da58a5712383b9e54da1f2f3584edd8b551d22491ad53b7359cef88d2b947f50d076e3648ae65a7ba6d3bbba6d67edd03bbb4ffa66dd5dc1f1d037b3ade5c4737685be56b9935adf153d3eabfa3fda3ed93d5edc6736d8d9f655934b1bcf1f838eac8f8b2e8bf6df95ae6a33cfe8aab3130747fd9b6544e493ac7b9a18f0e425f37df89eb3679678b9e812bdbecf97b5062f7c076c7acef5f3f979e812da67a5dc78bac33c76a95dfe3489fb6faef68ff44ed73ab9ef123527b983abdf3f8d0bedc4c9ceef83547c69745ffade53e4b165c72927a725a31db2169bdab98ef0cab67604c9d710d2dfe1ed7467d606e079eed3fd16a7fbfbd67d74ff5d9d65f07f4d7655baf56f92d3de3a7a4d57f47fb276affc83ac196c7b79cd766fcb8f75f6a67d7feef3e3e8eea195ff4df39fb8fbfc7b5d46f3b305bf54f1d67d78bf97c3613e3d24e3b83cb95bfbc117cbb0bd786adf66f95b1691f79ed07b696d133365cf92db5faf7a8f5dfd1fed1ed8f04576dfca47d6dfbcbb9cb78377578f7f17154cff8a2ffced97f2f7fe49356be35012047bba186f13136faafeee5c1957e6a08d21c750c6cd4303ec646ffd5bd2cb8d6cbe4ed2538da18d8a8617c8c8dfeabe3e9f00080a1105c0080a1105c0080a164f7710135e9f603be4803e0c50e07d72df74fdd937cc943eab0f79799a5f3d67b23fc7d3e62baa763bdcf67fd82c9aa7a1f869bf46bfbf738ba7feb3e14cf07d7d1e3c38e13bea404f41a3eb8e4f86b70edbcb93798a47579777015267a9d90364166b6afeddfe3e8feaab70fc3e0bac3f1df556a4f194fdff22fc105f4ba0697bd32c827feed55c3fae64a93d6b2dc7013b34c8876db65224fc1e08e172c2b99def4eed8b39e49b834e9ea39df3bb844dafe8e13ffd1fd552db83657659de7aff5e7ef09c5a6f39fc6d73496e3e05ade834f3c37e0ecdef6ef71a5bacec7d20954feaff5b97770e9a3638ed4d73bbabf2af5619ad44df93618e4754ffdedf84adbfbfd0be343d6fbe3dbd75a7e31b84ae3cb1cbf56fe33115cc03ed947857662ee99b885bcd9a3494ff889c2ef1f4d34f67c5aa6f2e6a095f3ddf1e65e8f7d3deee51a5cf3be521f3987a9fed70963c305975bafe76f276ebf4ed5f6ef71747f15f561d4d76170158e1f068b2bb3363ec2e39b3119961f9ddffcda6fdf2a5f97954cfbe7754fccf17bd5820bc05639b8dc2430addf4e16cde0aafc049b1d2f089e6d78ac6feef4d371b64e754e3c5a3f39c6f51cf5e9c77970e565f9c9ae563f6d2b6d9b74be6edb56fbb41cdd5f85c115d53f0a8646fd4be34b5e57f7dff4bd9ac74b47704dc79beae0ebd32a5fcb7c06820bd8e7f1575c8d8955f7976d4be594a4739c27aabd93f852bfeba49182eafaefcff7d77532ecaf7fcfc4ad75d289d2b6f7de73f68eeeaf7a832b1def4870b932ebfb6fc75abebe1d5c42eaa6fd6b8fd52abf65da3f083e77fc1e0417b04f165cf226d737b79f7897f5ee8de92733ab67629d2633f9a86eff1bd74e5472ac3dc1e78fab13d9cf83824bf8f6eb699f9aaef65d26d872fb86c1e583374daefde71f058b1d5fa275fe7e7bcfae9ffa2b3fbfb47c0eac33fe3d28550b2e6d47820d58bdeddfe35aea36d769adc7cee0d27acf96897e2ecf9e934eae3a99d7f6efd1b37f2db8d2c4edf6b7fdb084819076323f28c8fa9efa67eb5d1fb7c647ab8cecfca47ef2da079796d133765df98f16b67fa59fec0f01c03b7bf9239f74f2e04df9b7d0aff733fd80c01517a05e1e5ce94d19fc348cb1115cc7ad5794841660bd2cb8d68f997853fe4504178047e1e9f00080a1105c0080a1105c0080a1bc2cb8f81d0800e016c307d7defbb700006323b80000432906d71a2cf6e919f96373749be8aeffe9a916dfcbfab59cf9c9144bf9b68cfef2a3a73624e6c907b28d849add7679b243ba47c61d2f58060038976670d9304901300783aeb7573b69fd7c33b13edb4eaea8a647d648391a56f6114bd3eb54a679665bab7c5d56bbe25a024bcfc90453b1fc273ef20700b05fc71597b92231cfaa9b4220bf79d83ecbcf6eab8160c3222cdfeedf285f973583cb049ddf3fab4f703e0080f3b93db8ccffa37d0e0757a37c5dd60caeca15d42628ddf10000e7f3f7afb81a1ffde9feb26da91c00c079dc1e5c268474bd84c0b2fe86e04afbcf41d32a5f97a5b2ddb26c5d23b8a6805cff2e57b40d00e03c6e0eae691bb9029abe6061bf04e1b7ad05d7b2af7021532b7fddc69563cae80a2eddbfb11d00e01c8ac1f52ea28006009cd7db0757eda34600c0f9bc6d70a5c04a1f2ff2bb2d0018c9db5f710100c642700100864270010086427001008642700100864270010086427001008642700100864270010086f2df8f3e9c36788ac4f4e474d6dfba1e00707f5c71010086427001008642700100864270010086427001008642700100864270010086427001008642700100867238b83e3e3e7fbf7ffefdfefbf9fefd7cf153233ebe2ea7380f00c0e31483ebe3e3ebf7f2efdfefcff7e7b2ecf3fbe7f7dfbf9fdfef4ff3d823820b00f044e5e092e7f0fdfc5c4d41300594bcce83eb4c082e00f8fb1ac1f5fdfb7d99824a5e5fbebf527869704d5760f303662f5f9b3264bd5cb1d9edec159cf8baccfb27eb436af54aeef2355df94debb7a199ef7fe582ab587e7a40aebb7a0c9695f60700bc4633b83eaf573153f85cae13ba86493e79a7602a04970d131f0cb2de96954242b7d58f20ddf6f638697bf3da5f71f594bff928b4737f5d060078ae72702d2170bde2f9b9fc5e2ef2ff1b82cb4cf4d3efcdb6574dca06cf7ac5b56e9bafdf96d5faa8300ab6daf1bc56f90080c7ab07d71c4672a5215726a5c9bd1a5cc172355d81c955955109922cb8d2beeeef63b960a9959fd6a7f09bca08cb6bec0f0078beaee0b224c4ee115cd147755930dd105cd11554a97c5da6f5f1f5eddd1f00f05cc5e02a858e5e7dd965b705d7f4a50b0d267ddd1d5c2e58d2ba6cff7af95999d773fc9abf84b22cefdc1f00f05c3707970647f6319a30fbd4824b2c61935c83e3eb7a15d5195ce9b5fd284f96fbf595f29732b51e6e79effe0080e72a0617000067447001008642700100864270010086427001008642700100867238b86a5f277f36ff757900c0df530c2ebde1d6de6c9ceecbf2cf0724b800004f540e2eb9b997bfc7050038994670f1f7b84afb03005ea3195cfc3dae787f5d060078ae72702d2170bde2e1ef7125adf201008f570fae398ce44a43ae4c4a937b35b882e56aba0293ab2aa312245970a57ddddfcf72c1522b3fad4fe137951196d7d81f00f07c5dc1654988dd23b8a28feab260ba21b8a22ba852f9ba4cebe3ebdbbb3f00e0b98ac1550a1dbdfab2cb6e0baee94b171a4cfaba3bb85cb0a475d9fef5f2b332afe7c8dfe3028031dc1c5c1a1cd9c768c2ec530b2eb1844d720d0efe1e1700a0a1185c00009c11c10500180ac10500180ac10500180ac10500180ac10500180ac10500184a35b8b6f76a9de7e9e8d18dd0a275ef1800606cc5e05a42cbdf507c921b704b01457001c0df560eaef4d408f7d0d9d2d32c962bb2ed55905c192deb83d0cbd69be3adc79a1fb594ac8f65aa05973d8762f9e9a91bee314fc1b2d6f903009eab185ca560b01fd14da1954ff4569af44d19feb51cc386605a3f87c3fa31651c56e9d8f3ff6d58d9f3eb29df865c2adf8453ebfc0100cf570caed2246d83c1fedf9b1e4a1b5dd1947f4f96c2c8054be95985ebffafdb5daec1352f9773b2fb58767f796d83ca1fef96f307003cdecd575c51b058d90370336b1884db1482246d1f059794713d4f7dbabb0dae5af9697d0aa729887c28f59c3f00e0f9eabfe332937c5a66fed447f4519b155db1e4ebb7fb67c1d40a2e0d9aebb2743ed77f7fbebfaefb4cc76c95afcb34e8d23a13d4adf30700bc4639b8e690b213bf4cf276e24f5765958fced2f685df09d910b4aff705977c44385f31cd41f3b30457bdfcac4c73c5a6cb45edfc0100af510c2eb14cf6ca4dfa620aaf759bec0a670e1fbb3ebbaa91d058d65d8363c7dfe32a055df65164a5fca54cdd2fa85bebfc0100cf570d2e0000ce86e002000c85e002000c85e002000c85e002000c85e002000c85e002000ca51a5cd17d4ca52765bc8adc247cb67302003c4e31b834b4ce1e0a041700bc974a70e58f4cdaae9f82adfc640b5d6f9fbe913f5629baa2f3c74b8f5dd2f5e6e916fe891d0b9e6c01007f5af5a3420d8d28bc7a83cb86957fe27ce909f4ca3f2bd0bfd6655c7101c0fb687e39237bde9f098dfe2bae78bdbcae3da477bae2735768ee4f8f08820b00de4b33b854e9a1b647824b641ff9d960ecfc7b58041700bc97eee012faa7442438ee155ccbba797b0dafe88a2b427001c07bd9155ce9eac8048ffd9dd3728574637009ff3b2f5b7e893f2700c0df560caef0a33a1710f93697df2f79dd195ccb1556adfc681b17649b6d1a41070018dbae2b2e00005e8de002000c85e002000c85e002000c85e002000c85e002000c6509aef4d5f63bdf0f557a2a86b57c9dfdcec7be87e9dcda374103009e270557f349f0eee6e2689b1a7f63b175e6e012e9deb3c2f3140100cf9782abf6d8240d96cba5fed48b9a5a708d60f4f30780bfe4bfe96aaa7c45b13c52a9f1b8a69ad2c49f96573e4adc3c15632657864ba056fede97488f8dd2f5eefca3f2a3abcedee72602001eefbfdad5c4146af343751f105caab43e7b16e21c327a65b886ce1a28be1cffac43ffba755e56edaa1400f03cffd930f0ec64fdece05aafa8d6e3d9eda2f5f9b310b75749feea3295d7f9fbabb4ed8df50700dc4f0aaef0e331175467bde22a06977ea164230fb329bce67595733c527f00c0fd14afb852686413fe2a0aba9a43c1658f6db6b9e58aab46cb2b9d67ab0e0080e7a8fe8ecb7af615d7143ce58ff15ac125afed155b8fda79da8f4d0100afd3fc56a1da1b5ccb158cbd6232574dadf5220549617d4f7085c7a81dbf503fbe550800e7d1bc8feb55ec371a97652940f67f547954ef552900e0f1ba9e9cf10ae9ea29fc56e073af7ca6f3e8fbe62100e0f11efaacc2a3b61f153e39b4d2c7897c44080067b2041700002320b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b8000003f9dfefff016202ffbc42baaf5c0000000049454e44ae426082	1	1	120.00
9	1	3	2025-03-14 12:00:00	\\x89504e470d0a1a0a0000000d49484452000001ae000000dc0806000000286845e4000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400001a7e49444154785eeddde979a3cc1286e12f80e36c9c8b3371228ac4794c4e3eaa8682eaa27a4168a1ade7c77dcd88a5a117f56b6481fffbdffffef70b00c028082e00c050082e00c050082e00c050082e00c050082e00c050082e00c050082e00c050febb7c7d842b000038a3c3c1f575f9f7fbf3fd19ae7b86cfef9f5fa9c3c7c7e7eff7cfbff4ff68bb88eef3efdfcad645cab6ebfcfa8fafcbefbf9fefdfcf8ff898adfd452a2358fff1f9fdfb6396af7e7ebf3fdb758cea563bd767bbd7f9bd7afc0178bee1834b8ebf0657dfa42e74e2ac9d7b0a9ecb57b84e74055765ff29d8f273fefcbe6cea704b1b6bfdb47f97a0a89ccf33ddebfc082ee0fd5c836b9e30d24fbdf924ba4c26cb4fc597dfaf79928eae261233f1c83632a9d86d759299ae28dcf1826525fe4ac5ea99c83e3ebe7e2fd76d6bc1dd0a9e23c1d5737c758fe012adfa58ebfed3794e6ddb3f3e52db5cbe97f56b3953193de777e6f107e075fe9337f3f2536f0a836972d049c34e9869027013756d525d268c791f3b3114cbef9c58c554c65c5e2a7b9dd87ac8b9dbfa7badf339145c3bcef79e575ca5ba7ababd0d2b5b9f62ff695fcf3f58c8f1a6769672d673689d5fab7c5df6caf107e035b28f0aa7ab807210d8f5baac39719889c6ef6f27feedc4657fd23736e5cd412be7eb26b51e3ac1266ed25a263e236baf9ee02aec3f1df7f1c1951d7fc7a4ecfb232db3fdd5181f765b0d041b16adf37bf5f803705ee5e00a26e5e8cddd9c382a936576bc9dc123c7cd26bd455f1878d3b95cf737e7d03cffa08dacdafe69df270497ed2b3f91d744fb67137d637cd8f5da0ebade0657e9fc5ae5ebb2578d3f00aff3f82baecac421747fd9d696b304896726173bd9f41cab65aaf35abfe6c4174cae566d7fad9f6dff927b0557d4a725e1fe36b81ae3e396e0b265b6cad7658f1a7f00ce2b0b2e7913eb1bdd4e32d97a3751a7c9a13079f74c1c1a163f3f7d13aae527c7a3138faf4bebfc8f049748ede926e2477dab50f8fa4ddbe90f083e241ac1d5181fb704973dbf56f9d13eba2c5bf7c0f107e035d2973316ee4dbeb9ea0926089d60a232ba260eddbfb15d244d8ef37e7b27f769c232e72da249d16d638f918eefd6db325afb47db447538125cb6ecb8ff6e0bae7cdf6df9bdc1553bbfb38f3f00aff1f2473e451324f02c8c3f603c2f0faef45371f09334f00c8c3f603c2f0baef523327eb780e763fc01e3e2e9f00080a1105c0080a1105c0080a164f771010070768783eb967b8cee497ec92e75b8e56bcdeb2fe8575a97cdfd4162739f91df66fd45bfde8364db663a5e7ec37149cff17bbcaa7fee75fe00e00d1f5c72fc35b8fa4241a52029dc78aa13ef26c8e6edfd6b91ca9b27e77483f3f57cf491547a7eb26c4f7069ff44c7ebf1eae03a7afe00e05d836b9e50d24fc5f9a4ba4c36cb4fcdeb154574b592b8895c264dbbed1204f3a376b2e305cb4ac2a756cc7a27ea3dc125b2604ac72f3f6d620aaeefdfefcb541f797df9febaaebf2db8843fdf53f74fc7f903c02ddefaef71d58ee7cfcf7ff457da57db239d8fd4fbdaa6f27a7a06e176322ff1137fe9f5a6fd4ed23fadf307805b651f154e93733908ec7a5dd69c18cd44eaf7b7cfb3bb65629bca9b835683c29c6fcb32711b7ea28dd609a97735b896ba5dcff1e7f27bb9c8fffbeb181ddf1eefecfdd33a7f00b85539b8cca4b5aedf4e5ecd89b1325965c70b82679a9cede4b74ed42938b275aaffaaab767e5a57ad9b0faad2be5970cdeb97653b26ff685b1b3467e89f9ad6f9db6d01608fc75f71552646a1fbcbb6a5724aec64da732cafb68f0f2e0d516daf3838a47da66d6c7059525fdbe625d1c46ffbe4ecfdd33a7fbb2d00ec9105974c523a91f9897b59ef26eb34f9157e8aee9918a7c94cbe6db77f42b3e1b1776215b5f36bd55f43aab4be54b606815fee4513bf6debb3f74febfcedb600b0c7dbfe3d2e513bbf2818a6497c9d8c6bed532a7b6f702d65bbf2a76dcedb3f3de70f00b778f9239f7482b33f99e33ce81f0067f3f2e0e2e3a373a37f009ccdcb822b4d88e923247e597f46f40f80b3e2e9f00080a1105c0080a1105c0080a164f771613ccbd7ce832f50acbfa7badaf975763c5f74533b9e87f61fc7e1e0bae5fea97b92c959ea70cbd7b6d30dbb3ab127f95327b6f722e55f54d8ee7f350784def36503237ab245c9f6d862fb45895a70a914603706d7a3fab7b77e35b5fe7948fbef9cd46ae3236227ce7b1c5fbcfafd79ab7b8c0fdaffef1a3eb8e4f86b70f54d4a113fa92d03d70cf41400c1e08dda607de2842d73ffc469fb677a23ee7bf38a3307d7adf56bf5cfbddb3f3a5eafde368c26cea3c77f54ff3d9aafbfb875fcd3fe7fcf35b8e60e493f55e46feaa5b3969f3ad64193268965b9e12612e934bbad76a24e2cd9f18265256990d9e31ab70c944d70a5f2f33749f46612d1e09cea72ddff5ace52e783c1e5db27eb83ca1b2a6d17ac3fdabf629a4c663b7e22eda95f4dab7f1ed1fea5766ca94d5e59fb9936ec39fed1fe936de4bcecb64b5b057db1a77f8e3a3a3e2cdaffef79ebbfc765f949ad742e517da365ebf948b9daa6f70d2ed56ab768fd3dfa37bde94db9fe75cd9efa455afd73eff68fceb757a90d7d7bf5fcc4ef5f1fe9bfb4fd03df9f4744edbd677c58b4ffdf937d5468dfd8eb1b3f5eafcb9a1d633ad2ef5f1b283da6f2e64949ced70d9a3dfcb9f941ada2fa46cb6cfb493bc8faa8fd4aa2f648e714d4b135a0a3f547fb37da362ab3644ffd2269db4affdcabfdd3c4a26e9c34a2360cdb2f783f948e7fb4ffc423df9f5359eefc4567ff1e1d1fd63bb6ff5f570e2ed368ebfa7830553ba6f266cf8e2703c11f2f0d0e3b78d681920671b64ef54d9c9e1f34a5738fea1bbe31ccc04e65a7bae5c7a869bd71ac563b47eb8ff6efb66fd4fdeb1769f5cfbddadfb6453aa66bb31eadf1b12c6b4c54f6f867787f3ed2d1f161d1fe7fcfe3afb81a834df7976d4be594d8ceec39568daf5b3c30659b7c608a9e37866c73f9dab65f49f4262869d53d5a7fb47fa36df7d853bf48ab7f1ed1fe519bf5e8191f22f5d35ca7d6f18ff69fe879cfe8feb26da99c88f645163ca273f23d3a3eac776cffbf2e0b2e69246d48ed38db5869bd1b78b6b37559b6aed131d300b876ca93ff1e57aa5ffa73fad3317d3df48dd7aabf2ef7c7f6033bbdbe5c0e4d9c25ad768ed6dfa37fed78d96b4ffd22adfe7944fb476db14ed0e5f11b8e0fd7fe692c9b89bd75fc7bf45f342ebc23efcf237ac707edff9edefaef714d8342cf7d3b305af54f03d5ae17f3f96c26cea59dee135c9b76f7c76fac9fb639d6bfe131ccfa9a56fd7ad4ceff5eed9fd52d6c9ff2c4591b1f695f3bfea46cf38358cff1cffefe3c428f7b24b868ffbfebe58f7cea1da0009e8ff7e76bd1feb1970757ed521ac06bf1fe7c2dda3ff6b2e04a1d922e9fb797f8005e8bf7e76bd1fe753c1d1e003014820b003014820b003094ec3e2e00e715dd748d71d07ff77338b86eb97fea9ee4979852875bbe36babdcf23bfc767b98762599fffa2b47d1fd7fa7a2a4feefbe8bb8f48acbfa05dbdb2ad9fed68fd6bfd77b47fb665e7e5f768dd67e4f989efddc7c75147db8ffe7b9de1834b8ebf06577f28787ed25a26263310d3400b7e628ada609a18e58e775be60dc1557923fc7547eadfeabfa3fda3e5dbf7cf3491edff1658ef7b289cf8de787c1c75aff6a3ff9eef1a5cf627c7fc4dbbfda9727d53a6465f961b6ea2900eb5db6a07ebc4911d2f58569206813daed13388bc4d70a5f2f349289aac4439b8aefb5fcb59ea7cc7e05acf45cad4bae765d7da5f4d93edccbca9a2bada375e6fff95caef51ab7f4babff8ef64fd83e3bc6af559bf8b2f6736df8eee3e3a823e3cba2ffb6e53f1a7f8f6be627add2b944f58d96ade723e56a9bf64f8ca2d61eda7eb6ff7cffd4da5fd6a74167cab7af9b03bb637cd4caef51ab7f4b695fedaba3fd13b68f6bdf5e7a4ed1725b07dbfef2bad63eef303e8eaab5df1e72def4dff6f523651f15da37eefac68ed7eb3239d9a8d384afa8df3f6a287b3e2d5379f3a423e76b8eb5973fb7522744f58d96d9f6937690f551fbd52c03d3d0f609079e2bbfd6fed1b9d8736e0d6c796dcbf7dbb7cad76535b5fab7b4faef68ff44ed938e79c3180cc74fd47e51fb17dae7af8f8f69ffbceec98ef63f32be2cfa6f5bbe2e7b947270b94a4cebb7958d3a4da58a5712383b9e54da1f2f3584edd8b551d22491ad53b7359cef88d2b947f50d076e3648ae65a7ba6d3bbba6d67edd03bbb4ffa66dd5dc1f1d037b3ade5c4737685be56b9935adf153d3eabfa3fda3ed93d5edc6736d8d9f655934b1bcf1f838eac8f8b2e8bf6df95ae6a33cfe8aab3130747fd9b6544e493ac7b9a18f0e425f37df89eb3679678b9e812bdbecf97b5062f7c076c7acef5f3f979e812da67a5dc78bac33c76a95dfe3489fb6faef68ff44ed73ab9ef123527b983abdf3f8d0bedc4c9ceef83547c69745ffade53e4b165c72927a725a31db2169bdab98ef0cab67604c9d710d2dfe1ed7467d606e079eed3fd16a7fbfbd67d74ff5d9d65f07f4d7655baf56f92d3de3a7a4d57f47fb276affc83ac196c7b79cd766fcb8f75f6a67d7feef3e3e8eea195ff4df39fb8fbfc7b5d46f3b305bf54f1d67d78bf97c3613e3d24e3b83cb95bfbc117cbb0bd786adf66f95b1691f79ed07b696d133365cf92db5faf7a8f5dfd1fed1ed8f04576dfca47d6dfbcbb9cb78377578f7f17154cff8a2ffced97f2f7fe49356be35012047bba186f13136faafeee5c1957e6a08d21c750c6cd4303ec646ffd5bd2cb8d6cbe4ed2538da18d8a8617c8c8dfeabe3e9f00080a1105c0080a1105c0080a164f7710135e9f603be4803e0c50e07d72df74fdd937cc943eab0f79799a5f3d67b23fc7d3e62baa763bdcf67fd82c9aa7a1f869bf46bfbf738ba7feb3e14cf07d7d1e3c38e13bea404f41a3eb8e4f86b70edbcb93798a47579777015267a9d90364166b6afeddfe3e8feaab70fc3e0bac3f1df556a4f194fdff22fc105f4ba0697bd32c827feed55c3fae64a93d6b2dc7013b34c8876db65224fc1e08e172c2b99def4eed8b39e49b834e9ea39df3bb844dafe8e13ffd1fd552db83657659de7aff5e7ef09c5a6f39fc6d73496e3e05ade834f3c37e0ecdef6ef71a5bacec7d20954feaff5b97770e9a3638ed4d73bbabf2af5619ad44df93618e4754ffdedf84adbfbfd0be343d6fbe3dbd75a7e31b84ae3cb1cbf56fe33115cc03ed947857662ee99b885bcd9a3494ff889c2ef1f4d34f67c5aa6f2e6a095f3ddf1e65e8f7d3deee51a5cf3be521f3987a9fed70963c305975bafe76f276ebf4ed5f6ef71747f15f561d4d76170158e1f068b2bb3363ec2e39b3119961f9ddffcda6fdf2a5f97954cfbe7754fccf17bd5820bc05639b8dc2430addf4e16cde0aafc049b1d2f089e6d78ac6feef4d371b64e754e3c5a3f39c6f51cf5e9c77970e565f9c9ae563f6d2b6d9b74be6edb56fbb41cdd5f85c115d53f0a8646fd4be34b5e57f7dff4bd9ac74b47704dc79beae0ebd32a5fcb7c06820bd8e7f1575c8d8955f7976d4be594a4739c27aabd93f852bfeba49182eafaefcff7d77532ecaf7fcfc4ad75d289d2b6f7de73f68eeeaf7a832b1def4870b932ebfb6fc75abebe1d5c42eaa6fd6b8fd52abf65da3f083e77fc1e0417b04f165cf226d737b79f7897f5ee8de92733ab67629d2633f9a86eff1bd74e5472ac3dc1e78fab13d9cf83824bf8f6eb699f9aaef65d26d872fb86c1e583374daefde71f058b1d5fa275fe7e7bcfae9ffa2b3fbfb47c0eac33fe3d28550b2e6d47820d58bdeddfe35aea36d769adc7cee0d27acf96897e2ecf9e934eae3a99d7f6efd1b37f2db8d2c4edf6b7fdb084819076323f28c8fa9efa67eb5d1fb7c647ab8cecfca47ef2da079796d133765df98f16b67fa59fec0f01c03b7bf9239f74f2e04df9b7d0aff733fd80c01517a05e1e5ce94d19fc348cb1115cc7ad5794841660bd2cb8d68f997853fe4504178047e1e9f00080a1105c0080a1105c0080a1bc2cb8f81d0800e016c307d7defbb700006323b80000432906d71a2cf6e919f96373749be8aeffe9a916dfcbfab59cf9c9144bf9b68cfef2a3a73624e6c907b28d849add7679b243ba47c61d2f58060038976670d9304901300783aeb7573b69fd7c33b13edb4eaea8a647d648391a56f6114bd3eb54a679665bab7c5d56bbe25a024bcfc90453b1fc273ef20700b05fc71597b92231cfaa9b4220bf79d83ecbcf6eab8160c3222cdfeedf285f973583cb049ddf3fab4f703e0080f3b93db8ccffa37d0e0757a37c5dd60caeca15d42628ddf10000e7f3f7afb81a1ffde9feb26da91c00c079dc1e5c268474bd84c0b2fe86e04afbcf41d32a5f97a5b2ddb26c5d23b8a6805cff2e57b40d00e03c6e0eae691bb9029abe6061bf04e1b7ad05d7b2af7021532b7fddc69563cae80a2eddbfb11d00e01c8ac1f52ea28006009cd7db0757eda34600c0f9bc6d70a5c04a1f2ff2bb2d0018c9db5f710100c642700100864270010086427001008642700100864270010086427001008642700100864270010086f2df8f3e9c36788ac4f4e474d6dfba1e00707f5c71010086427001008642700100864270010086427001008642700100864270010086427001008642700100867238b83e3e3e7fbf7ffefdfefbf9fefd7cf153233ebe2ea7380f00c0e31483ebe3e3ebf7f2efdfefcff7e7b2ecf3fbe7f7dfbf9fdfef4ff3d823820b00f044e5e092e7f0fdfc5c4d41300594bcce83eb4c082e00f8fb1ac1f5fdfb7d99824a5e5fbebf527869704d5760f303662f5f9b3264bd5cb1d9edec159cf8baccfb27eb436af54aeef2355df94debb7a199ef7fe582ab587e7a40aebb7a0c9695f60700bc4633b83eaf573153f85cae13ba86493e79a7602a04970d131f0cb2de96954242b7d58f20ddf6f638697bf3da5f71f594bff928b4737f5d060078ae72702d2170bde2f9b9fc5e2ef2ff1b82cb4cf4d3efcdb6574dca06cf7ac5b56e9bafdf96d5faa8300ab6daf1bc56f90080c7ab07d71c4672a5215726a5c9bd1a5cc172355d81c955955109922cb8d2beeeef63b960a9959fd6a7f09bca08cb6bec0f0078beaee0b224c4ee115cd147755930dd105cd11554a97c5da6f5f1f5eddd1f00f05cc5e02a858e5e7dd965b705d7f4a50b0d267ddd1d5c2e58d2ba6cff7af95999d773fc9abf84b22cefdc1f00f05c3707970647f6319a30fbd4824b2c61935c83e3eb7a15d5195ce9b5fd284f96fbf595f29732b51e6e79effe0080e72a0617000067447001008642700100864270010086427001008642700100867238b86a5f277f36ff757900c0df530c2ebde1d6de6c9ceecbf2cf0724b800004f540e2eb9b997bfc7050038994670f1f7b84afb03005ea3195cfc3dae787f5d060078ae72702d2170bde2e1ef7125adf201008f570fae398ce44a43ae4c4a937b35b882e56aba0293ab2aa312245970a57ddddfcf72c1522b3fad4fe137951196d7d81f00f07c5dc1654988dd23b8a28feab260ba21b8a22ba852f9ba4cebe3ebdbbb3f00e0b98ac1550a1dbdfab2cb6e0baee94b171a4cfaba3bb85cb0a475d9fef5f2b332afe7c8dfe3028031dc1c5c1a1cd9c768c2ec530b2eb1844d720d0efe1e1700a0a1185c00009c11c10500180ac10500180ac10500180ac10500180ac10500180ac10500184a35b8b6f76a9de7e9e8d18dd0a275ef1800606cc5e05a42cbdf507c921b704b01457001c0df560eaef4d408f7d0d9d2d32c962bb2ed55905c192deb83d0cbd69be3adc79a1fb594ac8f65aa05973d8762f9e9a91bee314fc1b2d6f903009eab185ca560b01fd14da1954ff4569af44d19feb51cc386605a3f87c3fa31651c56e9d8f3ff6d58d9f3eb29df865c2adf8453ebfc0100cf570caed2246d83c1fedf9b1e4a1b5dd1947f4f96c2c8054be95985ebffafdb5daec1352f9773b2fb58767f796d83ca1fef96f307003cdecd575c51b058d90370336b1884db1482246d1f059794713d4f7dbabb0dae5af9697d0aa729887c28f59c3f00e0f9eabfe332937c5a66fed447f4519b155db1e4ebb7fb67c1d40a2e0d9aebb2743ed77f7fbebfaefb4cc76c95afcb34e8d23a13d4adf30700bc4639b8e690b213bf4cf276e24f5765958fced2f685df09d910b4aff705977c44385f31cd41f3b30457bdfcac4c73c5a6cb45edfc0100af510c2eb14cf6ca4dfa620aaf759bec0a670e1fbb3ebbaa91d058d65d8363c7dfe32a055df65164a5fca54cdd2fa85bebfc0100cf570d2e0000ce86e002000c85e002000c85e002000c85e002000c85e002000c85e002000ca51a5cd17d4ca52765bc8adc247cb67302003c4e31b834b4ce1e0a041700bc974a70e58f4cdaae9f82adfc640b5d6f9fbe913f5629baa2f3c74b8f5dd2f5e6e916fe891d0b9e6c01007f5af5a3420d8d28bc7a83cb86957fe27ce909f4ca3f2bd0bfd6655c7101c0fb687e39237bde9f098dfe2bae78bdbcae3da477bae2735768ee4f8f08820b00de4b33b854e9a1b647824b641ff9d960ecfc7b58041700bc97eee012faa7442438ee155ccbba797b0dafe88a2b427001c07bd9155ce9eac8048ffd9dd3728574637009ff3b2f5b7e893f2700c0df560caef0a33a1710f93697df2f79dd195ccb1556adfc681b17649b6d1a41070018dbae2b2e00005e8de002000c85e002000c85e002000c85e002000c85e002000c6509aef4d5f63bdf0f557a2a86b57c9dfdcec7be87e9dcda374103009e270557f349f0eee6e2689b1a7f63b175e6e012e9deb3c2f3140100cf9782abf6d8240d96cba5fed48b9a5a708d60f4f30780bfe4bfe96aaa7c45b13c52a9f1b8a69ad2c49f96573e4adc3c15632657864ba056fede97488f8dd2f5eefca3f2a3abcedee72602001eefbfdad5c4146af343751f105caab43e7b16e21c327a65b886ce1a28be1cffac43ffba755e56edaa1400f03cffd930f0ec64fdece05aafa8d6e3d9eda2f5f9b310b75749feea3295d7f9fbabb4ed8df50700dc4f0aaef0e331175467bde22a06977ea164230fb329bce67595733c527f00c0fd14afb852686413fe2a0aba9a43c1658f6db6b9e58aab46cb2b9d67ab0e0080e7a8fe8ecb7af615d7143ce58ff15ac125afed155b8fda79da8f4d0100afd3fc56a1da1b5ccb158cbd6232574dadf5220549617d4f7085c7a81dbf503fbe550800e7d1bc8feb55ec371a97652940f67f547954ef552900e0f1ba9e9cf10ae9ea29fc56e073af7ca6f3e8fbe62100e0f11efaacc2a3b61f153e39b4d2c7897c44080067b2041700002320b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b8000003f9dfefff016202ffbc42baaf5c0000000049454e44ae426082	1	10	10000.00
10	1	3	2025-03-14 12:00:00	\\x89504e470d0a1a0a0000000d49484452000001ae000000dc0806000000286845e4000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400001a7e49444154785eeddde979a3cc1286e12f80e36c9c8b3371228ac4794c4e3eaa8682eaa27a4168a1ade7c77dcd88a5a117f56b6481fffbdffffef70b00c028082e00c050082e00c050082e00c050082e00c050082e00c050082e00c050082e00c050febb7c7d842b000038a3c3c1f575f9f7fbf3fd19ae7b86cfef9f5fa9c3c7c7e7eff7cfbff4ff68bb88eef3efdfcad645cab6ebfcfa8fafcbefbf9fefdfcf8ff898adfd452a2358fff1f9fdfb6396af7e7ebf3fdb758cea563bd767bbd7f9bd7afc0178bee1834b8ebf0657dfa42e74e2ac9d7b0a9ecb57b84e74055765ff29d8f273fefcbe6cea704b1b6bfdb47f97a0a89ccf33ddebfc082ee0fd5c836b9e30d24fbdf924ba4c26cb4fc597dfaf79928eae261233f1c83632a9d86d759299ae28dcf1826525fe4ac5ea99c83e3ebe7e2fd76d6bc1dd0a9e23c1d5737c758fe012adfa58ebfed3794e6ddb3f3e52db5cbe97f56b3953193de777e6f107e075fe9337f3f2536f0a836972d049c34e9869027013756d525d268c791f3b3114cbef9c58c554c65c5e2a7b9dd87ac8b9dbfa7badf339145c3bcef79e575ca5ba7ababd0d2b5b9f62ff695fcf3f58c8f1a6769672d673689d5fab7c5df6caf107e035b28f0aa7ab807210d8f5baac39719889c6ef6f27feedc4657fd23736e5cd412be7eb26b51e3ac1266ed25a263e236baf9ee02aec3f1df7f1c1951d7fc7a4ecfb232db3fdd5181f765b0d041b16adf37bf5f803705ee5e00a26e5e8cddd9c382a936576bc9dc123c7cd26bd455f1878d3b95cf737e7d03cffa08dacdafe69df270497ed2b3f91d744fb67137d637cd8f5da0ebade0657e9fc5ae5ebb2578d3f00aff3f82baecac421747fd9d696b304896726173bd9f41cab65aaf35abfe6c4174cae566d7fad9f6dff927b0557d4a725e1fe36b81ae3e396e0b265b6cad7658f1a7f00ce2b0b2e7913eb1bdd4e32d97a3751a7c9a13079f74c1c1a163f3f7d13aae527c7a3138faf4bebfc8f049748ede926e2477dab50f8fa4ddbe90f083e241ac1d5181fb704973dbf56f9d13eba2c5bf7c0f107e035d2973316ee4dbeb9ea0926089d60a232ba260eddbfb15d244d8ef37e7b27f769c232e72da249d16d638f918eefd6db325afb47db447538125cb6ecb8ff6e0bae7cdf6df9bdc1553bbfb38f3f00aff1f2473e451324f02c8c3f603c2f0faef45371f09334f00c8c3f603c2f0baef523327eb780e763fc01e3e2e9f00080a1105c0080a1105c0080a164f771010070768783eb967b8cee497ec92e75b8e56bcdeb2fe8575a97cdfd4162739f91df66fd45bfde8364db663a5e7ec37149cff17bbcaa7fee75fe00e00d1f5c72fc35b8fa4241a52029dc78aa13ef26c8e6edfd6b91ca9b27e77483f3f57cf491547a7eb26c4f7069ff44c7ebf1eae03a7afe00e05d836b9e50d24fc5f9a4ba4c36cb4fcdeb154574b592b8895c264dbbed1204f3a376b2e305cb4ac2a756cc7a27ea3dc125b2604ac72f3f6d620aaeefdfefcb541f797df9febaaebf2db8843fdf53f74fc7f903c02ddefaef71d58ee7cfcf7ff457da57db239d8fd4fbdaa6f27a7a06e176322ff1137fe9f5a6fd4ed23fadf307805b651f154e93733908ec7a5dd69c18cd44eaf7b7cfb3bb65629bca9b835683c29c6fcb32711b7ea28dd609a97735b896ba5dcff1e7f27bb9c8fffbeb181ddf1eefecfdd33a7f00b85539b8cca4b5aedf4e5ecd89b1325965c70b82679a9cede4b74ed42938b275aaffaaab767e5a57ad9b0faad2be5970cdeb97653b26ff685b1b3467e89f9ad6f9db6d01608fc75f71552646a1fbcbb6a5724aec64da732cafb68f0f2e0d516daf3838a47da66d6c7059525fdbe625d1c46ffbe4ecfdd33a7fbb2d00ec9105974c523a91f9897b59ef26eb34f9157e8aee9918a7c94cbe6db77f42b3e1b1776215b5f36bd55f43aab4be54b606815fee4513bf6debb3f74febfcedb600b0c7dbfe3d2e513bbf2818a6497c9d8c6bed532a7b6f702d65bbf2a76dcedb3f3de70f00b778f9239f7482b33f99e33ce81f0067f3f2e0e2e3a373a37f009ccdcb822b4d88e923247e597f46f40f80b3e2e9f00080a1105c0080a1105c0080a164f771613ccbd7ce832f50acbfa7badaf975763c5f74533b9e87f61fc7e1e0bae5fea97b92c959ea70cbd7b6d30dbb3ab127f95327b6f722e55f54d8ee7f350784def36503237ab245c9f6d862fb45895a70a914603706d7a3fab7b77e35b5fe7948fbef9cd46ae3236227ce7b1c5fbcfafd79ab7b8c0fdaffef1a3eb8e4f86b70f54d4a113fa92d03d70cf41400c1e08dda607de2842d73ffc469fb677a23ee7bf38a3307d7adf56bf5cfbddb3f3a5eafde368c26cea3c77f54ff3d9aafbfb875fcd3fe7fcf35b8e60e493f55e46feaa5b3969f3ad64193268965b9e12612e934bbad76a24e2cd9f18265256990d9e31ab70c944d70a5f2f33749f46612d1e09cea72ddff5ace52e783c1e5db27eb83ca1b2a6d17ac3fdabf629a4c663b7e22eda95f4dab7f1ed1fea5766ca94d5e59fb9936ec39fed1fe936de4bcecb64b5b057db1a77f8e3a3a3e2cdaffef79ebbfc765f949ad742e517da365ebf948b9daa6f70d2ed56ab768fd3dfa37bde94db9fe75cd9efa455afd73eff68fceb757a90d7d7bf5fcc4ef5f1fe9bfb4fd03df9f4744edbd677c58b4ffdf937d5468dfd8eb1b3f5eafcb9a1d633ad2ef5f1b283da6f2e64949ced70d9a3dfcb9f941ada2fa46cb6cfb493bc8faa8fd4aa2f648e714d4b135a0a3f547fb37da362ab3644ffd2269db4affdcabfdd3c4a26e9c34a2360cdb2f783f948e7fb4ffc423df9f5359eefc4567ff1e1d1fd63bb6ff5f570e2ed368ebfa7830553ba6f266cf8e2703c11f2f0d0e3b78d681920671b64ef54d9c9e1f34a5738fea1bbe31ccc04e65a7bae5c7a869bd71ac563b47eb8ff6efb66fd4fdeb1769f5cfbddadfb6453aa66bb31eadf1b12c6b4c54f6f867787f3ed2d1f161d1fe7fcfe3afb81a834df7976d4be594d8ceec39568daf5b3c30659b7c608a9e37866c73f9dab65f49f4262869d53d5a7fb47fa36df7d853bf48ab7f1ed1fe519bf5e8191f22f5d35ca7d6f18ff69fe879cfe8feb26da99c88f645163ca273f23d3a3eac776cffbf2e0b2e69246d48ed38db5869bd1b78b6b37559b6aed131d300b876ca93ff1e57aa5ffa73fad3317d3df48dd7aabf2ef7c7f6033bbdbe5c0e4d9c25ad768ed6dfa37fed78d96b4ffd22adfe7944fb476db14ed0e5f11b8e0fd7fe692c9b89bd75fc7bf45f342ebc23efcf237ac707edff9edefaef714d8342cf7d3b305af54f03d5ae17f3f96c26cea59dee135c9b76f7c76fac9fb639d6bfe131ccfa9a56fd7ad4ceff5eed9fd52d6c9ff2c4591b1f695f3bfea46cf38358cff1cffefe3c428f7b24b868ffbfebe58f7cea1da0009e8ff7e76bd1feb1970757ed521ac06bf1fe7c2dda3ff6b2e04a1d922e9fb797f8005e8bf7e76bd1fe753c1d1e003014820b003014820b003094ec3e2e00e715dd748d71d07ff77338b86eb97fea9ee4979852875bbe36babdcf23bfc767b98762599fffa2b47d1fd7fa7a2a4feefbe8bb8f48acbfa05dbdb2ad9fed68fd6bfd77b47fb665e7e5f768dd67e4f989efddc7c75147db8ffe7b9de1834b8ebf06577f28787ed25a26263310d3400b7e628ada609a18e58e775be60dc1557923fc7547eadfeabfa3fda3e5dbf7cf3491edff1658ef7b289cf8de787c1c75aff6a3ff9eef1a5cf627c7fc4dbbfda9727d53a6465f961b6ea2900eb5db6a07ebc4911d2f58569206813daed13388bc4d70a5f2f349289aac4439b8aefb5fcb59ea7cc7e05acf45cad4bae765d7da5f4d93edccbca9a2bada375e6fff95caef51ab7f4babff8ef64fd83e3bc6af559bf8b2f6736df8eee3e3a823e3cba2ffb6e53f1a7f8f6be627add2b944f58d96ade723e56a9bf64f8ca2d61eda7eb6ff7cffd4da5fd6a74167cab7af9b03bb637cd4caef51ab7f4b695fedaba3fd13b68f6bdf5e7a4ed1725b07dbfef2bad63eef303e8eaab5df1e72def4dff6f523651f15da37eefac68ed7eb3239d9a8d384afa8df3f6a287b3e2d5379f3a423e76b8eb5973fb7522744f58d96d9f6937690f551fbd52c03d3d0f609079e2bbfd6fed1b9d8736e0d6c796dcbf7dbb7cad76535b5fab7b4faef68ff44ed938e79c3180cc74fd47e51fb17dae7af8f8f69ffbceec98ef63f32be2cfa6f5bbe2e7b947270b94a4cebb7958d3a4da58a5712383b9e54da1f2f3584edd8b551d22491ad53b7359cef88d2b947f50d076e3648ae65a7ba6d3bbba6d67edd03bbb4ffa66dd5dc1f1d037b3ade5c4737685be56b9935adf153d3eabfa3fda3ed93d5edc6736d8d9f655934b1bcf1f838eac8f8b2e8bf6df95ae6a33cfe8aab3130747fd9b6544e493ac7b9a18f0e425f37df89eb3679678b9e812bdbecf97b5062f7c076c7acef5f3f979e812da67a5dc78bac33c76a95dfe3489fb6faef68ff44ed73ab9ef123527b983abdf3f8d0bedc4c9ceef83547c69745ffade53e4b165c72927a725a31db2169bdab98ef0cab67604c9d710d2dfe1ed7467d606e079eed3fd16a7fbfbd67d74ff5d9d65f07f4d7655baf56f92d3de3a7a4d57f47fb276affc83ac196c7b79cd766fcb8f75f6a67d7feef3e3e8eea195ff4df39fb8fbfc7b5d46f3b305bf54f1d67d78bf97c3613e3d24e3b83cb95bfbc117cbb0bd786adf66f95b1691f79ed07b696d133365cf92db5faf7a8f5dfd1fed1ed8f04576dfca47d6dfbcbb9cb78377578f7f17154cff8a2ffced97f2f7fe49356be35012047bba186f13136faafeee5c1957e6a08d21c750c6cd4303ec646ffd5bd2cb8d6cbe4ed2538da18d8a8617c8c8dfeabe3e9f00080a1105c0080a1105c0080a164f7710135e9f603be4803e0c50e07d72df74fdd937cc943eab0f79799a5f3d67b23fc7d3e62baa763bdcf67fd82c9aa7a1f869bf46bfbf738ba7feb3e14cf07d7d1e3c38e13bea404f41a3eb8e4f86b70edbcb93798a47579777015267a9d90364166b6afeddfe3e8feaab70fc3e0bac3f1df556a4f194fdff22fc105f4ba0697bd32c827feed55c3fae64a93d6b2dc7013b34c8876db65224fc1e08e172c2b99def4eed8b39e49b834e9ea39df3bb844dafe8e13ffd1fd552db83657659de7aff5e7ef09c5a6f39fc6d73496e3e05ade834f3c37e0ecdef6ef71a5bacec7d20954feaff5b97770e9a3638ed4d73bbabf2af5619ad44df93618e4754ffdedf84adbfbfd0be343d6fbe3dbd75a7e31b84ae3cb1cbf56fe33115cc03ed947857662ee99b885bcd9a3494ff889c2ef1f4d34f67c5aa6f2e6a095f3ddf1e65e8f7d3deee51a5cf3be521f3987a9fed70963c305975bafe76f276ebf4ed5f6ef71747f15f561d4d76170158e1f068b2bb3363ec2e39b3119961f9ddffcda6fdf2a5f97954cfbe7754fccf17bd5820bc05639b8dc2430addf4e16cde0aafc049b1d2f089e6d78ac6feef4d371b64e754e3c5a3f39c6f51cf5e9c77970e565f9c9ae563f6d2b6d9b74be6edb56fbb41cdd5f85c115d53f0a8646fd4be34b5e57f7dff4bd9ac74b47704dc79beae0ebd32a5fcb7c06820bd8e7f1575c8d8955f7976d4be594a4739c27aabd93f852bfeba49182eafaefcff7d77532ecaf7fcfc4ad75d289d2b6f7de73f68eeeaf7a832b1def4870b932ebfb6fc75abebe1d5c42eaa6fd6b8fd52abf65da3f083e77fc1e0417b04f165cf226d737b79f7897f5ee8de92733ab67629d2633f9a86eff1bd74e5472ac3dc1e78fab13d9cf83824bf8f6eb699f9aaef65d26d872fb86c1e583374daefde71f058b1d5fa275fe7e7bcfae9ffa2b3fbfb47c0eac33fe3d28550b2e6d47820d58bdeddfe35aea36d769adc7cee0d27acf96897e2ecf9e934eae3a99d7f6efd1b37f2db8d2c4edf6b7fdb084819076323f28c8fa9efa67eb5d1fb7c647ab8cecfca47ef2da079796d133765df98f16b67fa59fec0f01c03b7bf9239f74f2e04df9b7d0aff733fd80c01517a05e1e5ce94d19fc348cb1115cc7ad5794841660bd2cb8d68f997853fe4504178047e1e9f00080a1105c0080a1105c0080a1bc2cb8f81d0800e016c307d7defbb700006323b80000432906d71a2cf6e919f96373749be8aeffe9a916dfcbfab59cf9c9144bf9b68cfef2a3a73624e6c907b28d849add7679b243ba47c61d2f58060038976670d9304901300783aeb7573b69fd7c33b13edb4eaea8a647d648391a56f6114bd3eb54a679665bab7c5d56bbe25a024bcfc90453b1fc273ef20700b05fc71597b92231cfaa9b4220bf79d83ecbcf6eab8160c3222cdfeedf285f973583cb049ddf3fab4f703e0080f3b93db8ccffa37d0e0757a37c5dd60caeca15d42628ddf10000e7f3f7afb81a1ffde9feb26da91c00c079dc1e5c268474bd84c0b2fe86e04afbcf41d32a5f97a5b2ddb26c5d23b8a6805cff2e57b40d00e03c6e0eae691bb9029abe6061bf04e1b7ad05d7b2af7021532b7fddc69563cae80a2eddbfb11d00e01c8ac1f52ea28006009cd7db0757eda34600c0f9bc6d70a5c04a1f2ff2bb2d0018c9db5f710100c642700100864270010086427001008642700100864270010086427001008642700100864270010086f2df8f3e9c36788ac4f4e474d6dfba1e00707f5c71010086427001008642700100864270010086427001008642700100864270010086427001008642700100867238b83e3e3e7fbf7ffefdfefbf9fefd7cf153233ebe2ea7380f00c0e31483ebe3e3ebf7f2efdfefcff7e7b2ecf3fbe7f7dfbf9fdfef4ff3d823820b00f044e5e092e7f0fdfc5c4d41300594bcce83eb4c082e00f8fb1ac1f5fdfb7d99824a5e5fbebf527869704d5760f303662f5f9b3264bd5cb1d9edec159cf8baccfb27eb436af54aeef2355df94debb7a199ef7fe582ab587e7a40aebb7a0c9695f60700bc4633b83eaf573153f85cae13ba86493e79a7602a04970d131f0cb2de96954242b7d58f20ddf6f638697bf3da5f71f594bff928b4737f5d060078ae72702d2170bde2f9b9fc5e2ef2ff1b82cb4cf4d3efcdb6574dca06cf7ac5b56e9bafdf96d5faa8300ab6daf1bc56f90080c7ab07d71c4672a5215726a5c9bd1a5cc172355d81c955955109922cb8d2beeeef63b960a9959fd6a7f09bca08cb6bec0f0078beaee0b224c4ee115cd147755930dd105cd11554a97c5da6f5f1f5eddd1f00f05cc5e02a858e5e7dd965b705d7f4a50b0d267ddd1d5c2e58d2ba6cff7af95999d773fc9abf84b22cefdc1f00f05c3707970647f6319a30fbd4824b2c61935c83e3eb7a15d5195ce9b5fd284f96fbf595f29732b51e6e79effe0080e72a0617000067447001008642700100864270010086427001008642700100867238b86a5f277f36ff757900c0df530c2ebde1d6de6c9ceecbf2cf0724b800004f540e2eb9b997bfc7050038994670f1f7b84afb03005ea3195cfc3dae787f5d060078ae72702d2170bde2e1ef7125adf201008f570fae398ce44a43ae4c4a937b35b882e56aba0293ab2aa312245970a57ddddfcf72c1522b3fad4fe137951196d7d81f00f07c5dc1654988dd23b8a28feab260ba21b8a22ba852f9ba4cebe3ebdbbb3f00e0b98ac1550a1dbdfab2cb6e0baee94b171a4cfaba3bb85cb0a475d9fef5f2b332afe7c8dfe3028031dc1c5c1a1cd9c768c2ec530b2eb1844d720d0efe1e1700a0a1185c00009c11c10500180ac10500180ac10500180ac10500180ac10500180ac10500184a35b8b6f76a9de7e9e8d18dd0a275ef1800606cc5e05a42cbdf507c921b704b01457001c0df560eaef4d408f7d0d9d2d32c962bb2ed55905c192deb83d0cbd69be3adc79a1fb594ac8f65aa05973d8762f9e9a91bee314fc1b2d6f903009eab185ca560b01fd14da1954ff4569af44d19feb51cc386605a3f87c3fa31651c56e9d8f3ff6d58d9f3eb29df865c2adf8453ebfc0100cf570caed2246d83c1fedf9b1e4a1b5dd1947f4f96c2c8054be95985ebffafdb5daec1352f9773b2fb58767f796d83ca1fef96f307003cdecd575c51b058d90370336b1884db1482246d1f059794713d4f7dbabb0dae5af9697d0aa729887c28f59c3f00e0f9eabfe332937c5a66fed447f4519b155db1e4ebb7fb67c1d40a2e0d9aebb2743ed77f7fbebfaefb4cc76c95afcb34e8d23a13d4adf30700bc4639b8e690b213bf4cf276e24f5765958fced2f685df09d910b4aff705977c44385f31cd41f3b30457bdfcac4c73c5a6cb45edfc0100af510c2eb14cf6ca4dfa620aaf759bec0a670e1fbb3ebbaa91d058d65d8363c7dfe32a055df65164a5fca54cdd2fa85bebfc0100cf570d2e0000ce86e002000c85e002000c85e002000c85e002000c85e002000c85e002000ca51a5cd17d4ca52765bc8adc247cb67302003c4e31b834b4ce1e0a041700bc974a70e58f4cdaae9f82adfc640b5d6f9fbe913f5629baa2f3c74b8f5dd2f5e6e916fe891d0b9e6c01007f5af5a3420d8d28bc7a83cb86957fe27ce909f4ca3f2bd0bfd6655c7101c0fb687e39237bde9f098dfe2bae78bdbcae3da477bae2735768ee4f8f08820b00de4b33b854e9a1b647824b641ff9d960ecfc7b58041700bc97eee012faa7442438ee155ccbba797b0dafe88a2b427001c07bd9155ce9eac8048ffd9dd3728574637009ff3b2f5b7e893f2700c0df560caef0a33a1710f93697df2f79dd195ccb1556adfc681b17649b6d1a41070018dbae2b2e00005e8de002000c85e002000c85e002000c85e002000c85e002000c6509aef4d5f63bdf0f557a2a86b57c9dfdcec7be87e9dcda374103009e270557f349f0eee6e2689b1a7f63b175e6e012e9deb3c2f3140100cf9782abf6d8240d96cba5fed48b9a5a708d60f4f30780bfe4bfe96aaa7c45b13c52a9f1b8a69ad2c49f96573e4adc3c15632657864ba056fede97488f8dd2f5eefca3f2a3abcedee72602001eefbfdad5c4146af343751f105caab43e7b16e21c327a65b886ce1a28be1cffac43ffba755e56edaa1400f03cffd930f0ec64fdece05aafa8d6e3d9eda2f5f9b310b75749feea3295d7f9fbabb4ed8df50700dc4f0aaef0e331175467bde22a06977ea164230fb329bce67595733c527f00c0fd14afb852686413fe2a0aba9a43c1658f6db6b9e58aab46cb2b9d67ab0e0080e7a8fe8ecb7af615d7143ce58ff15ac125afed155b8fda79da8f4d0100afd3fc56a1da1b5ccb158cbd6232574dadf5220549617d4f7085c7a81dbf503fbe550800e7d1bc8feb55ec371a97652940f67f547954ef552900e0f1ba9e9cf10ae9ea29fc56e073af7ca6f3e8fbe62100e0f11efaacc2a3b61f153e39b4d2c7897c44080067b2041700002320b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b8000003f9dfefff016202ffbc42baaf5c0000000049454e44ae426082	1	9	9000.00
11	1	3	2025-03-14 12:00:00	\\x89504e470d0a1a0a0000000d49484452000001ae000000dc0806000000286845e4000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400001a7e49444154785eeddde979a3cc1286e12f80e36c9c8b3371228ac4794c4e3eaa8682eaa27a4168a1ade7c77dcd88a5a117f56b6481fffbdffffef70b00c028082e00c050082e00c050082e00c050082e00c050082e00c050082e00c050082e00c050febb7c7d842b000038a3c3c1f575f9f7fbf3fd19ae7b86cfef9f5fa9c3c7c7e7eff7cfbff4ff68bb88eef3efdfcad645cab6ebfcfa8fafcbefbf9fefdfcf8ff898adfd452a2358fff1f9fdfb6396af7e7ebf3fdb758cea563bd767bbd7f9bd7afc0178bee1834b8ebf0657dfa42e74e2ac9d7b0a9ecb57b84e74055765ff29d8f273fefcbe6cea704b1b6bfdb47f97a0a89ccf33ddebfc082ee0fd5c836b9e30d24fbdf924ba4c26cb4fc597dfaf79928eae261233f1c83632a9d86d759299ae28dcf1826525fe4ac5ea99c83e3ebe7e2fd76d6bc1dd0a9e23c1d5737c758fe012adfa58ebfed3794e6ddb3f3e52db5cbe97f56b3953193de777e6f107e075fe9337f3f2536f0a836972d049c34e9869027013756d525d268c791f3b3114cbef9c58c554c65c5e2a7b9dd87ac8b9dbfa7badf339145c3bcef79e575ca5ba7ababd0d2b5b9f62ff695fcf3f58c8f1a6769672d673689d5fab7c5df6caf107e035b28f0aa7ab807210d8f5baac39719889c6ef6f27feedc4657fd23736e5cd412be7eb26b51e3ac1266ed25a263e236baf9ee02aec3f1df7f1c1951d7fc7a4ecfb232db3fdd5181f765b0d041b16adf37bf5f803705ee5e00a26e5e8cddd9c382a936576bc9dc123c7cd26bd455f1878d3b95cf737e7d03cffa08dacdafe69df270497ed2b3f91d744fb67137d637cd8f5da0ebade0657e9fc5ae5ebb2578d3f00aff3f82baecac421747fd9d696b304896726173bd9f41cab65aaf35abfe6c4174cae566d7fad9f6dff927b0557d4a725e1fe36b81ae3e396e0b265b6cad7658f1a7f00ce2b0b2e7913eb1bdd4e32d97a3751a7c9a13079f74c1c1a163f3f7d13aae527c7a3138faf4bebfc8f049748ede926e2477dab50f8fa4ddbe90f083e241ac1d5181fb704973dbf56f9d13eba2c5bf7c0f107e035d2973316ee4dbeb9ea0926089d60a232ba260eddbfb15d244d8ef37e7b27f769c232e72da249d16d638f918eefd6db325afb47db447538125cb6ecb8ff6e0bae7cdf6df9bdc1553bbfb38f3f00aff1f2473e451324f02c8c3f603c2f0faef45371f09334f00c8c3f603c2f0baef523327eb780e763fc01e3e2e9f00080a1105c0080a1105c0080a164f771010070768783eb967b8cee497ec92e75b8e56bcdeb2fe8575a97cdfd4162739f91df66fd45bfde8364db663a5e7ec37149cff17bbcaa7fee75fe00e00d1f5c72fc35b8fa4241a52029dc78aa13ef26c8e6edfd6b91ca9b27e77483f3f57cf491547a7eb26c4f7069ff44c7ebf1eae03a7afe00e05d836b9e50d24fc5f9a4ba4c36cb4fcdeb154574b592b8895c264dbbed1204f3a376b2e305cb4ac2a756cc7a27ea3dc125b2604ac72f3f6d620aaeefdfefcb541f797df9febaaebf2db8843fdf53f74fc7f903c02ddefaef71d58ee7cfcf7ff457da57db239d8fd4fbdaa6f27a7a06e176322ff1137fe9f5a6fd4ed23fadf307805b651f154e93733908ec7a5dd69c18cd44eaf7b7cfb3bb65629bca9b835683c29c6fcb32711b7ea28dd609a97735b896ba5dcff1e7f27bb9c8fffbeb181ddf1eefecfdd33a7f00b85539b8cca4b5aedf4e5ecd89b1325965c70b82679a9cede4b74ed42938b275aaffaaab767e5a57ad9b0faad2be5970cdeb97653b26ff685b1b3467e89f9ad6f9db6d01608fc75f71552646a1fbcbb6a5724aec64da732cafb68f0f2e0d516daf3838a47da66d6c7059525fdbe625d1c46ffbe4ecfdd33a7fbb2d00ec9105974c523a91f9897b59ef26eb34f9157e8aee9918a7c94cbe6db77f42b3e1b1776215b5f36bd55f43aab4be54b606815fee4513bf6debb3f74febfcedb600b0c7dbfe3d2e513bbf2818a6497c9d8c6bed532a7b6f702d65bbf2a76dcedb3f3de70f00b778f9239f7482b33f99e33ce81f0067f3f2e0e2e3a373a37f009ccdcb822b4d88e923247e597f46f40f80b3e2e9f00080a1105c0080a1105c0080a164f771613ccbd7ce832f50acbfa7badaf975763c5f74533b9e87f61fc7e1e0bae5fea97b92c959ea70cbd7b6d30dbb3ab127f95327b6f722e55f54d8ee7f350784def36503237ab245c9f6d862fb45895a70a914603706d7a3fab7b77e35b5fe7948fbef9cd46ae3236227ce7b1c5fbcfafd79ab7b8c0fdaffef1a3eb8e4f86b70f54d4a113fa92d03d70cf41400c1e08dda607de2842d73ffc469fb677a23ee7bf38a3307d7adf56bf5cfbddb3f3a5eafde368c26cea3c77f54ff3d9aafbfb875fcd3fe7fcf35b8e60e493f55e46feaa5b3969f3ad64193268965b9e12612e934bbad76a24e2cd9f18265256990d9e31ab70c944d70a5f2f33749f46612d1e09cea72ddff5ace52e783c1e5db27eb83ca1b2a6d17ac3fdabf629a4c663b7e22eda95f4dab7f1ed1fea5766ca94d5e59fb9936ec39fed1fe936de4bcecb64b5b057db1a77f8e3a3a3e2cdaffef79ebbfc765f949ad742e517da365ebf948b9daa6f70d2ed56ab768fd3dfa37bde94db9fe75cd9efa455afd73eff68fceb757a90d7d7bf5fcc4ef5f1fe9bfb4fd03df9f4744edbd677c58b4ffdf937d5468dfd8eb1b3f5eafcb9a1d633ad2ef5f1b283da6f2e64949ced70d9a3dfcb9f941ada2fa46cb6cfb493bc8faa8fd4aa2f648e714d4b135a0a3f547fb37da362ab3644ffd2269db4affdcabfdd3c4a26e9c34a2360cdb2f783f948e7fb4ffc423df9f5359eefc4567ff1e1d1fd63bb6ff5f570e2ed368ebfa7830553ba6f266cf8e2703c11f2f0d0e3b78d681920671b64ef54d9c9e1f34a5738fea1bbe31ccc04e65a7bae5c7a869bd71ac563b47eb8ff6efb66fd4fdeb1769f5cfbddadfb6453aa66bb31eadf1b12c6b4c54f6f867787f3ed2d1f161d1fe7fcfe3afb81a834df7976d4be594d8ceec39568daf5b3c30659b7c608a9e37866c73f9dab65f49f4262869d53d5a7fb47fa36df7d853bf48ab7f1ed1fe519bf5e8191f22f5d35ca7d6f18ff69fe879cfe8feb26da99c88f645163ca273f23d3a3eac776cffbf2e0b2e69246d48ed38db5869bd1b78b6b37559b6aed131d300b876ca93ff1e57aa5ffa73fad3317d3df48dd7aabf2ef7c7f6033bbdbe5c0e4d9c25ad768ed6dfa37fed78d96b4ffd22adfe7944fb476db14ed0e5f11b8e0fd7fe692c9b89bd75fc7bf45f342ebc23efcf237ac707edff9edefaef714d8342cf7d3b305af54f03d5ae17f3f96c26cea59dee135c9b76f7c76fac9fb639d6bfe131ccfa9a56fd7ad4ceff5eed9fd52d6c9ff2c4591b1f695f3bfea46cf38358cff1cffefe3c428f7b24b868ffbfebe58f7cea1da0009e8ff7e76bd1feb1970757ed521ac06bf1fe7c2dda3ff6b2e04a1d922e9fb797f8005e8bf7e76bd1fe753c1d1e003014820b003014820b003094ec3e2e00e715dd748d71d07ff77338b86eb97fea9ee4979852875bbe36babdcf23bfc767b98762599fffa2b47d1fd7fa7a2a4feefbe8bb8f48acbfa05dbdb2ad9fed68fd6bfd77b47fb665e7e5f768dd67e4f989efddc7c75147db8ffe7b9de1834b8ebf06577f28787ed25a26263310d3400b7e628ada609a18e58e775be60dc1557923fc7547eadfeabfa3fda3e5dbf7cf3491edff1658ef7b289cf8de787c1c75aff6a3ff9eef1a5cf627c7fc4dbbfda9727d53a6465f961b6ea2900eb5db6a07ebc4911d2f58569206813daed13388bc4d70a5f2f349289aac4439b8aefb5fcb59ea7cc7e05acf45cad4bae765d7da5f4d93edccbca9a2bada375e6fff95caef51ab7f4babff8ef64fd83e3bc6af559bf8b2f6736df8eee3e3a823e3cba2ffb6e53f1a7f8f6be627add2b944f58d96ade723e56a9bf64f8ca2d61eda7eb6ff7cffd4da5fd6a74167cab7af9b03bb637cd4caef51ab7f4b695fedaba3fd13b68f6bdf5e7a4ed1725b07dbfef2bad63eef303e8eaab5df1e72def4dff6f523651f15da37eefac68ed7eb3239d9a8d384afa8df3f6a287b3e2d5379f3a423e76b8eb5973fb7522744f58d96d9f6937690f551fbd52c03d3d0f609079e2bbfd6fed1b9d8736e0d6c796dcbf7dbb7cad76535b5fab7b4faef68ff44ed938e79c3180cc74fd47e51fb17dae7af8f8f69ffbceec98ef63f32be2cfa6f5bbe2e7b947270b94a4cebb7958d3a4da58a5712383b9e54da1f2f3584edd8b551d22491ad53b7359cef88d2b947f50d076e3648ae65a7ba6d3bbba6d67edd03bbb4ffa66dd5dc1f1d037b3ade5c4737685be56b9935adf153d3eabfa3fda3ed93d5edc6736d8d9f655934b1bcf1f838eac8f8b2e8bf6df95ae6a33cfe8aab3130747fd9b6544e493ac7b9a18f0e425f37df89eb3679678b9e812bdbecf97b5062f7c076c7acef5f3f979e812da67a5dc78bac33c76a95dfe3489fb6faef68ff44ed73ab9ef123527b983abdf3f8d0bedc4c9ceef83547c69745ffade53e4b165c72927a725a31db2169bdab98ef0cab67604c9d710d2dfe1ed7467d606e079eed3fd16a7fbfbd67d74ff5d9d65f07f4d7655baf56f92d3de3a7a4d57f47fb276affc83ac196c7b79cd766fcb8f75f6a67d7feef3e3e8eea195ff4df39fb8fbfc7b5d46f3b305bf54f1d67d78bf97c3613e3d24e3b83cb95bfbc117cbb0bd786adf66f95b1691f79ed07b696d133365cf92db5faf7a8f5dfd1fed1ed8f04576dfca47d6dfbcbb9cb78377578f7f17154cff8a2ffced97f2f7fe49356be35012047bba186f13136faafeee5c1957e6a08d21c750c6cd4303ec646ffd5bd2cb8d6cbe4ed2538da18d8a8617c8c8dfeabe3e9f00080a1105c0080a1105c0080a164f7710135e9f603be4803e0c50e07d72df74fdd937cc943eab0f79799a5f3d67b23fc7d3e62baa763bdcf67fd82c9aa7a1f869bf46bfbf738ba7feb3e14cf07d7d1e3c38e13bea404f41a3eb8e4f86b70edbcb93798a47579777015267a9d90364166b6afeddfe3e8feaab70fc3e0bac3f1df556a4f194fdff22fc105f4ba0697bd32c827feed55c3fae64a93d6b2dc7013b34c8876db65224fc1e08e172c2b99def4eed8b39e49b834e9ea39df3bb844dafe8e13ffd1fd552db83657659de7aff5e7ef09c5a6f39fc6d73496e3e05ade834f3c37e0ecdef6ef71a5bacec7d20954feaff5b97770e9a3638ed4d73bbabf2af5619ad44df93618e4754ffdedf84adbfbfd0be343d6fbe3dbd75a7e31b84ae3cb1cbf56fe33115cc03ed947857662ee99b885bcd9a3494ff889c2ef1f4d34f67c5aa6f2e6a095f3ddf1e65e8f7d3deee51a5cf3be521f3987a9fed70963c305975bafe76f276ebf4ed5f6ef71747f15f561d4d76170158e1f068b2bb3363ec2e39b3119961f9ddffcda6fdf2a5f97954cfbe7754fccf17bd5820bc05639b8dc2430addf4e16cde0aafc049b1d2f089e6d78ac6feef4d371b64e754e3c5a3f39c6f51cf5e9c77970e565f9c9ae563f6d2b6d9b74be6edb56fbb41cdd5f85c115d53f0a8646fd4be34b5e57f7dff4bd9ac74b47704dc79beae0ebd32a5fcb7c06820bd8e7f1575c8d8955f7976d4be594a4739c27aabd93f852bfeba49182eafaefcff7d77532ecaf7fcfc4ad75d289d2b6f7de73f68eeeaf7a832b1def4870b932ebfb6fc75abebe1d5c42eaa6fd6b8fd52abf65da3f083e77fc1e0417b04f165cf226d737b79f7897f5ee8de92733ab67629d2633f9a86eff1bd74e5472ac3dc1e78fab13d9cf83824bf8f6eb699f9aaef65d26d872fb86c1e583374daefde71f058b1d5fa275fe7e7bcfae9ffa2b3fbfb47c0eac33fe3d28550b2e6d47820d58bdeddfe35aea36d769adc7cee0d27acf96897e2ecf9e934eae3a99d7f6efd1b37f2db8d2c4edf6b7fdb084819076323f28c8fa9efa67eb5d1fb7c647ab8cecfca47ef2da079796d133765df98f16b67fa59fec0f01c03b7bf9239f74f2e04df9b7d0aff733fd80c01517a05e1e5ce94d19fc348cb1115cc7ad5794841660bd2cb8d68f997853fe4504178047e1e9f00080a1105c0080a1105c0080a1bc2cb8f81d0800e016c307d7defbb700006323b80000432906d71a2cf6e919f96373749be8aeffe9a916dfcbfab59cf9c9144bf9b68cfef2a3a73624e6c907b28d849add7679b243ba47c61d2f58060038976670d9304901300783aeb7573b69fd7c33b13edb4eaea8a647d648391a56f6114bd3eb54a679665bab7c5d56bbe25a024bcfc90453b1fc273ef20700b05fc71597b92231cfaa9b4220bf79d83ecbcf6eab8160c3222cdfeedf285f973583cb049ddf3fab4f703e0080f3b93db8ccffa37d0e0757a37c5dd60caeca15d42628ddf10000e7f3f7afb81a1ffde9feb26da91c00c079dc1e5c268474bd84c0b2fe86e04afbcf41d32a5f97a5b2ddb26c5d23b8a6805cff2e57b40d00e03c6e0eae691bb9029abe6061bf04e1b7ad05d7b2af7021532b7fddc69563cae80a2eddbfb11d00e01c8ac1f52ea28006009cd7db0757eda34600c0f9bc6d70a5c04a1f2ff2bb2d0018c9db5f710100c642700100864270010086427001008642700100864270010086427001008642700100864270010086f2df8f3e9c36788ac4f4e474d6dfba1e00707f5c71010086427001008642700100864270010086427001008642700100864270010086427001008642700100867238b83e3e3e7fbf7ffefdfefbf9fefd7cf153233ebe2ea7380f00c0e31483ebe3e3ebf7f2efdfefcff7e7b2ecf3fbe7f7dfbf9fdfef4ff3d823820b00f044e5e092e7f0fdfc5c4d41300594bcce83eb4c082e00f8fb1ac1f5fdfb7d99824a5e5fbebf527869704d5760f303662f5f9b3264bd5cb1d9edec159cf8baccfb27eb436af54aeef2355df94debb7a199ef7fe582ab587e7a40aebb7a0c9695f60700bc4633b83eaf573153f85cae13ba86493e79a7602a04970d131f0cb2de96954242b7d58f20ddf6f638697bf3da5f71f594bff928b4737f5d060078ae72702d2170bde2f9b9fc5e2ef2ff1b82cb4cf4d3efcdb6574dca06cf7ac5b56e9bafdf96d5faa8300ab6daf1bc56f90080c7ab07d71c4672a5215726a5c9bd1a5cc172355d81c955955109922cb8d2beeeef63b960a9959fd6a7f09bca08cb6bec0f0078beaee0b224c4ee115cd147755930dd105cd11554a97c5da6f5f1f5eddd1f00f05cc5e02a858e5e7dd965b705d7f4a50b0d267ddd1d5c2e58d2ba6cff7af95999d773fc9abf84b22cefdc1f00f05c3707970647f6319a30fbd4824b2c61935c83e3eb7a15d5195ce9b5fd284f96fbf595f29732b51e6e79effe0080e72a0617000067447001008642700100864270010086427001008642700100867238b86a5f277f36ff757900c0df530c2ebde1d6de6c9ceecbf2cf0724b800004f540e2eb9b997bfc7050038994670f1f7b84afb03005ea3195cfc3dae787f5d060078ae72702d2170bde2e1ef7125adf201008f570fae398ce44a43ae4c4a937b35b882e56aba0293ab2aa312245970a57ddddfcf72c1522b3fad4fe137951196d7d81f00f07c5dc1654988dd23b8a28feab260ba21b8a22ba852f9ba4cebe3ebdbbb3f00e0b98ac1550a1dbdfab2cb6e0baee94b171a4cfaba3bb85cb0a475d9fef5f2b332afe7c8dfe3028031dc1c5c1a1cd9c768c2ec530b2eb1844d720d0efe1e1700a0a1185c00009c11c10500180ac10500180ac10500180ac10500180ac10500180ac10500184a35b8b6f76a9de7e9e8d18dd0a275ef1800606cc5e05a42cbdf507c921b704b01457001c0df560eaef4d408f7d0d9d2d32c962bb2ed55905c192deb83d0cbd69be3adc79a1fb594ac8f65aa05973d8762f9e9a91bee314fc1b2d6f903009eab185ca560b01fd14da1954ff4569af44d19feb51cc386605a3f87c3fa31651c56e9d8f3ff6d58d9f3eb29df865c2adf8453ebfc0100cf570caed2246d83c1fedf9b1e4a1b5dd1947f4f96c2c8054be95985ebffafdb5daec1352f9773b2fb58767f796d83ca1fef96f307003cdecd575c51b058d90370336b1884db1482246d1f059794713d4f7dbabb0dae5af9697d0aa729887c28f59c3f00e0f9eabfe332937c5a66fed447f4519b155db1e4ebb7fb67c1d40a2e0d9aebb2743ed77f7fbebfaefb4cc76c95afcb34e8d23a13d4adf30700bc4639b8e690b213bf4cf276e24f5765958fced2f685df09d910b4aff705977c44385f31cd41f3b30457bdfcac4c73c5a6cb45edfc0100af510c2eb14cf6ca4dfa620aaf759bec0a670e1fbb3ebbaa91d058d65d8363c7dfe32a055df65164a5fca54cdd2fa85bebfc0100cf570d2e0000ce86e002000c85e002000c85e002000c85e002000c85e002000c85e002000ca51a5cd17d4ca52765bc8adc247cb67302003c4e31b834b4ce1e0a041700bc974a70e58f4cdaae9f82adfc640b5d6f9fbe913f5629baa2f3c74b8f5dd2f5e6e916fe891d0b9e6c01007f5af5a3420d8d28bc7a83cb86957fe27ce909f4ca3f2bd0bfd6655c7101c0fb687e39237bde9f098dfe2bae78bdbcae3da477bae2735768ee4f8f08820b00de4b33b854e9a1b647824b641ff9d960ecfc7b58041700bc97eee012faa7442438ee155ccbba797b0dafe88a2b427001c07bd9155ce9eac8048ffd9dd3728574637009ff3b2f5b7e893f2700c0df560caef0a33a1710f93697df2f79dd195ccb1556adfc681b17649b6d1a41070018dbae2b2e00005e8de002000c85e002000c85e002000c85e002000c85e002000c6509aef4d5f63bdf0f557a2a86b57c9dfdcec7be87e9dcda374103009e270557f349f0eee6e2689b1a7f63b175e6e012e9deb3c2f3140100cf9782abf6d8240d96cba5fed48b9a5a708d60f4f30780bfe4bfe96aaa7c45b13c52a9f1b8a69ad2c49f96573e4adc3c15632657864ba056fede97488f8dd2f5eefca3f2a3abcedee72602001eefbfdad5c4146af343751f105caab43e7b16e21c327a65b886ce1a28be1cffac43ffba755e56edaa1400f03cffd930f0ec64fdece05aafa8d6e3d9eda2f5f9b310b75749feea3295d7f9fbabb4ed8df50700dc4f0aaef0e331175467bde22a06977ea164230fb329bce67595733c527f00c0fd14afb852686413fe2a0aba9a43c1658f6db6b9e58aab46cb2b9d67ab0e0080e7a8fe8ecb7af615d7143ce58ff15ac125afed155b8fda79da8f4d0100afd3fc56a1da1b5ccb158cbd6232574dadf5220549617d4f7085c7a81dbf503fbe550800e7d1bc8feb55ec371a97652940f67f547954ef552900e0f1ba9e9cf10ae9ea29fc56e073af7ca6f3e8fbe62100e0f11efaacc2a3b61f153e39b4d2c7897c44080067b2041700002320b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b8000003f9dfefff016202ffbc42baaf5c0000000049454e44ae426082	1	6	6000.00
13	1	3	2025-03-14 11:00:00	\\x89504e470d0a1a0a0000000d49484452000001ae000000dc0806000000286845e4000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400001a7e49444154785eeddde979a3cc1286e12f80e36c9c8b3371228ac4794c4e3eaa8682eaa27a4168a1ade7c77dcd88a5a117f56b6481fffbdffffef70b00c028082e00c050082e00c050082e00c050082e00c050082e00c050082e00c050082e00c050febb7c7d842b000038a3c3c1f575f9f7fbf3fd19ae7b86cfef9f5fa9c3c7c7e7eff7cfbff4ff68bb88eef3efdfcad645cab6ebfcfa8fafcbefbf9fefdfcf8ff898adfd452a2358fff1f9fdfb6396af7e7ebf3fdb758cea563bd767bbd7f9bd7afc0178bee1834b8ebf0657dfa42e74e2ac9d7b0a9ecb57b84e74055765ff29d8f273fefcbe6cea704b1b6bfdb47f97a0a89ccf33ddebfc082ee0fd5c836b9e30d24fbdf924ba4c26cb4fc597dfaf79928eae261233f1c83632a9d86d759299ae28dcf1826525fe4ac5ea99c83e3ebe7e2fd76d6bc1dd0a9e23c1d5737c758fe012adfa58ebfed3794e6ddb3f3e52db5cbe97f56b3953193de777e6f107e075fe9337f3f2536f0a836972d049c34e9869027013756d525d268c791f3b3114cbef9c58c554c65c5e2a7b9dd87ac8b9dbfa7badf339145c3bcef79e575ca5ba7ababd0d2b5b9f62ff695fcf3f58c8f1a6769672d673689d5fab7c5df6caf107e035b28f0aa7ab807210d8f5baac39719889c6ef6f27feedc4657fd23736e5cd412be7eb26b51e3ac1266ed25a263e236baf9ee02aec3f1df7f1c1951d7fc7a4ecfb232db3fdd5181f765b0d041b16adf37bf5f803705ee5e00a26e5e8cddd9c382a936576bc9dc123c7cd26bd455f1878d3b95cf737e7d03cffa08dacdafe69df270497ed2b3f91d744fb67137d637cd8f5da0ebade0657e9fc5ae5ebb2578d3f00aff3f82baecac421747fd9d696b304896726173bd9f41cab65aaf35abfe6c4174cae566d7fad9f6dff927b0557d4a725e1fe36b81ae3e396e0b265b6cad7658f1a7f00ce2b0b2e7913eb1bdd4e32d97a3751a7c9a13079f74c1c1a163f3f7d13aae527c7a3138faf4bebfc8f049748ede926e2477dab50f8fa4ddbe90f083e241ac1d5181fb704973dbf56f9d13eba2c5bf7c0f107e035d2973316ee4dbeb9ea0926089d60a232ba260eddbfb15d244d8ef37e7b27f769c232e72da249d16d638f918eefd6db325afb47db447538125cb6ecb8ff6e0bae7cdf6df9bdc1553bbfb38f3f00aff1f2473e451324f02c8c3f603c2f0faef45371f09334f00c8c3f603c2f0baef523327eb780e763fc01e3e2e9f00080a1105c0080a1105c0080a164f771010070768783eb967b8cee497ec92e75b8e56bcdeb2fe8575a97cdfd4162739f91df66fd45bfde8364db663a5e7ec37149cff17bbcaa7fee75fe00e00d1f5c72fc35b8fa4241a52029dc78aa13ef26c8e6edfd6b91ca9b27e77483f3f57cf491547a7eb26c4f7069ff44c7ebf1eae03a7afe00e05d836b9e50d24fc5f9a4ba4c36cb4fcdeb154574b592b8895c264dbbed1204f3a376b2e305cb4ac2a756cc7a27ea3dc125b2604ac72f3f6d620aaeefdfefcb541f797df9febaaebf2db8843fdf53f74fc7f903c02ddefaef71d58ee7cfcf7ff457da57db239d8fd4fbdaa6f27a7a06e176322ff1137fe9f5a6fd4ed23fadf307805b651f154e93733908ec7a5dd69c18cd44eaf7b7cfb3bb65629bca9b835683c29c6fcb32711b7ea28dd609a97735b896ba5dcff1e7f27bb9c8fffbeb181ddf1eefecfdd33a7f00b85539b8cca4b5aedf4e5ecd89b1325965c70b82679a9cede4b74ed42938b275aaffaaab767e5a57ad9b0faad2be5970cdeb97653b26ff685b1b3467e89f9ad6f9db6d01608fc75f71552646a1fbcbb6a5724aec64da732cafb68f0f2e0d516daf3838a47da66d6c7059525fdbe625d1c46ffbe4ecfdd33a7fbb2d00ec9105974c523a91f9897b59ef26eb34f9157e8aee9918a7c94cbe6db77f42b3e1b1776215b5f36bd55f43aab4be54b606815fee4513bf6debb3f74febfcedb600b0c7dbfe3d2e513bbf2818a6497c9d8c6bed532a7b6f702d65bbf2a76dcedb3f3de70f00b778f9239f7482b33f99e33ce81f0067f3f2e0e2e3a373a37f009ccdcb822b4d88e923247e597f46f40f80b3e2e9f00080a1105c0080a1105c0080a164f771613ccbd7ce832f50acbfa7badaf975763c5f74533b9e87f61fc7e1e0bae5fea97b92c959ea70cbd7b6d30dbb3ab127f95327b6f722e55f54d8ee7f350784def36503237ab245c9f6d862fb45895a70a914603706d7a3fab7b77e35b5fe7948fbef9cd46ae3236227ce7b1c5fbcfafd79ab7b8c0fdaffef1a3eb8e4f86b70f54d4a113fa92d03d70cf41400c1e08dda607de2842d73ffc469fb677a23ee7bf38a3307d7adf56bf5cfbddb3f3a5eafde368c26cea3c77f54ff3d9aafbfb875fcd3fe7fcf35b8e60e493f55e46feaa5b3969f3ad64193268965b9e12612e934bbad76a24e2cd9f18265256990d9e31ab70c944d70a5f2f33749f46612d1e09cea72ddff5ace52e783c1e5db27eb83ca1b2a6d17ac3fdabf629a4c663b7e22eda95f4dab7f1ed1fea5766ca94d5e59fb9936ec39fed1fe936de4bcecb64b5b057db1a77f8e3a3a3e2cdaffef79ebbfc765f949ad742e517da365ebf948b9daa6f70d2ed56ab768fd3dfa37bde94db9fe75cd9efa455afd73eff68fceb757a90d7d7bf5fcc4ef5f1fe9bfb4fd03df9f4744edbd677c58b4ffdf937d5468dfd8eb1b3f5eafcb9a1d633ad2ef5f1b283da6f2e64949ced70d9a3dfcb9f941ada2fa46cb6cfb493bc8faa8fd4aa2f648e714d4b135a0a3f547fb37da362ab3644ffd2269db4affdcabfdd3c4a26e9c34a2360cdb2f783f948e7fb4ffc423df9f5359eefc4567ff1e1d1fd63bb6ff5f570e2ed368ebfa7830553ba6f266cf8e2703c11f2f0d0e3b78d681920671b64ef54d9c9e1f34a5738fea1bbe31ccc04e65a7bae5c7a869bd71ac563b47eb8ff6efb66fd4fdeb1769f5cfbddadfb6453aa66bb31eadf1b12c6b4c54f6f867787f3ed2d1f161d1fe7fcfe3afb81a834df7976d4be594d8ceec39568daf5b3c30659b7c608a9e37866c73f9dab65f49f4262869d53d5a7fb47fa36df7d853bf48ab7f1ed1fe519bf5e8191f22f5d35ca7d6f18ff69fe879cfe8feb26da99c88f645163ca273f23d3a3eac776cffbf2e0b2e69246d48ed38db5869bd1b78b6b37559b6aed131d300b876ca93ff1e57aa5ffa73fad3317d3df48dd7aabf2ef7c7f6033bbdbe5c0e4d9c25ad768ed6dfa37fed78d96b4ffd22adfe7944fb476db14ed0e5f11b8e0fd7fe692c9b89bd75fc7bf45f342ebc23efcf237ac707edff9edefaef714d8342cf7d3b305af54f03d5ae17f3f96c26cea59dee135c9b76f7c76fac9fb639d6bfe131ccfa9a56fd7ad4ceff5eed9fd52d6c9ff2c4591b1f695f3bfea46cf38358cff1cffefe3c428f7b24b868ffbfebe58f7cea1da0009e8ff7e76bd1feb1970757ed521ac06bf1fe7c2dda3ff6b2e04a1d922e9fb797f8005e8bf7e76bd1fe753c1d1e003014820b003014820b003094ec3e2e00e715dd748d71d07ff77338b86eb97fea9ee4979852875bbe36babdcf23bfc767b98762599fffa2b47d1fd7fa7a2a4feefbe8bb8f48acbfa05dbdb2ad9fed68fd6bfd77b47fb665e7e5f768dd67e4f989efddc7c75147db8ffe7b9de1834b8ebf06577f28787ed25a26263310d3400b7e628ada609a18e58e775be60dc1557923fc7547eadfeabfa3fda3e5dbf7cf3491edff1658ef7b289cf8de787c1c75aff6a3ff9eef1a5cf627c7fc4dbbfda9727d53a6465f961b6ea2900eb5db6a07ebc4911d2f58569206813daed13388bc4d70a5f2f349289aac4439b8aefb5fcb59ea7cc7e05acf45cad4bae765d7da5f4d93edccbca9a2bada375e6fff95caef51ab7f4babff8ef64fd83e3bc6af559bf8b2f6736df8eee3e3a823e3cba2ffb6e53f1a7f8f6be627add2b944f58d96ade723e56a9bf64f8ca2d61eda7eb6ff7cffd4da5fd6a74167cab7af9b03bb637cd4caef51ab7f4b695fedaba3fd13b68f6bdf5e7a4ed1725b07dbfef2bad63eef303e8eaab5df1e72def4dff6f523651f15da37eefac68ed7eb3239d9a8d384afa8df3f6a287b3e2d5379f3a423e76b8eb5973fb7522744f58d96d9f6937690f551fbd52c03d3d0f609079e2bbfd6fed1b9d8736e0d6c796dcbf7dbb7cad76535b5fab7b4faef68ff44ed938e79c3180cc74fd47e51fb17dae7af8f8f69ffbceec98ef63f32be2cfa6f5bbe2e7b947270b94a4cebb7958d3a4da58a5712383b9e54da1f2f3584edd8b551d22491ad53b7359cef88d2b947f50d076e3648ae65a7ba6d3bbba6d67edd03bbb4ffa66dd5dc1f1d037b3ade5c4737685be56b9935adf153d3eabfa3fda3ed93d5edc6736d8d9f655934b1bcf1f838eac8f8b2e8bf6df95ae6a33cfe8aab3130747fd9b6544e493ac7b9a18f0e425f37df89eb3679678b9e812bdbecf97b5062f7c076c7acef5f3f979e812da67a5dc78bac33c76a95dfe3489fb6faef68ff44ed73ab9ef123527b983abdf3f8d0bedc4c9ceef83547c69745ffade53e4b165c72927a725a31db2169bdab98ef0cab67604c9d710d2dfe1ed7467d606e079eed3fd16a7fbfbd67d74ff5d9d65f07f4d7655baf56f92d3de3a7a4d57f47fb276affc83ac196c7b79cd766fcb8f75f6a67d7feef3e3e8eea195ff4df39fb8fbfc7b5d46f3b305bf54f1d67d78bf97c3613e3d24e3b83cb95bfbc117cbb0bd786adf66f95b1691f79ed07b696d133365cf92db5faf7a8f5dfd1fed1ed8f04576dfca47d6dfbcbb9cb78377578f7f17154cff8a2ffced97f2f7fe49356be35012047bba186f13136faafeee5c1957e6a08d21c750c6cd4303ec646ffd5bd2cb8d6cbe4ed2538da18d8a8617c8c8dfeabe3e9f00080a1105c0080a1105c0080a164f7710135e9f603be4803e0c50e07d72df74fdd937cc943eab0f79799a5f3d67b23fc7d3e62baa763bdcf67fd82c9aa7a1f869bf46bfbf738ba7feb3e14cf07d7d1e3c38e13bea404f41a3eb8e4f86b70edbcb93798a47579777015267a9d90364166b6afeddfe3e8feaab70fc3e0bac3f1df556a4f194fdff22fc105f4ba0697bd32c827feed55c3fae64a93d6b2dc7013b34c8876db65224fc1e08e172c2b99def4eed8b39e49b834e9ea39df3bb844dafe8e13ffd1fd552db83657659de7aff5e7ef09c5a6f39fc6d73496e3e05ade834f3c37e0ecdef6ef71a5bacec7d20954feaff5b97770e9a3638ed4d73bbabf2af5619ad44df93618e4754ffdedf84adbfbfd0be343d6fbe3dbd75a7e31b84ae3cb1cbf56fe33115cc03ed947857662ee99b885bcd9a3494ff889c2ef1f4d34f67c5aa6f2e6a095f3ddf1e65e8f7d3deee51a5cf3be521f3987a9fed70963c305975bafe76f276ebf4ed5f6ef71747f15f561d4d76170158e1f068b2bb3363ec2e39b3119961f9ddffcda6fdf2a5f97954cfbe7754fccf17bd5820bc05639b8dc2430addf4e16cde0aafc049b1d2f089e6d78ac6feef4d371b64e754e3c5a3f39c6f51cf5e9c77970e565f9c9ae563f6d2b6d9b74be6edb56fbb41cdd5f85c115d53f0a8646fd4be34b5e57f7dff4bd9ac74b47704dc79beae0ebd32a5fcb7c06820bd8e7f1575c8d8955f7976d4be594a4739c27aabd93f852bfeba49182eafaefcff7d77532ecaf7fcfc4ad75d289d2b6f7de73f68eeeaf7a832b1def4870b932ebfb6fc75abebe1d5c42eaa6fd6b8fd52abf65da3f083e77fc1e0417b04f165cf226d737b79f7897f5ee8de92733ab67629d2633f9a86eff1bd74e5472ac3dc1e78fab13d9cf83824bf8f6eb699f9aaef65d26d872fb86c1e583374daefde71f058b1d5fa275fe7e7bcfae9ffa2b3fbfb47c0eac33fe3d28550b2e6d47820d58bdeddfe35aea36d769adc7cee0d27acf96897e2ecf9e934eae3a99d7f6efd1b37f2db8d2c4edf6b7fdb084819076323f28c8fa9efa67eb5d1fb7c647ab8cecfca47ef2da079796d133765df98f16b67fa59fec0f01c03b7bf9239f74f2e04df9b7d0aff733fd80c01517a05e1e5ce94d19fc348cb1115cc7ad5794841660bd2cb8d68f997853fe4504178047e1e9f00080a1105c0080a1105c0080a1bc2cb8f81d0800e016c307d7defbb700006323b80000432906d71a2cf6e919f96373749be8aeffe9a916dfcbfab59cf9c9144bf9b68cfef2a3a73624e6c907b28d849add7679b243ba47c61d2f58060038976670d9304901300783aeb7573b69fd7c33b13edb4eaea8a647d648391a56f6114bd3eb54a679665bab7c5d56bbe25a024bcfc90453b1fc273ef20700b05fc71597b92231cfaa9b4220bf79d83ecbcf6eab8160c3222cdfeedf285f973583cb049ddf3fab4f703e0080f3b93db8ccffa37d0e0757a37c5dd60caeca15d42628ddf10000e7f3f7afb81a1ffde9feb26da91c00c079dc1e5c268474bd84c0b2fe86e04afbcf41d32a5f97a5b2ddb26c5d23b8a6805cff2e57b40d00e03c6e0eae691bb9029abe6061bf04e1b7ad05d7b2af7021532b7fddc69563cae80a2eddbfb11d00e01c8ac1f52ea28006009cd7db0757eda34600c0f9bc6d70a5c04a1f2ff2bb2d0018c9db5f710100c642700100864270010086427001008642700100864270010086427001008642700100864270010086f2df8f3e9c36788ac4f4e474d6dfba1e00707f5c71010086427001008642700100864270010086427001008642700100864270010086427001008642700100867238b83e3e3e7fbf7ffefdfefbf9fefd7cf153233ebe2ea7380f00c0e31483ebe3e3ebf7f2efdfefcff7e7b2ecf3fbe7f7dfbf9fdfef4ff3d823820b00f044e5e092e7f0fdfc5c4d41300594bcce83eb4c082e00f8fb1ac1f5fdfb7d99824a5e5fbebf527869704d5760f303662f5f9b3264bd5cb1d9edec159cf8baccfb27eb436af54aeef2355df94debb7a199ef7fe582ab587e7a40aebb7a0c9695f60700bc4633b83eaf573153f85cae13ba86493e79a7602a04970d131f0cb2de96954242b7d58f20ddf6f638697bf3da5f71f594bff928b4737f5d060078ae72702d2170bde2f9b9fc5e2ef2ff1b82cb4cf4d3efcdb6574dca06cf7ac5b56e9bafdf96d5faa8300ab6daf1bc56f90080c7ab07d71c4672a5215726a5c9bd1a5cc172355d81c955955109922cb8d2beeeef63b960a9959fd6a7f09bca08cb6bec0f0078beaee0b224c4ee115cd147755930dd105cd11554a97c5da6f5f1f5eddd1f00f05cc5e02a858e5e7dd965b705d7f4a50b0d267ddd1d5c2e58d2ba6cff7af95999d773fc9abf84b22cefdc1f00f05c3707970647f6319a30fbd4824b2c61935c83e3eb7a15d5195ce9b5fd284f96fbf595f29732b51e6e79effe0080e72a0617000067447001008642700100864270010086427001008642700100867238b86a5f277f36ff757900c0df530c2ebde1d6de6c9ceecbf2cf0724b800004f540e2eb9b997bfc7050038994670f1f7b84afb03005ea3195cfc3dae787f5d060078ae72702d2170bde2e1ef7125adf201008f570fae398ce44a43ae4c4a937b35b882e56aba0293ab2aa312245970a57ddddfcf72c1522b3fad4fe137951196d7d81f00f07c5dc1654988dd23b8a28feab260ba21b8a22ba852f9ba4cebe3ebdbbb3f00e0b98ac1550a1dbdfab2cb6e0baee94b171a4cfaba3bb85cb0a475d9fef5f2b332afe7c8dfe3028031dc1c5c1a1cd9c768c2ec530b2eb1844d720d0efe1e1700a0a1185c00009c11c10500180ac10500180ac10500180ac10500180ac10500180ac10500184a35b8b6f76a9de7e9e8d18dd0a275ef1800606cc5e05a42cbdf507c921b704b01457001c0df560eaef4d408f7d0d9d2d32c962bb2ed55905c192deb83d0cbd69be3adc79a1fb594ac8f65aa05973d8762f9e9a91bee314fc1b2d6f903009eab185ca560b01fd14da1954ff4569af44d19feb51cc386605a3f87c3fa31651c56e9d8f3ff6d58d9f3eb29df865c2adf8453ebfc0100cf570caed2246d83c1fedf9b1e4a1b5dd1947f4f96c2c8054be95985ebffafdb5daec1352f9773b2fb58767f796d83ca1fef96f307003cdecd575c51b058d90370336b1884db1482246d1f059794713d4f7dbabb0dae5af9697d0aa729887c28f59c3f00e0f9eabfe332937c5a66fed447f4519b155db1e4ebb7fb67c1d40a2e0d9aebb2743ed77f7fbebfaefb4cc76c95afcb34e8d23a13d4adf30700bc4639b8e690b213bf4cf276e24f5765958fced2f685df09d910b4aff705977c44385f31cd41f3b30457bdfcac4c73c5a6cb45edfc0100af510c2eb14cf6ca4dfa620aaf759bec0a670e1fbb3ebbaa91d058d65d8363c7dfe32a055df65164a5fca54cdd2fa85bebfc0100cf570d2e0000ce86e002000c85e002000c85e002000c85e002000c85e002000c85e002000ca51a5cd17d4ca52765bc8adc247cb67302003c4e31b834b4ce1e0a041700bc974a70e58f4cdaae9f82adfc640b5d6f9fbe913f5629baa2f3c74b8f5dd2f5e6e916fe891d0b9e6c01007f5af5a3420d8d28bc7a83cb86957fe27ce909f4ca3f2bd0bfd6655c7101c0fb687e39237bde9f098dfe2bae78bdbcae3da477bae2735768ee4f8f08820b00de4b33b854e9a1b647824b641ff9d960ecfc7b58041700bc97eee012faa7442438ee155ccbba797b0dafe88a2b427001c07bd9155ce9eac8048ffd9dd3728574637009ff3b2f5b7e893f2700c0df560caef0a33a1710f93697df2f79dd195ccb1556adfc681b17649b6d1a41070018dbae2b2e00005e8de002000c85e002000c85e002000c85e002000c85e002000c6509aef4d5f63bdf0f557a2a86b57c9dfdcec7be87e9dcda374103009e270557f349f0eee6e2689b1a7f63b175e6e012e9deb3c2f3140100cf9782abf6d8240d96cba5fed48b9a5a708d60f4f30780bfe4bfe96aaa7c45b13c52a9f1b8a69ad2c49f96573e4adc3c15632657864ba056fede97488f8dd2f5eefca3f2a3abcedee72602001eefbfdad5c4146af343751f105caab43e7b16e21c327a65b886ce1a28be1cffac43ffba755e56edaa1400f03cffd930f0ec64fdece05aafa8d6e3d9eda2f5f9b310b75749feea3295d7f9fbabb4ed8df50700dc4f0aaef0e331175467bde22a06977ea164230fb329bce67595733c527f00c0fd14afb852686413fe2a0aba9a43c1658f6db6b9e58aab46cb2b9d67ab0e0080e7a8fe8ecb7af615d7143ce58ff15ac125afed155b8fda79da8f4d0100afd3fc56a1da1b5ccb158cbd6232574dadf5220549617d4f7085c7a81dbf503fbe550800e7d1bc8feb55ec371a97652940f67f547954ef552900e0f1ba9e9cf10ae9ea29fc56e073af7ca6f3e8fbe62100e0f11efaacc2a3b61f153e39b4d2c7897c44080067b2041700002320b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b8000003f9dfefff016202ffbc42baaf5c0000000049454e44ae426082	2	3	3000.00
12	1	3	2025-03-14 12:00:00	\\x89504e470d0a1a0a0000000d49484452000001ae000000dc0806000000286845e4000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400001a7e49444154785eeddde979a3cc1286e12f80e36c9c8b3371228ac4794c4e3eaa8682eaa27a4168a1ade7c77dcd88a5a117f56b6481fffbdffffef70b00c028082e00c050082e00c050082e00c050082e00c050082e00c050082e00c050082e00c050febb7c7d842b000038a3c3c1f575f9f7fbf3fd19ae7b86cfef9f5fa9c3c7c7e7eff7cfbff4ff68bb88eef3efdfcad645cab6ebfcfa8fafcbefbf9fefdfcf8ff898adfd452a2358fff1f9fdfb6396af7e7ebf3fdb758cea563bd767bbd7f9bd7afc0178bee1834b8ebf0657dfa42e74e2ac9d7b0a9ecb57b84e74055765ff29d8f273fefcbe6cea704b1b6bfdb47f97a0a89ccf33ddebfc082ee0fd5c836b9e30d24fbdf924ba4c26cb4fc597dfaf79928eae261233f1c83632a9d86d759299ae28dcf1826525fe4ac5ea99c83e3ebe7e2fd76d6bc1dd0a9e23c1d5737c758fe012adfa58ebfed3794e6ddb3f3e52db5cbe97f56b3953193de777e6f107e075fe9337f3f2536f0a836972d049c34e9869027013756d525d268c791f3b3114cbef9c58c554c65c5e2a7b9dd87ac8b9dbfa7badf339145c3bcef79e575ca5ba7ababd0d2b5b9f62ff695fcf3f58c8f1a6769672d673689d5fab7c5df6caf107e035b28f0aa7ab807210d8f5baac39719889c6ef6f27feedc4657fd23736e5cd412be7eb26b51e3ac1266ed25a263e236baf9ee02aec3f1df7f1c1951d7fc7a4ecfb232db3fdd5181f765b0d041b16adf37bf5f803705ee5e00a26e5e8cddd9c382a936576bc9dc123c7cd26bd455f1878d3b95cf737e7d03cffa08dacdafe69df270497ed2b3f91d744fb67137d637cd8f5da0ebade0657e9fc5ae5ebb2578d3f00aff3f82baecac421747fd9d696b304896726173bd9f41cab65aaf35abfe6c4174cae566d7fad9f6dff927b0557d4a725e1fe36b81ae3e396e0b265b6cad7658f1a7f00ce2b0b2e7913eb1bdd4e32d97a3751a7c9a13079f74c1c1a163f3f7d13aae527c7a3138faf4bebfc8f049748ede926e2477dab50f8fa4ddbe90f083e241ac1d5181fb704973dbf56f9d13eba2c5bf7c0f107e035d2973316ee4dbeb9ea0926089d60a232ba260eddbfb15d244d8ef37e7b27f769c232e72da249d16d638f918eefd6db325afb47db447538125cb6ecb8ff6e0bae7cdf6df9bdc1553bbfb38f3f00aff1f2473e451324f02c8c3f603c2f0faef45371f09334f00c8c3f603c2f0baef523327eb780e763fc01e3e2e9f00080a1105c0080a1105c0080a164f771010070768783eb967b8cee497ec92e75b8e56bcdeb2fe8575a97cdfd4162739f91df66fd45bfde8364db663a5e7ec37149cff17bbcaa7fee75fe00e00d1f5c72fc35b8fa4241a52029dc78aa13ef26c8e6edfd6b91ca9b27e77483f3f57cf491547a7eb26c4f7069ff44c7ebf1eae03a7afe00e05d836b9e50d24fc5f9a4ba4c36cb4fcdeb154574b592b8895c264dbbed1204f3a376b2e305cb4ac2a756cc7a27ea3dc125b2604ac72f3f6d620aaeefdfefcb541f797df9febaaebf2db8843fdf53f74fc7f903c02ddefaef71d58ee7cfcf7ff457da57db239d8fd4fbdaa6f27a7a06e176322ff1137fe9f5a6fd4ed23fadf307805b651f154e93733908ec7a5dd69c18cd44eaf7b7cfb3bb65629bca9b835683c29c6fcb32711b7ea28dd609a97735b896ba5dcff1e7f27bb9c8fffbeb181ddf1eefecfdd33a7f00b85539b8cca4b5aedf4e5ecd89b1325965c70b82679a9cede4b74ed42938b275aaffaaab767e5a57ad9b0faad2be5970cdeb97653b26ff685b1b3467e89f9ad6f9db6d01608fc75f71552646a1fbcbb6a5724aec64da732cafb68f0f2e0d516daf3838a47da66d6c7059525fdbe625d1c46ffbe4ecfdd33a7fbb2d00ec9105974c523a91f9897b59ef26eb34f9157e8aee9918a7c94cbe6db77f42b3e1b1776215b5f36bd55f43aab4be54b606815fee4513bf6debb3f74febfcedb600b0c7dbfe3d2e513bbf2818a6497c9d8c6bed532a7b6f702d65bbf2a76dcedb3f3de70f00b778f9239f7482b33f99e33ce81f0067f3f2e0e2e3a373a37f009ccdcb822b4d88e923247e597f46f40f80b3e2e9f00080a1105c0080a1105c0080a164f771613ccbd7ce832f50acbfa7badaf975763c5f74533b9e87f61fc7e1e0bae5fea97b92c959ea70cbd7b6d30dbb3ab127f95327b6f722e55f54d8ee7f350784def36503237ab245c9f6d862fb45895a70a914603706d7a3fab7b77e35b5fe7948fbef9cd46ae3236227ce7b1c5fbcfafd79ab7b8c0fdaffef1a3eb8e4f86b70f54d4a113fa92d03d70cf41400c1e08dda607de2842d73ffc469fb677a23ee7bf38a3307d7adf56bf5cfbddb3f3a5eafde368c26cea3c77f54ff3d9aafbfb875fcd3fe7fcf35b8e60e493f55e46feaa5b3969f3ad64193268965b9e12612e934bbad76a24e2cd9f18265256990d9e31ab70c944d70a5f2f33749f46612d1e09cea72ddff5ace52e783c1e5db27eb83ca1b2a6d17ac3fdabf629a4c663b7e22eda95f4dab7f1ed1fea5766ca94d5e59fb9936ec39fed1fe936de4bcecb64b5b057db1a77f8e3a3a3e2cdaffef79ebbfc765f949ad742e517da365ebf948b9daa6f70d2ed56ab768fd3dfa37bde94db9fe75cd9efa455afd73eff68fceb757a90d7d7bf5fcc4ef5f1fe9bfb4fd03df9f4744edbd677c58b4ffdf937d5468dfd8eb1b3f5eafcb9a1d633ad2ef5f1b283da6f2e64949ced70d9a3dfcb9f941ada2fa46cb6cfb493bc8faa8fd4aa2f648e714d4b135a0a3f547fb37da362ab3644ffd2269db4affdcabfdd3c4a26e9c34a2360cdb2f783f948e7fb4ffc423df9f5359eefc4567ff1e1d1fd63bb6ff5f570e2ed368ebfa7830553ba6f266cf8e2703c11f2f0d0e3b78d681920671b64ef54d9c9e1f34a5738fea1bbe31ccc04e65a7bae5c7a869bd71ac563b47eb8ff6efb66fd4fdeb1769f5cfbddadfb6453aa66bb31eadf1b12c6b4c54f6f867787f3ed2d1f161d1fe7fcfe3afb81a834df7976d4be594d8ceec39568daf5b3c30659b7c608a9e37866c73f9dab65f49f4262869d53d5a7fb47fa36df7d853bf48ab7f1ed1fe519bf5e8191f22f5d35ca7d6f18ff69fe879cfe8feb26da99c88f645163ca273f23d3a3eac776cffbf2e0b2e69246d48ed38db5869bd1b78b6b37559b6aed131d300b876ca93ff1e57aa5ffa73fad3317d3df48dd7aabf2ef7c7f6033bbdbe5c0e4d9c25ad768ed6dfa37fed78d96b4ffd22adfe7944fb476db14ed0e5f11b8e0fd7fe692c9b89bd75fc7bf45f342ebc23efcf237ac707edff9edefaef714d8342cf7d3b305af54f03d5ae17f3f96c26cea59dee135c9b76f7c76fac9fb639d6bfe131ccfa9a56fd7ad4ceff5eed9fd52d6c9ff2c4591b1f695f3bfea46cf38358cff1cffefe3c428f7b24b868ffbfebe58f7cea1da0009e8ff7e76bd1feb1970757ed521ac06bf1fe7c2dda3ff6b2e04a1d922e9fb797f8005e8bf7e76bd1fe753c1d1e003014820b003014820b003094ec3e2e00e715dd748d71d07ff77338b86eb97fea9ee4979852875bbe36babdcf23bfc767b98762599fffa2b47d1fd7fa7a2a4feefbe8bb8f48acbfa05dbdb2ad9fed68fd6bfd77b47fb665e7e5f768dd67e4f989efddc7c75147db8ffe7b9de1834b8ebf06577f28787ed25a26263310d3400b7e628ada609a18e58e775be60dc1557923fc7547eadfeabfa3fda3e5dbf7cf3491edff1658ef7b289cf8de787c1c75aff6a3ff9eef1a5cf627c7fc4dbbfda9727d53a6465f961b6ea2900eb5db6a07ebc4911d2f58569206813daed13388bc4d70a5f2f349289aac4439b8aefb5fcb59ea7cc7e05acf45cad4bae765d7da5f4d93edccbca9a2bada375e6fff95caef51ab7f4babff8ef64fd83e3bc6af559bf8b2f6736df8eee3e3a823e3cba2ffb6e53f1a7f8f6be627add2b944f58d96ade723e56a9bf64f8ca2d61eda7eb6ff7cffd4da5fd6a74167cab7af9b03bb637cd4caef51ab7f4b695fedaba3fd13b68f6bdf5e7a4ed1725b07dbfef2bad63eef303e8eaab5df1e72def4dff6f523651f15da37eefac68ed7eb3239d9a8d384afa8df3f6a287b3e2d5379f3a423e76b8eb5973fb7522744f58d96d9f6937690f551fbd52c03d3d0f609079e2bbfd6fed1b9d8736e0d6c796dcbf7dbb7cad76535b5fab7b4faef68ff44ed938e79c3180cc74fd47e51fb17dae7af8f8f69ffbceec98ef63f32be2cfa6f5bbe2e7b947270b94a4cebb7958d3a4da58a5712383b9e54da1f2f3584edd8b551d22491ad53b7359cef88d2b947f50d076e3648ae65a7ba6d3bbba6d67edd03bbb4ffa66dd5dc1f1d037b3ade5c4737685be56b9935adf153d3eabfa3fda3ed93d5edc6736d8d9f655934b1bcf1f838eac8f8b2e8bf6df95ae6a33cfe8aab3130747fd9b6544e493ac7b9a18f0e425f37df89eb3679678b9e812bdbecf97b5062f7c076c7acef5f3f979e812da67a5dc78bac33c76a95dfe3489fb6faef68ff44ed73ab9ef123527b983abdf3f8d0bedc4c9ceef83547c69745ffade53e4b165c72927a725a31db2169bdab98ef0cab67604c9d710d2dfe1ed7467d606e079eed3fd16a7fbfbd67d74ff5d9d65f07f4d7655baf56f92d3de3a7a4d57f47fb276affc83ac196c7b79cd766fcb8f75f6a67d7feef3e3e8eea195ff4df39fb8fbfc7b5d46f3b305bf54f1d67d78bf97c3613e3d24e3b83cb95bfbc117cbb0bd786adf66f95b1691f79ed07b696d133365cf92db5faf7a8f5dfd1fed1ed8f04576dfca47d6dfbcbb9cb78377578f7f17154cff8a2ffced97f2f7fe49356be35012047bba186f13136faafeee5c1957e6a08d21c750c6cd4303ec646ffd5bd2cb8d6cbe4ed2538da18d8a8617c8c8dfeabe3e9f00080a1105c0080a1105c0080a164f7710135e9f603be4803e0c50e07d72df74fdd937cc943eab0f79799a5f3d67b23fc7d3e62baa763bdcf67fd82c9aa7a1f869bf46bfbf738ba7feb3e14cf07d7d1e3c38e13bea404f41a3eb8e4f86b70edbcb93798a47579777015267a9d90364166b6afeddfe3e8feaab70fc3e0bac3f1df556a4f194fdff22fc105f4ba0697bd32c827feed55c3fae64a93d6b2dc7013b34c8876db65224fc1e08e172c2b99def4eed8b39e49b834e9ea39df3bb844dafe8e13ffd1fd552db83657659de7aff5e7ef09c5a6f39fc6d73496e3e05ade834f3c37e0ecdef6ef71a5bacec7d20954feaff5b97770e9a3638ed4d73bbabf2af5619ad44df93618e4754ffdedf84adbfbfd0be343d6fbe3dbd75a7e31b84ae3cb1cbf56fe33115cc03ed947857662ee99b885bcd9a3494ff889c2ef1f4d34f67c5aa6f2e6a095f3ddf1e65e8f7d3deee51a5cf3be521f3987a9fed70963c305975bafe76f276ebf4ed5f6ef71747f15f561d4d76170158e1f068b2bb3363ec2e39b3119961f9ddffcda6fdf2a5f97954cfbe7754fccf17bd5820bc05639b8dc2430addf4e16cde0aafc049b1d2f089e6d78ac6feef4d371b64e754e3c5a3f39c6f51cf5e9c77970e565f9c9ae563f6d2b6d9b74be6edb56fbb41cdd5f85c115d53f0a8646fd4be34b5e57f7dff4bd9ac74b47704dc79beae0ebd32a5fcb7c06820bd8e7f1575c8d8955f7976d4be594a4739c27aabd93f852bfeba49182eafaefcff7d77532ecaf7fcfc4ad75d289d2b6f7de73f68eeeaf7a832b1def4870b932ebfb6fc75abebe1d5c42eaa6fd6b8fd52abf65da3f083e77fc1e0417b04f165cf226d737b79f7897f5ee8de92733ab67629d2633f9a86eff1bd74e5472ac3dc1e78fab13d9cf83824bf8f6eb699f9aaef65d26d872fb86c1e583374daefde71f058b1d5fa275fe7e7bcfae9ffa2b3fbfb47c0eac33fe3d28550b2e6d47820d58bdeddfe35aea36d769adc7cee0d27acf96897e2ecf9e934eae3a99d7f6efd1b37f2db8d2c4edf6b7fdb084819076323f28c8fa9efa67eb5d1fb7c647ab8cecfca47ef2da079796d133765df98f16b67fa59fec0f01c03b7bf9239f74f2e04df9b7d0aff733fd80c01517a05e1e5ce94d19fc348cb1115cc7ad5794841660bd2cb8d68f997853fe4504178047e1e9f00080a1105c0080a1105c0080a1bc2cb8f81d0800e016c307d7defbb700006323b80000432906d71a2cf6e919f96373749be8aeffe9a916dfcbfab59cf9c9144bf9b68cfef2a3a73624e6c907b28d849add7679b243ba47c61d2f58060038976670d9304901300783aeb7573b69fd7c33b13edb4eaea8a647d648391a56f6114bd3eb54a679665bab7c5d56bbe25a024bcfc90453b1fc273ef20700b05fc71597b92231cfaa9b4220bf79d83ecbcf6eab8160c3222cdfeedf285f973583cb049ddf3fab4f703e0080f3b93db8ccffa37d0e0757a37c5dd60caeca15d42628ddf10000e7f3f7afb81a1ffde9feb26da91c00c079dc1e5c268474bd84c0b2fe86e04afbcf41d32a5f97a5b2ddb26c5d23b8a6805cff2e57b40d00e03c6e0eae691bb9029abe6061bf04e1b7ad05d7b2af7021532b7fddc69563cae80a2eddbfb11d00e01c8ac1f52ea28006009cd7db0757eda34600c0f9bc6d70a5c04a1f2ff2bb2d0018c9db5f710100c642700100864270010086427001008642700100864270010086427001008642700100864270010086f2df8f3e9c36788ac4f4e474d6dfba1e00707f5c71010086427001008642700100864270010086427001008642700100864270010086427001008642700100867238b83e3e3e7fbf7ffefdfefbf9fefd7cf153233ebe2ea7380f00c0e31483ebe3e3ebf7f2efdfefcff7e7b2ecf3fbe7f7dfbf9fdfef4ff3d823820b00f044e5e092e7f0fdfc5c4d41300594bcce83eb4c082e00f8fb1ac1f5fdfb7d99824a5e5fbebf527869704d5760f303662f5f9b3264bd5cb1d9edec159cf8baccfb27eb436af54aeef2355df94debb7a199ef7fe582ab587e7a40aebb7a0c9695f60700bc4633b83eaf573153f85cae13ba86493e79a7602a04970d131f0cb2de96954242b7d58f20ddf6f638697bf3da5f71f594bff928b4737f5d060078ae72702d2170bde2f9b9fc5e2ef2ff1b82cb4cf4d3efcdb6574dca06cf7ac5b56e9bafdf96d5faa8300ab6daf1bc56f90080c7ab07d71c4672a5215726a5c9bd1a5cc172355d81c955955109922cb8d2beeeef63b960a9959fd6a7f09bca08cb6bec0f0078beaee0b224c4ee115cd147755930dd105cd11554a97c5da6f5f1f5eddd1f00f05cc5e02a858e5e7dd965b705d7f4a50b0d267ddd1d5c2e58d2ba6cff7af95999d773fc9abf84b22cefdc1f00f05c3707970647f6319a30fbd4824b2c61935c83e3eb7a15d5195ce9b5fd284f96fbf595f29732b51e6e79effe0080e72a0617000067447001008642700100864270010086427001008642700100867238b86a5f277f36ff757900c0df530c2ebde1d6de6c9ceecbf2cf0724b800004f540e2eb9b997bfc7050038994670f1f7b84afb03005ea3195cfc3dae787f5d060078ae72702d2170bde2e1ef7125adf201008f570fae398ce44a43ae4c4a937b35b882e56aba0293ab2aa312245970a57ddddfcf72c1522b3fad4fe137951196d7d81f00f07c5dc1654988dd23b8a28feab260ba21b8a22ba852f9ba4cebe3ebdbbb3f00e0b98ac1550a1dbdfab2cb6e0baee94b171a4cfaba3bb85cb0a475d9fef5f2b332afe7c8dfe3028031dc1c5c1a1cd9c768c2ec530b2eb1844d720d0efe1e1700a0a1185c00009c11c10500180ac10500180ac10500180ac10500180ac10500180ac10500184a35b8b6f76a9de7e9e8d18dd0a275ef1800606cc5e05a42cbdf507c921b704b01457001c0df560eaef4d408f7d0d9d2d32c962bb2ed55905c192deb83d0cbd69be3adc79a1fb594ac8f65aa05973d8762f9e9a91bee314fc1b2d6f903009eab185ca560b01fd14da1954ff4569af44d19feb51cc386605a3f87c3fa31651c56e9d8f3ff6d58d9f3eb29df865c2adf8453ebfc0100cf570caed2246d83c1fedf9b1e4a1b5dd1947f4f96c2c8054be95985ebffafdb5daec1352f9773b2fb58767f796d83ca1fef96f307003cdecd575c51b058d90370336b1884db1482246d1f059794713d4f7dbabb0dae5af9697d0aa729887c28f59c3f00e0f9eabfe332937c5a66fed447f4519b155db1e4ebb7fb67c1d40a2e0d9aebb2743ed77f7fbebfaefb4cc76c95afcb34e8d23a13d4adf30700bc4639b8e690b213bf4cf276e24f5765958fced2f685df09d910b4aff705977c44385f31cd41f3b30457bdfcac4c73c5a6cb45edfc0100af510c2eb14cf6ca4dfa620aaf759bec0a670e1fbb3ebbaa91d058d65d8363c7dfe32a055df65164a5fca54cdd2fa85bebfc0100cf570d2e0000ce86e002000c85e002000c85e002000c85e002000c85e002000c85e002000ca51a5cd17d4ca52765bc8adc247cb67302003c4e31b834b4ce1e0a041700bc974a70e58f4cdaae9f82adfc640b5d6f9fbe913f5629baa2f3c74b8f5dd2f5e6e916fe891d0b9e6c01007f5af5a3420d8d28bc7a83cb86957fe27ce909f4ca3f2bd0bfd6655c7101c0fb687e39237bde9f098dfe2bae78bdbcae3da477bae2735768ee4f8f08820b00de4b33b854e9a1b647824b641ff9d960ecfc7b58041700bc97eee012faa7442438ee155ccbba797b0dafe88a2b427001c07bd9155ce9eac8048ffd9dd3728574637009ff3b2f5b7e893f2700c0df560caef0a33a1710f93697df2f79dd195ccb1556adfc681b17649b6d1a41070018dbae2b2e00005e8de002000c85e002000c85e002000c85e002000c85e002000c6509aef4d5f63bdf0f557a2a86b57c9dfdcec7be87e9dcda374103009e270557f349f0eee6e2689b1a7f63b175e6e012e9deb3c2f3140100cf9782abf6d8240d96cba5fed48b9a5a708d60f4f30780bfe4bfe96aaa7c45b13c52a9f1b8a69ad2c49f96573e4adc3c15632657864ba056fede97488f8dd2f5eefca3f2a3abcedee72602001eefbfdad5c4146af343751f105caab43e7b16e21c327a65b886ce1a28be1cffac43ffba755e56edaa1400f03cffd930f0ec64fdece05aafa8d6e3d9eda2f5f9b310b75749feea3295d7f9fbabb4ed8df50700dc4f0aaef0e331175467bde22a06977ea164230fb329bce67595733c527f00c0fd14afb852686413fe2a0aba9a43c1658f6db6b9e58aab46cb2b9d67ab0e0080e7a8fe8ecb7af615d7143ce58ff15ac125afed155b8fda79da8f4d0100afd3fc56a1da1b5ccb158cbd6232574dadf5220549617d4f7085c7a81dbf503fbe550800e7d1bc8feb55ec371a97652940f67f547954ef552900e0f1ba9e9cf10ae9ea29fc56e073af7ca6f3e8fbe62100e0f11efaacc2a3b61f153e39b4d2c7897c44080067b2041700002320b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b800004321b8000003f9dfefff016202ffbc42baaf5c0000000049454e44ae426082	2	3	3000.00
\.


--
-- TOC entry 4885 (class 0 OID 100099)
-- Dependencies: 220
-- Data for Name: typesiege; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.typesiege (id, val, desce) FROM stdin;
1	Economy	Standard seating
2	Business	Comfortable seating with extra legroom
3	First Class	Luxury seating with premium services
\.


--
-- TOC entry 4881 (class 0 OID 100074)
-- Dependencies: 216
-- Data for Name: utilisateur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utilisateur (id, username, password, role) FROM stdin;
1	admin	admin123	admin
2	user1	password1	client
3	user2	password2	client
\.


--
-- TOC entry 4889 (class 0 OID 100125)
-- Dependencies: 224
-- Data for Name: ville; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ville (id, val, desce) FROM stdin;
1	Paris	Capital of France
2	New York	City in the USA
3	Tokyo	Capital of Japan
\.


--
-- TOC entry 4891 (class 0 OID 100134)
-- Dependencies: 226
-- Data for Name: vol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vol (id, idavion, idvilledepart, idvillearive, datedepart, datearive, dure, statut) FROM stdin;
3	1	1	2	2025-03-14 12:00:00	2025-03-14 13:00:00	3600	1
\.


--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 217
-- Name: avion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.avion_id_seq', 3, true);


--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 233
-- Name: liaisonsiegevol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.liaisonsiegevol_id_seq', 6, true);


--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 221
-- Name: liaisontypesiegeavion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.liaisontypesiegeavion_id_seq', 3, true);


--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 231
-- Name: liaisonvolannulation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.liaisonvolannulation_id_seq', 1, true);


--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 227
-- Name: liaisonvolpromotion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.liaisonvolpromotion_id_seq', 5, true);


--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 229
-- Name: liaisonvolreservation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.liaisonvolreservation_id_seq', 1, true);


--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 236
-- Name: reservation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reservation_id_seq', 13, true);


--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 219
-- Name: typesiege_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.typesiege_id_seq', 3, true);


--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 215
-- Name: utilisateur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.utilisateur_id_seq', 3, true);


--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 223
-- Name: ville_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ville_id_seq', 3, true);


--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 225
-- Name: vol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vol_id_seq', 3, true);


--
-- TOC entry 4704 (class 2606 OID 100090)
-- Name: avion avion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avion
    ADD CONSTRAINT avion_pkey PRIMARY KEY (id);


--
-- TOC entry 4720 (class 2606 OID 108421)
-- Name: liaisonsiegevol liaisonsiegevol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisonsiegevol
    ADD CONSTRAINT liaisonsiegevol_pkey PRIMARY KEY (id);


--
-- TOC entry 4708 (class 2606 OID 100113)
-- Name: liaisontypesiegeavion liaisontypesiegeavion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisontypesiegeavion
    ADD CONSTRAINT liaisontypesiegeavion_pkey PRIMARY KEY (id);


--
-- TOC entry 4718 (class 2606 OID 100190)
-- Name: liaisonvolannulation liaisonvolannulation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisonvolannulation
    ADD CONSTRAINT liaisonvolannulation_pkey PRIMARY KEY (id);


--
-- TOC entry 4714 (class 2606 OID 100161)
-- Name: liaisonvolpromotion liaisonvolpromotion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisonvolpromotion
    ADD CONSTRAINT liaisonvolpromotion_pkey PRIMARY KEY (id);


--
-- TOC entry 4716 (class 2606 OID 100178)
-- Name: liaisonvolreservation liaisonvolreservation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisonvolreservation
    ADD CONSTRAINT liaisonvolreservation_pkey PRIMARY KEY (id);


--
-- TOC entry 4722 (class 2606 OID 108450)
-- Name: reservation reservation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_pkey PRIMARY KEY (id);


--
-- TOC entry 4706 (class 2606 OID 100106)
-- Name: typesiege typesiege_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typesiege
    ADD CONSTRAINT typesiege_pkey PRIMARY KEY (id);


--
-- TOC entry 4700 (class 2606 OID 100081)
-- Name: utilisateur utilisateur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_pkey PRIMARY KEY (id);


--
-- TOC entry 4702 (class 2606 OID 100083)
-- Name: utilisateur utilisateur_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_username_key UNIQUE (username);


--
-- TOC entry 4710 (class 2606 OID 100132)
-- Name: ville ville_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ville
    ADD CONSTRAINT ville_pkey PRIMARY KEY (id);


--
-- TOC entry 4712 (class 2606 OID 100139)
-- Name: vol vol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vol
    ADD CONSTRAINT vol_pkey PRIMARY KEY (id);


--
-- TOC entry 4732 (class 2606 OID 108422)
-- Name: liaisonsiegevol liaisonsiegevol_idtypesiege_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisonsiegevol
    ADD CONSTRAINT liaisonsiegevol_idtypesiege_fkey FOREIGN KEY (idtypesiege) REFERENCES public.typesiege(id) ON DELETE CASCADE;


--
-- TOC entry 4733 (class 2606 OID 108427)
-- Name: liaisonsiegevol liaisonsiegevol_idvol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisonsiegevol
    ADD CONSTRAINT liaisonsiegevol_idvol_fkey FOREIGN KEY (idvol) REFERENCES public.vol(id) ON DELETE CASCADE;


--
-- TOC entry 4723 (class 2606 OID 100119)
-- Name: liaisontypesiegeavion liaisontypesiegeavion_idavion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisontypesiegeavion
    ADD CONSTRAINT liaisontypesiegeavion_idavion_fkey FOREIGN KEY (idavion) REFERENCES public.avion(id) ON DELETE CASCADE;


--
-- TOC entry 4724 (class 2606 OID 100114)
-- Name: liaisontypesiegeavion liaisontypesiegeavion_idtypesiege_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisontypesiegeavion
    ADD CONSTRAINT liaisontypesiegeavion_idtypesiege_fkey FOREIGN KEY (idtypesiege) REFERENCES public.typesiege(id) ON DELETE CASCADE;


--
-- TOC entry 4731 (class 2606 OID 100191)
-- Name: liaisonvolannulation liaisonvolannulation_idvol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisonvolannulation
    ADD CONSTRAINT liaisonvolannulation_idvol_fkey FOREIGN KEY (idvol) REFERENCES public.vol(id) ON DELETE CASCADE;


--
-- TOC entry 4728 (class 2606 OID 100167)
-- Name: liaisonvolpromotion liaisonvolpromotion_idtypesiege_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisonvolpromotion
    ADD CONSTRAINT liaisonvolpromotion_idtypesiege_fkey FOREIGN KEY (idtypesiege) REFERENCES public.typesiege(id) ON DELETE CASCADE;


--
-- TOC entry 4729 (class 2606 OID 100162)
-- Name: liaisonvolpromotion liaisonvolpromotion_idvol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisonvolpromotion
    ADD CONSTRAINT liaisonvolpromotion_idvol_fkey FOREIGN KEY (idvol) REFERENCES public.vol(id) ON DELETE CASCADE;


--
-- TOC entry 4730 (class 2606 OID 100179)
-- Name: liaisonvolreservation liaisonvolreservation_idvol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liaisonvolreservation
    ADD CONSTRAINT liaisonvolreservation_idvol_fkey FOREIGN KEY (idvol) REFERENCES public.vol(id) ON DELETE CASCADE;


--
-- TOC entry 4734 (class 2606 OID 108451)
-- Name: reservation reservation_idutilisateur_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_idutilisateur_fkey FOREIGN KEY (idutilisateur) REFERENCES public.utilisateur(id) ON DELETE CASCADE;


--
-- TOC entry 4735 (class 2606 OID 108456)
-- Name: reservation reservation_idvol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_idvol_fkey FOREIGN KEY (idvol) REFERENCES public.vol(id) ON DELETE CASCADE;


--
-- TOC entry 4725 (class 2606 OID 100140)
-- Name: vol vol_idavion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vol
    ADD CONSTRAINT vol_idavion_fkey FOREIGN KEY (idavion) REFERENCES public.avion(id) ON DELETE CASCADE;


--
-- TOC entry 4726 (class 2606 OID 100150)
-- Name: vol vol_idvillearive_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vol
    ADD CONSTRAINT vol_idvillearive_fkey FOREIGN KEY (idvillearive) REFERENCES public.ville(id) ON DELETE CASCADE;


--
-- TOC entry 4727 (class 2606 OID 100145)
-- Name: vol vol_idvilledepart_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vol
    ADD CONSTRAINT vol_idvilledepart_fkey FOREIGN KEY (idvilledepart) REFERENCES public.ville(id) ON DELETE CASCADE;


-- Completed on 2025-04-02 15:16:30

--
-- PostgreSQL database dump complete
--

