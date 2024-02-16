--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Homebrew)
-- Dumped by pg_dump version 14.11 (Homebrew)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ivanvoronov
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ivanvoronov;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ivanvoronov
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO ivanvoronov;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivanvoronov
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ivanvoronov
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ivanvoronov;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ivanvoronov
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO ivanvoronov;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivanvoronov
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ivanvoronov
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ivanvoronov;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ivanvoronov
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO ivanvoronov;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivanvoronov
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ivanvoronov
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO ivanvoronov;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ivanvoronov
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO ivanvoronov;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ivanvoronov
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO ivanvoronov;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivanvoronov
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ivanvoronov
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO ivanvoronov;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivanvoronov
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ivanvoronov
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO ivanvoronov;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ivanvoronov
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO ivanvoronov;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivanvoronov
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ivanvoronov
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO ivanvoronov;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ivanvoronov
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO ivanvoronov;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivanvoronov
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ivanvoronov
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ivanvoronov;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ivanvoronov
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO ivanvoronov;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivanvoronov
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ivanvoronov
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ivanvoronov;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ivanvoronov
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO ivanvoronov;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivanvoronov
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ivanvoronov
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ivanvoronov;

--
-- Name: mailapp_emailopenevent; Type: TABLE; Schema: public; Owner: ivanvoronov
--

CREATE TABLE public.mailapp_emailopenevent (
    id integer NOT NULL,
    subscriber_id integer NOT NULL,
    mailing_id integer NOT NULL,
    opened_at timestamp with time zone NOT NULL,
    read character varying(200) NOT NULL
);


ALTER TABLE public.mailapp_emailopenevent OWNER TO ivanvoronov;

--
-- Name: mailapp_emailopenevent_id_seq; Type: SEQUENCE; Schema: public; Owner: ivanvoronov
--

CREATE SEQUENCE public.mailapp_emailopenevent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mailapp_emailopenevent_id_seq OWNER TO ivanvoronov;

--
-- Name: mailapp_emailopenevent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivanvoronov
--

ALTER SEQUENCE public.mailapp_emailopenevent_id_seq OWNED BY public.mailapp_emailopenevent.id;


--
-- Name: mailapp_mailings; Type: TABLE; Schema: public; Owner: ivanvoronov
--

CREATE TABLE public.mailapp_mailings (
    id integer NOT NULL,
    theme character varying(255) NOT NULL,
    message character varying(2000) NOT NULL
);


ALTER TABLE public.mailapp_mailings OWNER TO ivanvoronov;

--
-- Name: mailapp_mailings_id_seq; Type: SEQUENCE; Schema: public; Owner: ivanvoronov
--

CREATE SEQUENCE public.mailapp_mailings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mailapp_mailings_id_seq OWNER TO ivanvoronov;

--
-- Name: mailapp_mailings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivanvoronov
--

ALTER SEQUENCE public.mailapp_mailings_id_seq OWNED BY public.mailapp_mailings.id;


--
-- Name: mailapp_scheduledmailing; Type: TABLE; Schema: public; Owner: ivanvoronov
--

CREATE TABLE public.mailapp_scheduledmailing (
    id integer NOT NULL,
    subject character varying(200) NOT NULL,
    message_template text NOT NULL,
    schedule_date timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    identifier uuid NOT NULL
);


ALTER TABLE public.mailapp_scheduledmailing OWNER TO ivanvoronov;

--
-- Name: mailapp_scheduledmailing_id_seq; Type: SEQUENCE; Schema: public; Owner: ivanvoronov
--

CREATE SEQUENCE public.mailapp_scheduledmailing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mailapp_scheduledmailing_id_seq OWNER TO ivanvoronov;

--
-- Name: mailapp_scheduledmailing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivanvoronov
--

ALTER SEQUENCE public.mailapp_scheduledmailing_id_seq OWNED BY public.mailapp_scheduledmailing.id;


--
-- Name: mailapp_subscribers; Type: TABLE; Schema: public; Owner: ivanvoronov
--

CREATE TABLE public.mailapp_subscribers (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    birthday date NOT NULL
);


ALTER TABLE public.mailapp_subscribers OWNER TO ivanvoronov;

--
-- Name: mailapp_subscribers_id_seq; Type: SEQUENCE; Schema: public; Owner: ivanvoronov
--

CREATE SEQUENCE public.mailapp_subscribers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mailapp_subscribers_id_seq OWNER TO ivanvoronov;

--
-- Name: mailapp_subscribers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivanvoronov
--

ALTER SEQUENCE public.mailapp_subscribers_id_seq OWNED BY public.mailapp_subscribers.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: mailapp_emailopenevent id; Type: DEFAULT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.mailapp_emailopenevent ALTER COLUMN id SET DEFAULT nextval('public.mailapp_emailopenevent_id_seq'::regclass);


--
-- Name: mailapp_mailings id; Type: DEFAULT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.mailapp_mailings ALTER COLUMN id SET DEFAULT nextval('public.mailapp_mailings_id_seq'::regclass);


--
-- Name: mailapp_scheduledmailing id; Type: DEFAULT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.mailapp_scheduledmailing ALTER COLUMN id SET DEFAULT nextval('public.mailapp_scheduledmailing_id_seq'::regclass);


--
-- Name: mailapp_subscribers id; Type: DEFAULT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.mailapp_subscribers ALTER COLUMN id SET DEFAULT nextval('public.mailapp_subscribers_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ivanvoronov
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ivanvoronov
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ivanvoronov
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add subscribers	1	add_subscribers
2	Can change subscribers	1	change_subscribers
3	Can delete subscribers	1	delete_subscribers
4	Can add mailings	2	add_mailings
5	Can change mailings	2	change_mailings
6	Can delete mailings	2	delete_mailings
7	Can add log entry	3	add_logentry
8	Can change log entry	3	change_logentry
9	Can delete log entry	3	delete_logentry
10	Can add permission	4	add_permission
11	Can change permission	4	change_permission
12	Can delete permission	4	delete_permission
13	Can add group	5	add_group
14	Can change group	5	change_group
15	Can delete group	5	delete_group
16	Can add user	6	add_user
17	Can change user	6	change_user
18	Can delete user	6	delete_user
19	Can add content type	7	add_contenttype
20	Can change content type	7	change_contenttype
21	Can delete content type	7	delete_contenttype
22	Can add session	8	add_session
23	Can change session	8	change_session
24	Can delete session	8	delete_session
25	Can add scheduled mailing	9	add_scheduledmailing
26	Can change scheduled mailing	9	change_scheduledmailing
27	Can delete scheduled mailing	9	delete_scheduledmailing
28	Can add email open event	10	add_emailopenevent
29	Can change email open event	10	change_emailopenevent
30	Can delete email open event	10	delete_emailopenevent
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ivanvoronov
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$24000$oIrGdPk268aP$yVBTQVpRUcxRBsGz1kS1dCjUJXj1ZzwKe6jNj3hekPE=	2024-02-14 17:28:12.472462+03	t	admin				t	t	2024-02-12 20:07:04.929944+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ivanvoronov
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ivanvoronov
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ivanvoronov
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2024-02-12 20:09:09.822049+03	1	morkovka133192@mail.ru	1	Добавлено.	1	1
2	2024-02-12 20:09:28.361549+03	2	iivoronov@kmt23.ru	1	Добавлено.	1	1
3	2024-02-14 00:52:25.815379+03	10	delayed	3		9	1
4	2024-02-14 00:52:25.825655+03	9	delayed	3		9	1
5	2024-02-14 00:52:25.82835+03	8	delayed	3		9	1
6	2024-02-14 00:52:25.829656+03	7	delayed	3		9	1
7	2024-02-14 00:52:25.830843+03	6	delayed	3		9	1
8	2024-02-14 00:52:25.832761+03	5	delayed	3		9	1
9	2024-02-14 00:53:12.061628+03	11	delayed	3		9	1
10	2024-02-14 00:56:19.470279+03	14	delayed	3		9	1
11	2024-02-14 00:56:19.472592+03	13	delayed	3		9	1
12	2024-02-14 00:56:19.473892+03	12	delayed	3		9	1
13	2024-02-14 02:26:48.163508+03	42	delayed	3		9	1
14	2024-02-14 02:26:48.169626+03	41	delayed	3		9	1
15	2024-02-14 02:26:48.171782+03	40	delayed	3		9	1
16	2024-02-14 02:26:48.174245+03	39	delayed	3		9	1
17	2024-02-14 02:26:48.176432+03	38	delayed	3		9	1
18	2024-02-14 02:26:48.178656+03	37	delayed	3		9	1
19	2024-02-14 02:26:48.18118+03	36	delayed	3		9	1
20	2024-02-14 02:26:48.183487+03	35	delayed	3		9	1
21	2024-02-15 19:32:12.597172+03	63	delayed	3		9	1
22	2024-02-15 19:32:12.604261+03	62	delayed	3		9	1
23	2024-02-15 19:32:12.606319+03	61	delayed	3		9	1
24	2024-02-15 19:32:12.608485+03	60	delayed	3		9	1
25	2024-02-15 19:32:12.610553+03	59	delayed	3		9	1
26	2024-02-15 19:32:12.612819+03	58	delayed	3		9	1
27	2024-02-15 19:32:12.615071+03	57	delayed	3		9	1
28	2024-02-15 19:32:12.617592+03	56	delayed	3		9	1
29	2024-02-15 19:32:12.619152+03	55	delayed	3		9	1
30	2024-02-15 19:32:12.620163+03	54	delayed	3		9	1
31	2024-02-15 19:32:12.62113+03	53	delayed	3		9	1
32	2024-02-15 19:32:12.622161+03	52	delayed	3		9	1
33	2024-02-15 19:32:12.624065+03	51	delayed	3		9	1
34	2024-02-15 19:32:12.626319+03	50	delayed	3		9	1
35	2024-02-15 20:02:51.124494+03	69	delayed	3		9	1
36	2024-02-15 20:02:51.126958+03	68	delayed	3		9	1
37	2024-02-15 20:02:51.128411+03	67	delayed	3		9	1
38	2024-02-15 20:02:51.129999+03	66	delayed	3		9	1
39	2024-02-15 20:02:51.131266+03	65	delayed	3		9	1
40	2024-02-15 20:02:51.132738+03	64	delayed	3		9	1
41	2024-02-15 20:05:02.701863+03	70	delayed	3		9	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ivanvoronov
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	mailapp	subscribers
2	mailapp	mailings
3	admin	logentry
4	auth	permission
5	auth	group
6	auth	user
7	contenttypes	contenttype
8	sessions	session
9	mailapp	scheduledmailing
10	mailapp	emailopenevent
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ivanvoronov
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-02-12 20:04:56.221223+03
2	auth	0001_initial	2024-02-12 20:04:56.282359+03
3	admin	0001_initial	2024-02-12 20:04:56.300052+03
4	admin	0002_logentry_remove_auto_add	2024-02-12 20:04:56.309596+03
5	contenttypes	0002_remove_content_type_name	2024-02-12 20:04:56.32986+03
6	auth	0002_alter_permission_name_max_length	2024-02-12 20:04:56.337346+03
7	auth	0003_alter_user_email_max_length	2024-02-12 20:04:56.345082+03
8	auth	0004_alter_user_username_opts	2024-02-12 20:04:56.364424+03
9	auth	0005_alter_user_last_login_null	2024-02-12 20:04:56.372743+03
10	auth	0006_require_contenttypes_0002	2024-02-12 20:04:56.375779+03
11	auth	0007_alter_validators_add_error_messages	2024-02-12 20:04:56.386373+03
12	sessions	0001_initial	2024-02-12 20:04:56.39687+03
13	mailapp	0001_initial	2024-02-12 20:08:46.894668+03
14	mailapp	0002_scheduledmailing	2024-02-13 21:38:36.458392+03
15	mailapp	0003_scheduledmailing_sent	2024-02-14 00:26:16.23787+03
16	mailapp	0004_auto_20240214_0126	2024-02-14 01:26:11.746343+03
17	mailapp	0005_emailopenevent	2024-02-15 17:51:16.486294+03
18	mailapp	0006_emailopenevent_read	2024-02-15 19:45:48.827026+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ivanvoronov
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
sdfylto030e0uz5dy0fllwm1gc6hnvin	MWQ0NWZlZTY5ZjAzOWYxNmNiODhmMTkxZWU3ODRkMTRkMDQzMjFmOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjViNWYxMjEzM2NjMWFhMDRkYmYyOGYyMGJiNTFkMjFkYmMwZjE3OWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2024-02-26 20:07:24.914804+03
1s2oyu3hu930hmuz16c71qmu1m2a3g8g	MWQ0NWZlZTY5ZjAzOWYxNmNiODhmMTkxZWU3ODRkMTRkMDQzMjFmOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjViNWYxMjEzM2NjMWFhMDRkYmYyOGYyMGJiNTFkMjFkYmMwZjE3OWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2024-02-28 17:28:12.475668+03
\.


--
-- Data for Name: mailapp_emailopenevent; Type: TABLE DATA; Schema: public; Owner: ivanvoronov
--

COPY public.mailapp_emailopenevent (id, subscriber_id, mailing_id, opened_at, read) FROM stdin;
\.


--
-- Data for Name: mailapp_mailings; Type: TABLE DATA; Schema: public; Owner: ivanvoronov
--

COPY public.mailapp_mailings (id, theme, message) FROM stdin;
1	ВАААУ	ВААААУ
2	вторая	вторая
3	3333333	3333333
4	proba3	proba3
5	Привет	Привет это mail_service
6	vfdvfdvfd	vfdvfdvdfvdf
\.


--
-- Data for Name: mailapp_scheduledmailing; Type: TABLE DATA; Schema: public; Owner: ivanvoronov
--

COPY public.mailapp_scheduledmailing (id, subject, message_template, schedule_date, created_at, identifier) FROM stdin;
71	13 45	13 45	2024-02-14 13:45:00+03	2024-02-15 20:08:53.328321+03	76416365-15f9-41ca-815a-336ccfcad596
\.


--
-- Data for Name: mailapp_subscribers; Type: TABLE DATA; Schema: public; Owner: ivanvoronov
--

COPY public.mailapp_subscribers (id, email, first_name, last_name, birthday) FROM stdin;
1	morkovka133192@mail.ru	ivan	Voron	2024-02-12
2	iivoronov@kmt23.ru	Ivan	Vorw	2024-02-12
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivanvoronov
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivanvoronov
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivanvoronov
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 30, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivanvoronov
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivanvoronov
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivanvoronov
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivanvoronov
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 41, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivanvoronov
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivanvoronov
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- Name: mailapp_emailopenevent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivanvoronov
--

SELECT pg_catalog.setval('public.mailapp_emailopenevent_id_seq', 1, false);


--
-- Name: mailapp_mailings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivanvoronov
--

SELECT pg_catalog.setval('public.mailapp_mailings_id_seq', 6, true);


--
-- Name: mailapp_scheduledmailing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivanvoronov
--

SELECT pg_catalog.setval('public.mailapp_scheduledmailing_id_seq', 71, true);


--
-- Name: mailapp_subscribers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivanvoronov
--

SELECT pg_catalog.setval('public.mailapp_subscribers_id_seq', 2, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: mailapp_emailopenevent mailapp_emailopenevent_pkey; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.mailapp_emailopenevent
    ADD CONSTRAINT mailapp_emailopenevent_pkey PRIMARY KEY (id);


--
-- Name: mailapp_mailings mailapp_mailings_pkey; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.mailapp_mailings
    ADD CONSTRAINT mailapp_mailings_pkey PRIMARY KEY (id);


--
-- Name: mailapp_scheduledmailing mailapp_scheduledmailing_identifier_key; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.mailapp_scheduledmailing
    ADD CONSTRAINT mailapp_scheduledmailing_identifier_key UNIQUE (identifier);


--
-- Name: mailapp_scheduledmailing mailapp_scheduledmailing_pkey; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.mailapp_scheduledmailing
    ADD CONSTRAINT mailapp_scheduledmailing_pkey PRIMARY KEY (id);


--
-- Name: mailapp_subscribers mailapp_subscribers_pkey; Type: CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.mailapp_subscribers
    ADD CONSTRAINT mailapp_subscribers_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ivanvoronov
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: ivanvoronov
--

CREATE INDEX auth_group_permissions_0e939a4f ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: ivanvoronov
--

CREATE INDEX auth_group_permissions_8373b171 ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: ivanvoronov
--

CREATE INDEX auth_permission_417f1b1c ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: ivanvoronov
--

CREATE INDEX auth_user_groups_0e939a4f ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: ivanvoronov
--

CREATE INDEX auth_user_groups_e8701ad4 ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: ivanvoronov
--

CREATE INDEX auth_user_user_permissions_8373b171 ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: ivanvoronov
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ivanvoronov
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: ivanvoronov
--

CREATE INDEX django_admin_log_417f1b1c ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: ivanvoronov
--

CREATE INDEX django_admin_log_e8701ad4 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: ivanvoronov
--

CREATE INDEX django_session_de54fa62 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ivanvoronov
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ivanvoronov
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

