--
-- PostgreSQL database dump
--

-- Dumped from database version 14.17 (Ubuntu 14.17-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.17 (Ubuntu 14.17-0ubuntu0.22.04.1)

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
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO heidless;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO heidless;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO heidless;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO heidless;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO heidless;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO heidless;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO heidless;

--
-- Name: images; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.images (
    id bigint NOT NULL,
    name character varying,
    picture character varying,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.images OWNER TO heidless;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO heidless;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.payments (
    id bigint NOT NULL,
    email character varying,
    token character varying,
    user_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.payments OWNER TO heidless;

--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payments_id_seq OWNER TO heidless;

--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO heidless;

--
-- Name: users; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    confirmation_token character varying,
    confirmed_at timestamp(6) without time zone,
    confirmation_sent_at timestamp(6) without time zone,
    unconfirmed_email character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    avatar character varying,
    username character varying
);


ALTER TABLE public.users OWNER TO heidless;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO heidless;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: images id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	images	User	1	1	2025-03-30 19:33:06.65874
2	images	User	1	2	2025-03-30 19:33:06.71862
3	images	User	1	3	2025-03-30 19:33:06.726968
4	images	User	1	4	2025-03-30 19:33:06.734181
5	images	User	1	5	2025-03-30 19:33:06.741086
6	avatar	User	1	6	2025-03-30 19:33:06.799678
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	kds4hoz6ejo2inbogozlxblgmii5	property_2.png	image/png	{"identified":true,"width":1500,"height":1000,"analyzed":true}	local	2113693	oUEIILPnDfz7ViYG42PK2w==	2025-03-30 19:33:06.655077
6	4w9sbwabjmlocguj1denaldx7th4	property_19.png	image/png	{"identified":true,"width":1500,"height":1000,"analyzed":true}	local	1495827	5zDGqYfI1JHpmCuRDUjUdw==	2025-03-30 19:33:06.796941
2	3yyk800bsn74djvmb00kvkz9tszf	property_9.png	image/png	{"identified":true,"width":1500,"height":1000,"analyzed":true}	local	2297748	mCU3KgElM4GLTNVQ+UY4lQ==	2025-03-30 19:33:06.715594
3	2zqisq1hqnqkolqfwu9x0j4zfeub	property_10.png	image/png	{"identified":true,"width":1499,"height":999,"analyzed":true}	local	2389480	6y9ZyPMeZY2duX7z+zw9RA==	2025-03-30 19:33:06.72288
5	j3b6dcxcjdf5hlkyd52upfzdnz94	property_26.png	image/png	{"identified":true,"width":1500,"height":997,"analyzed":true}	local	2775459	z8BHgBInqI4FdHH5ymKkfA==	2025-03-30 19:33:06.738074
4	dq7tjiwqupr9512him5mr37gchu3	property_25.png	image/png	{"identified":true,"width":1500,"height":998,"analyzed":true}	local	3398322	I+C+PGDJSx5m1uTfJC1l9Q==	2025-03-30 19:33:06.730467
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2025-03-30 19:29:23.874392	2025-03-30 19:29:23.874396
schema_sha1	1896e375383cfb05dc466ced192a3d5df706166b	2025-03-30 19:29:23.879869	2025-03-30 19:29:23.879871
\.


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.images (id, name, picture, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.payments (id, email, token, user_id, created_at, updated_at) FROM stdin;
1	jsnow@test.com	\N	1	2025-03-30 19:33:08.679236	2025-03-30 19:33:08.679236
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.schema_migrations (version) FROM stdin;
20250330120509
20250330110012
20250330104908
20250324120418
20250320120837
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email, created_at, updated_at, avatar, username) FROM stdin;
1	jsnow@test.com	$2a$12$er7LKuj1O75WljfqErEC5endnjd88M/BszNWJRBtc5y/vSkA9ykp6	\N	\N	\N	\N	\N	\N	\N	2025-03-30 19:33:06.545472	2025-03-30 19:33:10.479071	\N	knorth
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 6, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 6, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.images_id_seq', 1, false);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.payments_id_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: heidless
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_images_on_user_id; Type: INDEX; Schema: public; Owner: heidless
--

CREATE INDEX index_images_on_user_id ON public.images USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: images fk_rails_19cd822056; Type: FK CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT fk_rails_19cd822056 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- PostgreSQL database dump complete
--

