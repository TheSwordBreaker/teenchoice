--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)

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
-- Name: Profile_age; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public."Profile_age" (
    id integer NOT NULL,
    username character varying(200) NOT NULL,
    "Age" integer NOT NULL
);


ALTER TABLE public."Profile_age" OWNER TO dbadmi;

--
-- Name: Profile_age_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public."Profile_age_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Profile_age_id_seq" OWNER TO dbadmi;

--
-- Name: Profile_age_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public."Profile_age_id_seq" OWNED BY public."Profile_age".id;


--
-- Name: Profile_count; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public."Profile_count" (
    id integer NOT NULL,
    username character varying(200) NOT NULL,
    count integer NOT NULL
);


ALTER TABLE public."Profile_count" OWNER TO dbadmi;

--
-- Name: Profile_count_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public."Profile_count_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Profile_count_id_seq" OWNER TO dbadmi;

--
-- Name: Profile_count_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public."Profile_count_id_seq" OWNED BY public."Profile_count".id;


--
-- Name: Profile_date; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public."Profile_date" (
    id integer NOT NULL,
    "user" character varying(200) NOT NULL
);


ALTER TABLE public."Profile_date" OWNER TO dbadmi;

--
-- Name: Profile_date_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public."Profile_date_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Profile_date_id_seq" OWNER TO dbadmi;

--
-- Name: Profile_date_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public."Profile_date_id_seq" OWNED BY public."Profile_date".id;


--
-- Name: Profile_daterequest; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public."Profile_daterequest" (
    id integer NOT NULL,
    from_user character varying(200) NOT NULL,
    to_user character varying(200) NOT NULL
);


ALTER TABLE public."Profile_daterequest" OWNER TO dbadmi;

--
-- Name: Profile_daterequest_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public."Profile_daterequest_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Profile_daterequest_id_seq" OWNER TO dbadmi;

--
-- Name: Profile_daterequest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public."Profile_daterequest_id_seq" OWNED BY public."Profile_daterequest".id;


--
-- Name: Profile_friend; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public."Profile_friend" (
    id integer NOT NULL,
    "user" character varying(200) NOT NULL
);


ALTER TABLE public."Profile_friend" OWNER TO dbadmi;

--
-- Name: Profile_friend_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public."Profile_friend_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Profile_friend_id_seq" OWNER TO dbadmi;

--
-- Name: Profile_friend_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public."Profile_friend_id_seq" OWNED BY public."Profile_friend".id;


--
-- Name: Profile_friendrequest; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public."Profile_friendrequest" (
    id integer NOT NULL,
    from_user character varying(200) NOT NULL,
    to_user character varying(200) NOT NULL
);


ALTER TABLE public."Profile_friendrequest" OWNER TO dbadmi;

--
-- Name: Profile_friendrequest_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public."Profile_friendrequest_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Profile_friendrequest_id_seq" OWNER TO dbadmi;

--
-- Name: Profile_friendrequest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public."Profile_friendrequest_id_seq" OWNED BY public."Profile_friendrequest".id;


--
-- Name: Profile_notify; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public."Profile_notify" (
    id integer NOT NULL,
    from_user character varying(200) NOT NULL,
    to_user character varying(200) NOT NULL
);


ALTER TABLE public."Profile_notify" OWNER TO dbadmi;

--
-- Name: Profile_notify_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public."Profile_notify_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Profile_notify_id_seq" OWNER TO dbadmi;

--
-- Name: Profile_notify_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public."Profile_notify_id_seq" OWNED BY public."Profile_notify".id;


--
-- Name: Profile_profile; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public."Profile_profile" (
    id integer NOT NULL,
    parent_user character varying(200) NOT NULL,
    image1 character varying(100),
    image2 character varying(100),
    image3 character varying(100),
    location character varying(200),
    sex character varying(200),
    created timestamp with time zone NOT NULL,
    "Age" integer NOT NULL,
    bio character varying(500),
    intrest character varying(200)
);


ALTER TABLE public."Profile_profile" OWNER TO dbadmi;

--
-- Name: Profile_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public."Profile_profile_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Profile_profile_id_seq" OWNER TO dbadmi;

--
-- Name: Profile_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public."Profile_profile_id_seq" OWNED BY public."Profile_profile".id;


--
-- Name: Profile_que; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public."Profile_que" (
    id integer NOT NULL,
    username character varying(200) NOT NULL,
    que1 character varying(200) NOT NULL,
    que2 character varying(200) NOT NULL,
    que3 character varying(200) NOT NULL
);


ALTER TABLE public."Profile_que" OWNER TO dbadmi;

--
-- Name: Profile_que_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public."Profile_que_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Profile_que_id_seq" OWNER TO dbadmi;

--
-- Name: Profile_que_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public."Profile_que_id_seq" OWNED BY public."Profile_que".id;


--
-- Name: Profile_reject; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public."Profile_reject" (
    id integer NOT NULL,
    from_user character varying(200) NOT NULL,
    to_user character varying(200) NOT NULL
);


ALTER TABLE public."Profile_reject" OWNER TO dbadmi;

--
-- Name: Profile_reject_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public."Profile_reject_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Profile_reject_id_seq" OWNER TO dbadmi;

--
-- Name: Profile_reject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public."Profile_reject_id_seq" OWNED BY public."Profile_reject".id;


--
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO dbadmi;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO dbadmi;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO dbadmi;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO dbadmi;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO dbadmi;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO dbadmi;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO dbadmi;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO dbadmi;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO dbadmi;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO dbadmi;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO dbadmi;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO dbadmi;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO dbadmi;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO dbadmi;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO dbadmi;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO dbadmi;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO dbadmi;

--
-- Name: chat_chat; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.chat_chat (
    id integer NOT NULL
);


ALTER TABLE public.chat_chat OWNER TO dbadmi;

--
-- Name: chat_chat_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.chat_chat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chat_chat_id_seq OWNER TO dbadmi;

--
-- Name: chat_chat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.chat_chat_id_seq OWNED BY public.chat_chat.id;


--
-- Name: chat_chat_messages; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.chat_chat_messages (
    id integer NOT NULL,
    chat_id integer NOT NULL,
    message_id integer NOT NULL
);


ALTER TABLE public.chat_chat_messages OWNER TO dbadmi;

--
-- Name: chat_chat_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.chat_chat_messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chat_chat_messages_id_seq OWNER TO dbadmi;

--
-- Name: chat_chat_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.chat_chat_messages_id_seq OWNED BY public.chat_chat_messages.id;


--
-- Name: chat_chat_participants; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.chat_chat_participants (
    id integer NOT NULL,
    chat_id integer NOT NULL,
    contact_id integer NOT NULL
);


ALTER TABLE public.chat_chat_participants OWNER TO dbadmi;

--
-- Name: chat_chat_participants_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.chat_chat_participants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chat_chat_participants_id_seq OWNER TO dbadmi;

--
-- Name: chat_chat_participants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.chat_chat_participants_id_seq OWNED BY public.chat_chat_participants.id;


--
-- Name: chat_contact; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.chat_contact (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.chat_contact OWNER TO dbadmi;

--
-- Name: chat_contact_friends; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.chat_contact_friends (
    id integer NOT NULL,
    from_contact_id integer NOT NULL,
    to_contact_id integer NOT NULL
);


ALTER TABLE public.chat_contact_friends OWNER TO dbadmi;

--
-- Name: chat_contact_friends_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.chat_contact_friends_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chat_contact_friends_id_seq OWNER TO dbadmi;

--
-- Name: chat_contact_friends_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.chat_contact_friends_id_seq OWNED BY public.chat_contact_friends.id;


--
-- Name: chat_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.chat_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chat_contact_id_seq OWNER TO dbadmi;

--
-- Name: chat_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.chat_contact_id_seq OWNED BY public.chat_contact.id;


--
-- Name: chat_message; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.chat_message (
    id integer NOT NULL,
    content text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    contact_id integer NOT NULL
);


ALTER TABLE public.chat_message OWNER TO dbadmi;

--
-- Name: chat_message_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.chat_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chat_message_id_seq OWNER TO dbadmi;

--
-- Name: chat_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.chat_message_id_seq OWNED BY public.chat_message.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: dbadmi
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


ALTER TABLE public.django_admin_log OWNER TO dbadmi;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO dbadmi;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO dbadmi;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO dbadmi;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO dbadmi;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO dbadmi;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO dbadmi;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO dbadmi;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO dbadmi;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: knox_authtoken; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.knox_authtoken (
    digest character varying(128) NOT NULL,
    salt character varying(16) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    expiry timestamp with time zone,
    token_key character varying(8) NOT NULL
);


ALTER TABLE public.knox_authtoken OWNER TO dbadmi;

--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO dbadmi;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO dbadmi;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO dbadmi;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO dbadmi;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO dbadmi;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO dbadmi;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: dbadmi
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO dbadmi;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: dbadmi
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO dbadmi;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmi
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: Profile_age id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_age" ALTER COLUMN id SET DEFAULT nextval('public."Profile_age_id_seq"'::regclass);


--
-- Name: Profile_count id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_count" ALTER COLUMN id SET DEFAULT nextval('public."Profile_count_id_seq"'::regclass);


--
-- Name: Profile_date id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_date" ALTER COLUMN id SET DEFAULT nextval('public."Profile_date_id_seq"'::regclass);


--
-- Name: Profile_daterequest id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_daterequest" ALTER COLUMN id SET DEFAULT nextval('public."Profile_daterequest_id_seq"'::regclass);


--
-- Name: Profile_friend id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_friend" ALTER COLUMN id SET DEFAULT nextval('public."Profile_friend_id_seq"'::regclass);


--
-- Name: Profile_friendrequest id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_friendrequest" ALTER COLUMN id SET DEFAULT nextval('public."Profile_friendrequest_id_seq"'::regclass);


--
-- Name: Profile_notify id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_notify" ALTER COLUMN id SET DEFAULT nextval('public."Profile_notify_id_seq"'::regclass);


--
-- Name: Profile_profile id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_profile" ALTER COLUMN id SET DEFAULT nextval('public."Profile_profile_id_seq"'::regclass);


--
-- Name: Profile_que id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_que" ALTER COLUMN id SET DEFAULT nextval('public."Profile_que_id_seq"'::regclass);


--
-- Name: Profile_reject id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_reject" ALTER COLUMN id SET DEFAULT nextval('public."Profile_reject_id_seq"'::regclass);


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: chat_chat id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_chat ALTER COLUMN id SET DEFAULT nextval('public.chat_chat_id_seq'::regclass);


--
-- Name: chat_chat_messages id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_chat_messages ALTER COLUMN id SET DEFAULT nextval('public.chat_chat_messages_id_seq'::regclass);


--
-- Name: chat_chat_participants id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_chat_participants ALTER COLUMN id SET DEFAULT nextval('public.chat_chat_participants_id_seq'::regclass);


--
-- Name: chat_contact id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_contact ALTER COLUMN id SET DEFAULT nextval('public.chat_contact_id_seq'::regclass);


--
-- Name: chat_contact_friends id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_contact_friends ALTER COLUMN id SET DEFAULT nextval('public.chat_contact_friends_id_seq'::regclass);


--
-- Name: chat_message id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_message ALTER COLUMN id SET DEFAULT nextval('public.chat_message_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Data for Name: Profile_age; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public."Profile_age" (id, username, "Age") FROM stdin;
23	Swati	30
24	saagarx	25
25	Raj	27
26	zeetm	41
27	Dany	50
28	hiddenplayer110	60
29	Vineet92511	20
30	aditya	25
31	Manish	21
32	Kart11	37
33	7972278932	32
34	iamdebadutta	31
35	Hrishabh	60
36	Anil@9466	0
37	Vasuchauhan	23
38	Anna	20
39	Shu219	24
40	Rahul	35
41	arif01	25
42	Abhi	44
43	akshat	23
44	harshkumar	55
45	thisisbolt	36
46	Ashish1506	60
47	Jatinchaudhari18	22
48	Joe	45
49	Sushant	0
50	Ankit	28
51	Mdleo001	60
52	shubham22	24
53	Abhigupta	24
54	Aakash	23
55	Gupta1234	25
56	JayJerson	50
57	adfs	27
58	Abhigupta102	23
59	kishan1000	25
60	Hrithik	23
61	Swapnil	24
62	Ayan	47
63	Mack	23
64	Harshnaik	26
65	redbull871	60
66	Gundavda123	22
67	Aryan	18
68	sunnyrathod	36
69	Digdigdash	39
70	Lucifer	60
71	Ninad	21
72	Pradss	40
73	Nags	24
74	Chinmay	24
75	Avengers007	35
76	sameer.pujara999	45
77	Naman	22
78	Abhi098	30
79	paras	30
80	check	19
81	mohan	25
82	9717491802	25
83	Abhi20	23
84	null	0
85	tester12	19
86	random	23
87	shubham@221	24
88	Abhiii	23
89	abhishek.tyagi	32
90	Raissa	36
91	Kunal123	11
\.


--
-- Data for Name: Profile_count; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public."Profile_count" (id, username, count) FROM stdin;
42	iraghav123	1
43	Shu219	1
45	Rahul	1
46	Abhi	1
31	Vineet92511	2
48	akshat	1
44	arif01	2
52	Joe	1
53	PDR	1
54	Satyam8893	1
28	7972278932	2
55	Sushant	1
56	Ankit	1
58	Jeet005	1
66	Abhigupta102	2
41	Anna	2
67	Fahad	1
59	Prashant	1
68	kishan1000	1
69	Rockman	1
71	Danish	1
47	Psychowholifts	2
72	Hrithik	1
61	Abhigupta	1
51	Jatinchaudhari18	2
73	Ayan	1
70	Swapnil	2
75	Sunil	1
24	zeetm	2
26	prash391	1
49	thisisbolt	2
29	sirMOKSH	1
77	redbull871	2
80	Digdigdash	1
27	hiddenplayer110	2
25	Dany	2
30	Gaurav	1
32	ankurchauhan126	1
33	Mohit@123	1
35	Manish	1
63	Gupta1234	2
36	Kart11	2
38	iamdebadutta	1
40	Vasuchauhan	1
62	Aakash	2
39	Anil@9466	2
60	shubham22	2
57	Mdleo001	2
83	Ninad	1
50	Ashish1506	2
81	sunnyrathod	2
78	Gundavda123	2
82	Lucifer	2
84	Pradss	1
23	Raj	2
85	Nags	2
86	Chinmay	1
79	Aryan	2
87	Avengers007	2
74	Mack	2
37	Hrishabh	2
65	adfs	1
76	Harshnaik	2
88	sameer.pujara999	1
90	mr.raghav17	1
91	Abhi098	2
22	saagarx	2
64	JayJerson	2
93	Ayushhh_15205	2
92	paras	2
95	mohan	1
34	aditya	2
96	9717491802	2
94	check	2
99	tester12	1
100	random	2
97	Abhi20	2
101	shubham@221	1
98	null	2
21	Swati	2
102	test	2
89	Naman	2
104	abhishek.tyagi	1
105	Raissa	1
106	Kunal	1
103	Abhiii	2
107	Kunal123	2
\.


--
-- Data for Name: Profile_date; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public."Profile_date" (id, "user") FROM stdin;
20	Vineet92511
21	Vineet92511
22	Vineet92511
23	Vineet92511
24	Manish
25	thisisbolt
26	Hrishabh
27	Hrishabh
28	Hrishabh
29	Hrishabh
30	Shu219
31	harshkumar
32	Mdleo001
33	Mdleo001
34	Anna
35	Raj
36	shubham22
37	Gupta1234
38	Swati
39	Anna
40	saagarx
41	JayJerson
42	kishan1000
43	Ninad
\.


--
-- Data for Name: Profile_daterequest; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public."Profile_daterequest" (id, from_user, to_user) FROM stdin;
71	Swati	zeetm
72	Swati	Abhigupta
74	Joe	Anna
75	Swati	Vineet92511
79	Swati	Joe
81	adfs	zeetm
82	Abhigupta102	Swati
84	Swapnil	Swati
85	Ayan	Anna
86	Harshnaik	Swati
87	sunnyrathod	Anna
88	Digdigdash	Swati
90	Pradss	Anna
91	Nags	Swati
92	sameer.pujara999	Anna
93	Naman	Swati
94	Swati	Ayan
95	Abhi098	hiddenplayer110
96	Abhi098	aditya
97	Abhi098	Kart11
98	Abhi098	7972278932
99	Abhi098	Anil@9466
100	Abhi098	Rahul
101	Abhi098	thisisbolt
102	Swati	Gundavda123
103	Swati	Hrithik
104	Swati	Hrithik
105	Swati	Abhigupta102
106	Swati	Gundavda123
107	Swati	Gundavda123
47	Rahul	Anna
108	Swati	Hrithik
49	arif01	Anna
50	Abhi	Anna
51	harshkumar	Anna
109	Swati	Hrithik
110	Swati	Gundavda123
54	Ashish1506	Anna
55	Joe	Anna
56	Ankit	Anna
111	Swati	Abhigupta102
112	Swati	zeetm
113	9717491802	Mohit@123
114	9717491802	Swapnil
115	9717491802	Anil@9466
116	9717491802	Vasuchauhan
117	9717491802	Ashish1506
118	9717491802	Sushant
119	Abhi20	Dany
120	Abhi20	Swapnil
121	Abhi20	Kart11
122	tester12	Swapnil
123	shubham@221	tester12
124	test	null
125	test	null
126	test	null
127	test	null
128	test	null
129	test	null
130	test	null
131	Abhi20	Vineet92511
132	Abhi20	Manish
133	Abhi20	Dany
134	Abhi20	Vineet92511
135	Abhi20	Dany
136	Abhi20	Dany
137	Abhi20	Dany
138	Abhi20	iamdebadutta
139	Abhi20	Dany
140	Abhi20	Dany
141	Abhi20	akshat
142	Abhi20	thisisbolt
143	Abhi20	Swapnil
144	Abhi20	Jatinchaudhari18
145	Abhi20	Anil@9466
146	Abhi20	iamdebadutta
147	Abhi20	Dany
148	Abhi20	Sushant
149	Abhi20	Vasuchauhan
150	Abhi20	Jatinchaudhari18
151	Abhi20	akshat
152	Abhi20	Dany
153	Abhi20	Aakash
154	Abhi20	Dany
155	Abhi20	Dany
156	Swati	zeetm
157	Swati	Chinmay
158	Abhi20	Ayan
159	Swati	Avengers007
160	Abhi20	Abhigupta102
161	Abhi20	Hrithik
162	Abhi20	saagarx
163	Abhi20	Naman
164	test	null
165	Abhiii	Manish
166	Swati	paras
167	Naman	tester12
168	Abhiii	Dany
169	Abhiii	Dany
170	abhishek.tyagi	Anna
171	Raissa	hiddenplayer110
172	Abhiii	Anil@9466
173	Abhiii	thisisbolt
174	Abhiii	akshat
\.


--
-- Data for Name: Profile_friend; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public."Profile_friend" (id, "user") FROM stdin;
5	hiddenplayer110
6	hiddenplayer110
7	hiddenplayer110
8	hiddenplayer110
9	Vineet92511
10	7972278932
11	Vasuchauhan
12	Jatinchaudhari18
13	Ankit
14	Mdleo001
15	Hrishabh
16	Hrishabh
17	harshkumar
18	harshkumar
19	thisisbolt
20	thisisbolt
21	Joe
22	Joe
23	Raj
24	Swati
25	Anna
26	Abhigupta102
27	Mack
28	Mack
29	Mack
30	redbull871
31	sunnyrathod
32	Lucifer
\.


--
-- Data for Name: Profile_friendrequest; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public."Profile_friendrequest" (id, from_user, to_user) FROM stdin;
89	harshkumar	Anna
96	Swati	hiddenplayer110
97	Swati	Dany
98	Swati	Kart11
99	Swati	iamdebadutta
100	Swati	Anil@9466
101	Swati	Abhi
102	Swati	Sushant
103	Swati	aditya
105	Swati	Hrishabh
106	Gupta1234	Anna
107	Swati	Aakash
109	Swati	Gupta1234
110	JayJerson	Anna
112	kishan1000	Anna
115	sunnyrathod	Anna
118	Avengers007	Anna
119	Swati	Swapnil
120	Abhi098	Dany
121	Abhi098	Mohit@123
122	Abhi098	Manish
123	Abhi098	iamdebadutta
124	Abhi098	Vasuchauhan
125	Abhi098	Abhi
126	Abhi098	Ashish1506
127	paras	Anna
128	mohan	Swati
129	9717491802	Vineet92511
130	9717491802	Kart11
131	9717491802	iamdebadutta
132	9717491802	Shu219
133	9717491802	harshkumar
134	9717491802	Joe
135	9717491802	Mdleo001
136	Abhi20	Manish
137	test	Swapnil
138	test	null
139	test	null
140	test	null
141	test	null
142	test	null
143	test	null
144	test	null
145	Abhi20	iamdebadutta
146	Abhi20	Dany
147	Abhi20	iamdebadutta
148	Abhi20	Vineet92511
149	Abhi20	Shu219
150	Abhi20	Dany
151	Abhi20	iamdebadutta
152	Abhi20	Anil@9466
153	Abhi20	Dany
154	Abhi20	Vasuchauhan
155	Abhi20	Anil@9466
156	Abhi20	Anil@9466
157	Abhi20	Ashish1506
158	Abhi20	iamdebadutta
159	Abhi20	Swapnil
160	Abhi20	Dany
161	Abhi20	thisisbolt
162	Abhi20	Dany
163	Abhi20	Manish
164	Abhi20	Dany
165	Abhi20	Kart11
166	Abhi20	Mdleo001
167	Abhi20	Dany
168	Abhi20	Abhigupta
169	Abhi20	Dany
170	Abhi20	Swapnil
171	Abhi20	adfs
172	Swati	Pradss
173	Swati	Nags
174	Abhi20	Raj
175	Abhi20	Aryan
176	Abhi20	Ninad
177	Abhi20	paras
178	Abhi20	test
179	test	null
180	test	null
181	Abhiii	Dany
182	Abhiii	Swapnil
183	Abhiii	Dany
184	Abhiii	Manish
185	Abhiii	Vasuchauhan
186	abhishek.tyagi	tester12
187	Abhiii	Shu219
188	Abhiii	Dany
189	Kunal123	Swapnil
\.


--
-- Data for Name: Profile_notify; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public."Profile_notify" (id, from_user, to_user) FROM stdin;
40	Swati	hiddenplayer110
41	Swati	hiddenplayer110
42	Swati	Vineet92511
43	Swati	Vineet92511
44	Swati	Vineet92511
45	Swati	7972278932
46	Swati	Vasuchauhan
47	Swati	Jatinchaudhari18
48	Swati	Ankit
49	Swati	Mdleo001
50	Swati	Manish
51	Swati	thisisbolt
52	Swati	Hrishabh
53	Swati	Hrishabh
54	Swati	Shu219
55	Swati	harshkumar
56	Anna	Hrishabh
57	Anna	harshkumar
58	Anna	thisisbolt
60	Anna	Mdleo001
62	Swati	Raj
63	Swati	Raj
67	Anna	Gupta1234
69	Swati	Abhigupta102
70	Swati	Mack
71	Swati	Mack
72	Swati	Mack
73	Swati	Anna
74	Swati	saagarx
75	Swati	redbull871
76	Swati	sunnyrathod
77	Swati	Lucifer
78	Swati	JayJerson
79	Swati	Abhigupta102
80	Swati	kishan1000
81	Swati	Ninad
82	test	Abhi20
83	test	Abhi20
84	test	Abhi20
85	Naman	Abhi20
86	Naman	Abhi20
87	Naman	Abhi20
88	Naman	Abhi20
89	Naman	Abhi20
\.


--
-- Data for Name: Profile_profile; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public."Profile_profile" (id, parent_user, image1, image2, image3, location, sex, created, "Age", bio, intrest) FROM stdin;
43	zeetm	WhatsApp_Image_2019-09-06_at_23.27.06.jpeg	80211094_3212606285423162_8169704061067591680_n.jpg		New Delhi	Male	2020-11-04 05:59:58.754005+00	27		Female
44	hiddenplayer110	Screenshot_20200411-181517.png			Delhi	Male	2020-11-04 06:04:50.957072+00	30		Female
45	Dany	IMG_20200918_122210_946.jpg	IMG_20201002_231744_864.jpg		New Delhi	Male	2020-11-04 06:04:54.295549+00	21	Just make it swipe to know	Just make it swipe to know
46	Vineet92511	1E4F9CA3-5556-4BA6-9BAD-6EFA1F798247.jpeg			Delhi	Male	2020-11-04 06:14:43.704463+00	19	Lets talk over chai and momos	Female
47	aditya	1595133644355.jpg			Delhi	Male	2020-11-04 06:17:03.23909+00	29	Traveler, photography is love	Traveler, photography is love
48	Mohit@123	FB_IMG_1604051485251.jpg			delhi	Male	2020-11-04 06:17:31.727138+00	25		Female
49	Manish	IMG_20201102_111806_682.jpg	IMG_20200604_112724_572.jpg	PicsArt_12-31-06.34.59.jpg	Gurgaon	Male	2020-11-04 06:20:45.819376+00	21	Nothing	Female
82	Swapnil	IMG_1376.JPG				Male	2020-11-26 05:49:38.247404+00	0	,and I'm a poet...	Female
50	Kart11	IMG_20201010_192306_661.jpg	20200927_011429.jpg	IMG_20200401_080123_297.jpg	Delhi	Male	2020-11-04 06:35:05.813796+00	22	20\nThere's no perfect, there will always be a struggle. You just have to choose who you want to struggle with.🥀\n\nI love chai, long convos and could hear you all night long while you tell me about how your day went.☺️\nI'm a good cook.👨‍🍳🙊\n.\n.\n.\n.\n.\nAir-Force aspirant🎖️\n\n❤️⚽	Female
51	7972278932	IMG-20200921-WA0004.jpg	IMG-20200921-WA0004_uWf0rY7.jpg		gurgaon	Male	2020-11-04 06:37:47.852501+00	28	funny	Female
52	iamdebadutta	PicsArt_11-02-08.34.18.jpg			Ghaziabad	Male	2020-11-04 06:45:24.351938+00	23		Female
53	Hrishabh	IMG_20201029_190128_163.jpg	IMG_20201101_093251__01__01.jpg		Delhi	Male	2020-11-04 06:46:16.253741+00	25	Lawyer, singer, poet.\nPotterhead, Marvel geek\nGym freak 💪\nHere for some fun\nAnd girl, I can sing for you and you won't be disappointed\n\nFollow me on instagram...\n@the_illegal_lawyer	Female
54	Anil@9466	IMG_20200828_170953.jpg			New Delhi	Male	2020-11-04 06:46:43.656978+00	23	I am a vet dr.	Female
55	Vasuchauhan	31BCC74B-830F-4C33-BFA6-28C9D586D45C.jpeg			Delhi	Male	2020-11-04 06:48:49.061513+00	22		Female
56	Anna	IMG-20201102-WA0000__01.jpg			Delhi	Female	2020-11-04 06:54:12.893814+00	25	Text me to know me	Female
57	Shu219	unnamed_52.jpg	images_-_2020-11-01T001330.526.jpeg	images_-_2020-11-04T005339.863.jpeg	Delhi	Male	2020-11-04 07:00:21.70956+00	22		Female
59	Rahul	IMG_20201102_161157_436.jpg			Gurgaon	Male	2020-11-04 07:04:52.16119+00	26	Old school lover	Female
60	arif01	d1ef0482-ea7d-4ed5-85e5-7c75c5ca9c60.jpg	IMG_20200417_000945_438.jpg	dc46b57f-877f-4b73-99c8-33cf7a771b77.jpg	Delhi	Male	2020-11-04 07:05:26.586945+00	31	Athletic	Female
62	Abhi	IMG-20190724-WA0009__01__01.jpg	Screenshot_20190523-091209__01.jpg	Screenshot_20190524-133749__01.jpg	Delhi	Male	2020-11-04 07:08:34.661217+00	26		Female
63	akshat	IMG_20200116_142750.jpg			delhi	Male	2020-11-04 07:09:02.574042+00	23	honest, caring person.	honest, caring person.
64	thisisbolt	IMG_2423-01.jpeg	IMG20201025141246-01.jpeg		Delhi	Male	2020-11-04 07:21:20.146734+00	21		Female
65	harshkumar	AF2F758F-E7AA-45E9-AFE4-40CF971F4CB1.jpeg			Delhi india	Male	2020-11-04 07:22:45.269393+00	24	Testing this	Female
66	Ashish1506	IMG_20200908_105913_394.jpg	IMG_20200828_234847_246.jpg		Delhi	Male	2020-11-04 07:24:55.526663+00	23	Always up for something interesting.\nLets make a memory	Female
67	Jatinchaudhari18	IMG_20201030_102913_436.jpg			Faridabad	Male	2020-11-04 07:26:24.355026+00	21	Bio doesn't define anyone... Its better to text and know each other	Female
68	Joe	2629BFB7-9562-440C-8CEC-4BC8443EE034.jpeg			Gurgaon	Male	2020-11-04 07:29:11.080846+00	25		Female
69	Sushant	IMG_20201101_193942_304.jpg			Use current location	Male	2020-11-04 07:35:38.081126+00	21	How u doin'	How u doin'
70	Ankit	IMG_20191207_221318_955.jpg	IMG_20190901_164528_930.jpg		Delhi	Male	2020-11-04 07:39:49.503341+00	24		Female
72	Mdleo001	IMG-20201104-WA0007.jpg	IMG-20201104-WA0008.jpg		Delhi	Male	2020-11-04 07:42:21.620092+00	23		Female
74	Abhigupta	IMG_20201031_152106_682.jpg			Faridabad	Male	2020-11-04 12:58:08.204143+00	20	hey	Not-Sure
75	Aakash	image.jpg	image_EvdYMi2.jpg	image_SgThR5m.jpg	Hisar	Male	2020-11-04 13:25:38.058785+00	21	Developer	Female
73	shubham22	IMG-20200223-WA0021.jpg			Faridabad	Male	2020-11-04 09:24:43.995149+00	24		Female
77	JayJerson	IMG_20201020_144500_305.jpg	IMG_20201029_161751_370.jpg	IMG_20201029_162028_539.jpg	Ghaziabad	Male	2020-11-07 14:42:45.280002+00	25	Hobbies: Cooking extravagant dinners, giving massages, and paying compliments.\n\nJust your type	Female
76	Gupta1234	E4548F65-F96C-4D8E-9733-37190D1B77D0.jpeg			Delhi	Male	2020-11-04 18:55:23.901009+00	21	Helloo	Female
78	adfs	75745413b2550fbd223522a642af0fea.jpg			mumbai	Male	2020-11-09 04:47:17.889088+00	18	hey lady	Male
83	Ayan	IMG-20201120-WA0002.jpg			Santacruz	Male	2020-11-26 05:53:32.691728+00	21	Lets talk and figure out	Female
71	Raj	IMG_20201102_152059_641.jpg	re.png		Delhi	Male	2020-11-04 07:41:33.714466+00	18	hey lady	Female
84	Mack	IMG_20201125_233636.jpg			Mumbai	Male	2020-11-26 05:54:47.204299+00	24		Female
85	Harshnaik	IMG_20201121_115626_210.jpg	IMG_20201126_085052_531.jpg		India	Male	2020-11-26 06:15:03.443762+00	20	Hey	Female
40	Swati	IMG_20201102_152059_641_WZjoVRG.jpg	75745413b2550fbd223522a642af0fea.jpg	IMG_20200807_183527_663.jpg	Delhi	Female	2020-11-04 05:17:16.119924+00	16	hey	Male
79	Abhigupta102	7DDB7C8D-F741-4A85-B88A-D5EA75BC8B31.jpeg			Faridabad	Male	2020-11-23 14:08:18.176635+00	21	Hohoho	Female
80	kishan1000	PicsArt_04-23-01.21.31.jpg		PicsArt_04-23-03.53.09.jpg	Mumbai	Male	2020-11-26 05:39:04.29036+00	25	Looking for good vibes	Female
81	Hrithik	indian-memes.png			Mumbai	Male	2020-11-26 05:48:20.71702+00	20		Female
86	redbull871	FB_IMG_1599974211193.jpg			Mumbai	Male	2020-11-26 06:26:06.436007+00	26		Female
87	Gundavda123	IMG_20200521_170133_465.jpg	IMG_20200601_023826_630.jpg		Mumbai	Male	2020-11-26 06:28:49.365349+00	25	Hey	Hey
88	Aryan	20201123_001139.jpg			Dahisar	Male	2020-11-26 06:30:53.472867+00	18	Carpe diem	Carpe diem
89	sunnyrathod	F91755D0-7093-4984-BA91-9B7C8D6F4A88.jpeg			Mumbai	Male	2020-11-26 06:38:19.68814+00	30		Female
90	Digdigdash	20201118_180343.jpg			Mumbai	Male	2020-11-26 06:39:18.540068+00	28	Milke btaunga	Female
91	Lucifer	IMG_20190624_222934_441.jpg	IMG_20200220_073056_483.jpg	IMG_20190603_145048_788.jpg	Mumbai	Male	2020-11-26 06:42:51.391735+00	22	Desperate for sex\nCan do anything & everything\nAge is not a problem. Can be with someone as young as 18 & as old as 69	Female
41	saagarx	20190923201511_IMG_6554.JPG	unknown.png	artificial-intelligence.png	hisar	Male	2020-11-04 05:28:47.958593+00	18	hero	Female
92	Ninad	IMG-20201125-WA0000.jpg	IMG-20201122-WA0000.jpg	IMG-20201111-WA0000.jpg	Kolhapur	Male	2020-11-26 06:43:41.933774+00	21		Female
93	Pradss	IMG-20201118-WA0084.jpg			Mumbai	Male	2020-11-26 07:51:18.659064+00	26	Let's have a coffee	Female
94	Nags	IMG_20201118_032440_907.jpg	IMG_20201101_235729.jpg		Mumbai	Male	2020-11-26 07:51:45.31855+00	23		Female
95	Chinmay	IMG_20201123_192519_587.jpg			Pune	Male	2020-11-26 08:18:54.368224+00	25	Hello there!	Female
96	Avengers007	IMG_20201020_085817525.jpg		IMG_20201030_173934157.jpg	Pune	Male	2020-11-26 08:30:05.783174+00	25		Female
97	sameer.pujara999	images_1_10.jpeg			Mumbai	Male	2020-11-27 08:17:44.176797+00	29	Here for Fun	Female
100	paras	download.jpg			delhi	Male	2020-11-29 06:13:44.05715+00	23	hi	Female
101	check	download_qrAPJtf.jpg			New York	Male	2020-12-03 16:23:08.051006+00	18	Hello There!	Female
102	mohan	f226df5ab0f823edd67f1ee1b632ec5e.jpg			vizag	Male	2020-12-11 19:05:54.458748+00	25	software engineer	Female
103	9717491802	heyyo_1607513613384_5100827195922566398.jpg			faridabad	Male	2020-12-26 11:06:01.985364+00	20	Hey	Male
104	Abhi20	DA5DC3FD-799A-474C-9382-23D5D6454C0A.jpeg			Faridabad	Male	2020-12-26 16:15:40.148639+00	20	Hey	Male
106	tester12	img_JeVKwC8.png	img_q9EM6aY.png	img_HjdyvTl.png	Prayagraj	Female	2020-12-30 08:23:41.306078+00	18	Hello I'm here!!!	Male
107	random	img_xy8aPCK.png	img_K8l3jj4.png	img_RJDOEz0.png	Meerut	Male	2020-12-30 15:10:55.528231+00	25	Hey there!!!	Female
108	shubham@221	IMG_20210102_133753.jpg			delhi	Male	2021-01-09 04:46:15.198668+00	24	abc	Female
105	test	img.png	img_yywTW87.png	img_RHzlcZO.png	Delhi	Male	2020-12-29 12:55:33.73161+00	18	Rodney Erickson is a content marketing professional at HubSpot, an inbound marketing and sales platform that helps companies attract visitors, convert leads, and close customers. Previously, Rodney worked as a marketing manager for a tech software startup. He graduated with honors from Columbia University with a dual degree in Business Administration and Creative Writing.	Female
98	Naman	SAVE_20201113_184514.jpg	SAVE_20201113_184514_tIWr4cC.jpg		Faridabad	Male	2020-11-27 13:57:59.070834+00	19	Single	Female
110	abhishek.tyagi	IMG_20191014_143854.jpg			Delhi	Male	2021-01-18 05:56:44.725694+00	26		Female
111	Raissa	BeautyPlus_20200704151814214_save.jpg			Rwanda	Female	2021-01-21 14:55:39.639276+00	21	Love don't cost a thing	Male
109	Abhiii	35763583-155B-4FB0-8E58-AD893C9E37F6.jpeg	C3B917E0-436E-442F-A3F0-D5BB52F5E24B.jpeg		Faridabad	Male	2021-01-16 19:51:16.861828+00	20	whatpoppin	Male
112	Kunal123	Screenshot_367.png	Screenshot_367_2Qu5XDM.png	Screenshot_367_IRkkXdE.png	NAshik	Male	2021-02-04 10:41:57.771224+00	25	something Good	Male
\.


--
-- Data for Name: Profile_que; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public."Profile_que" (id, username, que1, que2, que3) FROM stdin;
24	Swati	Coffee	Cat	Morning
25	saagarx	Coffee	Cat	Morning
26	zeetm	Tea	Dog	Evening
27	Dany	Tea	Dog	Evening
28	hiddenplayer110	Tea	Cat	Morning
29	aditya	Tea	Dog	Morning
30	Manish	Tea	Dog	Evening
31	Kart11	Tea	Dog	Evening
32	7972278932	Coffee	Dog	Morning
33	iamdebadutta	Coffee	Dog	Evening
34	Hrishabh	Tea	Dog	Evening
35	Anil@9466	Coffee	Dog	Evening
36	Anna	Tea	Dog	Morning
37	Shu219	Coffee	Dog	Morning
38	Rahul	Coffee	Dog	Morning
39	arif01	Coffee	Cat	Evening
40	Abhi	Coffee	Dog	Morning
41	akshat	Coffee	Dog	Evening
42	Raj	Coffee	Cat	Morning
43	thisisbolt	Coffee	Dog	Evening
44	Ashish1506	Tea	Dog	Evening
45	Jatinchaudhari18	Tea	Dog	Morning
46	Sushant	Tea	Dog	Evening
47	Ankit	Tea	Dog	Evening
48	Mdleo001	Tea	Cat	Morning
49	shubham22	Tea	Cat	Morning
50	Abhigupta	Coffee	Cat	Evening
51	Aakash	Coffee	Cat	Morning
52	JayJerson	Coffee	Cat	Morning
53	adfs	Coffee	Cat	Morning
54	kishan1000	Coffee	Dog	Evening
55	Hrithik	Coffee	Dog	Morning
56	Swapnil	Tea	Cat	Morning
57	Ayan	Coffee	Cat	Morning
58	Mack	Coffee	Cat	Morning
59	Harshnaik	Coffee	Cat	Morning
60	redbull871	Tea	Dog	Morning
61	Gundavda123	Coffee	Dog	Evening
62	Aryan	Coffee	Cat	Morning
63	Digdigdash	Coffee	Dog	Morning
64	Lucifer	Coffee	Dog	Evening
65	Ninad	Coffee	Cat	Morning
66	Pradss	Coffee	Dog	Morning
67	Nags	Tea	Dog	Evening
68	Chinmay	Coffee	Dog	Evening
69	Avengers007	Coffee	Dog	Morning
70	sameer.pujara999	Tea	Dog	Morning
71	Naman	Tea	Dog	Evening
72	Abhi098	Coffee	Cat	Evening
73	paras	Coffee	Cat	Morning
74	check	Tea	Dog	Evening
75	mohan	Coffee	Dog	Evening
76	9717491802	Coffee	Cat	Evening
77	tester12	Tea	Dog	Evening
78	shubham@221	Coffee	Cat	Morning
79	Abhiii	Coffee	Cat	Evening
80	abhishek.tyagi	Tea	Cat	Evening
81	Raissa	Tea	Dog	Evening
82	Kunal123	Tea	Dog	Evening
\.


--
-- Data for Name: Profile_reject; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public."Profile_reject" (id, from_user, to_user) FROM stdin;
62	Kart11	Swati
63	iamdebadutta	Swati
64	arif01	Swati
65	Abhi	Swati
66	Ashish1506	Swati
67	Joe	Swati
68	Swati	Mohit@123
69	Swati	akshat
70	Swati	Ashish1506
71	Swati	Rahul
72	Gupta1234	Swati
73	saagarx	Anna
77	Swati	adfs
78	Abhigupta102	Swati
79	Hrithik	Swati
80	Ayan	Swati
81	Mack	Swati
82	Harshnaik	Anna
83	redbull871	Anna
84	sunnyrathod	Anna
85	sunnyrathod	Anna
86	sunnyrathod	Swati
87	Lucifer	Anna
88	Pradss	Swati
89	Chinmay	Swati
90	Avengers007	Swati
91	Swati	Harshnaik
92	Abhi098	zeetm
93	Abhi098	Vineet92511
94	Abhi098	Swapnil
95	Abhi098	Hrishabh
96	Abhi098	Shu219
97	Abhi098	akshat
98	Abhi098	harshkumar
99	check	Swati
100	mohan	Anna
101	9717491802	Dany
102	9717491802	Manish
103	9717491802	Hrishabh
104	9717491802	akshat
105	9717491802	thisisbolt
106	9717491802	Jatinchaudhari18
107	Abhi20	Vineet92511
108	shubham@221	Swati
109	test	null
110	test	null
111	test	null
112	test	null
113	test	null
114	test	null
115	test	null
116	test	null
117	test	null
118	Abhi20	Dany
119	Abhi20	Swapnil
120	Abhi20	Dany
121	Abhi20	Manish
122	Abhi20	Kart11
123	Abhi20	Manish
124	Abhi20	Swapnil
125	Abhi20	Dany
126	Abhi20	Shu219
127	Abhi20	Dany
128	Abhi20	Manish
129	Abhi20	Manish
130	Abhi20	Ashish1506
131	Abhi20	Dany
132	Abhi20	Manish
133	Abhi20	thisisbolt
134	Abhi20	iamdebadutta
135	Abhi20	Anil@9466
136	Abhi20	Dany
137	Abhi20	Kart11
138	Abhi20	Swapnil
139	Abhi20	Dany
140	Abhi20	akshat
141	Abhi20	Aakash
142	Abhi20	Manish
143	Abhi20	akshat
144	Swati	Aryan
145	Swati	Digdigdash
146	Abhi20	Gupta1234
147	Abhi20	Harshnaik
148	Abhi20	Lucifer
149	Abhi20	Nags
150	Abhi20	check
151	Abhi20	9717491802
152	test	null
153	test	null
154	Abhiii	Vineet92511
155	Abhiii	Kart11
156	Abhiii	Swapnil
157	Abhiii	Dany
158	Abhiii	iamdebadutta
159	abhishek.tyagi	Swati
\.


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
4	info@3choices.in	t	f	1
24	fxsuraj@gmail.com	f	t	70
25	daniyalahmed199814@gmail.com	f	t	71
26	Ks288607@gmail.com	f	t	73
27	hiddenplayer110@gmail.com	f	t	74
29	samarya7253@gmail.com	f	t	87
30	cedito3784@sovixa.com	t	t	88
31	praveen.gaur1690@gmail.com	f	t	89
32	kartikanshu685@gmail.com	t	t	90
34	rmalhotra2600@gmail.com	f	t	98
35	cnitin630@gmail.com	f	t	99
36	sachingill130@gmail.com	f	t	100
28	arif011089@gmail.com	t	t	81
37	abhishekmudgal01@ymail.com	f	t	102
39	nikunjpurohit811@gmail.com	f	t	104
38	Jaykrishna.shah12@gmail.com	t	t	103
40	harsh11kumar@mail.com	t	t	107
41	rautelaprashant795@gmail.com	t	t	110
42	ssbadam@mitaoe.ac.in	f	t	113
43	rravi516@yahoo.co.in	f	t	114
33	jitunarwal005@gmail.com	t	t	91
44	singhalanand234@gmail.com	t	t	125
45	mieyrrabundy@ymail.com	f	t	127
46	imkishankp@gmail.com	f	t	131
47	tejasagg8621@gmail.com	f	t	132
48	ansariarif7377@gmail.com	f	t	133
49	sandeshsandy017@gmail.com	f	t	137
50	jamessawyerford26@gmail.com	f	t	140
51	harshnaik69@gmail.com	f	t	142
52	cccreator4@gmail.com	f	t	149
53	patilninad591@gmail.com	t	t	150
54	Nagspeace@gmail.com	f	t	151
55	animbalkar750@gmail.com	f	t	154
56	sameer.pujara999@yahoo.com	t	t	155
58	raghavtaneja2001@gmail.com	f	t	158
59	aayu342655@gmail.com	t	t	161
60	xavierfosterx@gmail.com	t	t	162
62	tisos22609@5y5u.com	t	t	164
63	random@gmail.com	f	t	170
64	check@gmail.com	f	t	171
65	ritikbest00856@gmail.com	t	t	176
66	Kunalguptadev007@gmail.com	t	t	180
67	joxoxon456@poetred.com	t	t	181
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add friend request	1	add_friendrequest
2	Can change friend request	1	change_friendrequest
3	Can delete friend request	1	delete_friendrequest
4	Can view friend request	1	view_friendrequest
5	Can add profile	2	add_profile
6	Can change profile	2	change_profile
7	Can delete profile	2	delete_profile
8	Can view profile	2	view_profile
9	Can add age	3	add_age
10	Can change age	3	change_age
11	Can delete age	3	delete_age
12	Can view age	3	view_age
13	Can add que	4	add_que
14	Can change que	4	change_que
15	Can delete que	4	delete_que
16	Can view que	4	view_que
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	6	add_permission
22	Can change permission	6	change_permission
23	Can delete permission	6	delete_permission
24	Can view permission	6	view_permission
25	Can add group	7	add_group
26	Can change group	7	change_group
27	Can delete group	7	delete_group
28	Can view group	7	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add site	11	add_site
42	Can change site	11	change_site
43	Can delete site	11	delete_site
44	Can view site	11	view_site
45	Can add email address	12	add_emailaddress
46	Can change email address	12	change_emailaddress
47	Can delete email address	12	delete_emailaddress
48	Can view email address	12	view_emailaddress
49	Can add email confirmation	13	add_emailconfirmation
50	Can change email confirmation	13	change_emailconfirmation
51	Can delete email confirmation	13	delete_emailconfirmation
52	Can view email confirmation	13	view_emailconfirmation
53	Can add social account	14	add_socialaccount
54	Can change social account	14	change_socialaccount
55	Can delete social account	14	delete_socialaccount
56	Can view social account	14	view_socialaccount
57	Can add social application	15	add_socialapp
58	Can change social application	15	change_socialapp
59	Can delete social application	15	delete_socialapp
60	Can view social application	15	view_socialapp
61	Can add social application token	16	add_socialtoken
62	Can change social application token	16	change_socialtoken
63	Can delete social application token	16	delete_socialtoken
64	Can view social application token	16	view_socialtoken
65	Can add auth token	17	add_authtoken
66	Can change auth token	17	change_authtoken
67	Can delete auth token	17	delete_authtoken
68	Can view auth token	17	view_authtoken
69	Can add Token	18	add_token
70	Can change Token	18	change_token
71	Can delete Token	18	delete_token
72	Can view Token	18	view_token
73	Can add contact	19	add_contact
74	Can change contact	19	change_contact
75	Can delete contact	19	delete_contact
76	Can view contact	19	view_contact
77	Can add message	20	add_message
78	Can change message	20	change_message
79	Can delete message	20	delete_message
80	Can view message	20	view_message
81	Can add chat	21	add_chat
82	Can change chat	21	change_chat
83	Can delete chat	21	delete_chat
84	Can view chat	21	view_chat
85	Can add reject	22	add_reject
86	Can change reject	22	change_reject
87	Can delete reject	22	delete_reject
88	Can view reject	22	view_reject
89	Can add notify	23	add_notify
90	Can change notify	23	change_notify
91	Can delete notify	23	delete_notify
92	Can view notify	23	view_notify
93	Can add date request	24	add_daterequest
94	Can change date request	24	change_daterequest
95	Can delete date request	24	delete_daterequest
96	Can view date request	24	view_daterequest
97	Can add count	25	add_count
98	Can change count	25	change_count
99	Can delete count	25	delete_count
100	Can view count	25	view_count
101	Can add date	26	add_date
102	Can change date	26	change_date
103	Can delete date	26	delete_date
104	Can view date	26	view_date
105	Can add friend	27	add_friend
106	Can change friend	27	change_friend
107	Can delete friend	27	delete_friend
108	Can view friend	27	view_friend
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
90	pbkdf2_sha256$216000$AZuMcJSKRRJD$Ldkl9eQOIprIl9967ReEuCNOcAM8B/YPVEdOXuxsjzE=	\N	f	Kart11			kartikanshu685@gmail.com	f	t	2020-11-04 06:32:01.769495+00
91	pbkdf2_sha256$216000$6AkP892FJJmd$YtLKXYjAXLDo3StYZmghDJfsL4gmYZ3Df0eXlDVFnbc=	\N	f	Jeet005			jitunarwal005@gmail.com	f	t	2020-11-04 06:32:16.813927+00
68	pbkdf2_sha256$216000$T0Cwmv5xN0jC$t7kfYuIKQja6t5lS4/zKmuaGXDNT40OsX+hvbpJwMtw=	\N	f	saagarx			8571880897	f	t	2020-11-04 05:26:35.077703+00
70	pbkdf2_sha256$216000$uVpGiPvJKwse$sX1P+cwnKYHX6epNf9nxwCA/76amfHRxLWkiNQ3Aoq8=	\N	f	Fxsuraj			fxsuraj@gmail.com	f	t	2020-11-04 05:56:12.117109+00
71	pbkdf2_sha256$216000$sB9FW4hY0HGe$OXiSGGzqSxWbZaYfnJ7WtVTVzAZKmE+44haHeiH3TX4=	\N	f	Dany			daniyalahmed199814@gmail.com	f	t	2020-11-04 05:57:50.034148+00
72	pbkdf2_sha256$216000$3MwScoevLD8z$wEzYwPFI7LhypOkhII8JpWS1qchsE8DbsQJYOoGfjcA=	\N	f	zeetm			9958369378	f	t	2020-11-04 05:58:39.512312+00
73	pbkdf2_sha256$216000$a2UyQ6Xx22ec$HvEteZTsEle9o38Atnx08hyUA94kU/6oQ4e6sgBttHQ=	\N	f	Klax			Ks288607@gmail.com	f	t	2020-11-04 05:58:47.94335+00
74	pbkdf2_sha256$216000$AKLlmpjFvY0B$I9NEDfGtw1Bxq6TZlT/+XRwFWws0wkwbkJzQfdE4hoI=	\N	f	hiddenplayer110			hiddenplayer110@gmail.com	f	t	2020-11-04 06:00:47.587616+00
75	pbkdf2_sha256$216000$gnRbOjV3Qxnk$TVywZjXPSmsSECCeRbUcmQS8SrYmmf/Q7Wm8WqeeXyg=	\N	f	prash391			7424905719	f	t	2020-11-04 06:02:15.122335+00
76	pbkdf2_sha256$216000$DPtWu8SPj4Uq$2PuUTFsmqH042iqpN2/rbuGh9PQchpNrdOpkvQpfygg=	\N	f	Shivam			9873266985	f	t	2020-11-04 06:06:27.189975+00
77	pbkdf2_sha256$216000$rsZMNjyz0FW1$5VM7QOSn2ijCLW5FCumCzvlHO+K6nR5GTFcVaUMMHzk=	\N	f	sirMOKSH			9953891619	f	t	2020-11-04 06:06:37.796132+00
78	pbkdf2_sha256$216000$8ZXlJCWuMdoW$MQ8hozEvJ6SHC8woyJImKgutNwyNKwR8v7AiPtG5coM=	\N	f	7972278932			7972278932	f	t	2020-11-04 06:07:02.91492+00
79	pbkdf2_sha256$216000$Pua0Lf7r077t$+TOfDhX9ryDOBMkLvyGMmCfEUOh1OEKro9WbkrZ37b0=	\N	f	qwerty@123			8448221440	f	t	2020-11-04 06:08:27.870116+00
80	pbkdf2_sha256$216000$6ux85YJWR94C$ZdaFsXx8uM6ajHSzM+m/6LbVR7Kf3SjE7yryeWw7vo8=	\N	f	Gaurav			8813818326	f	t	2020-11-04 06:10:51.397+00
81	pbkdf2_sha256$216000$9NfZA8YgZNSw$PihV87d3CCPhYtOAKkVZZ6cDKcvW2k0qIUZ4NQHy1FU=	\N	f	arif01			arif011089@gmail.com	f	t	2020-11-04 06:11:04.13039+00
82	pbkdf2_sha256$216000$x57gRAz7pFzI$38jOkKyC9ovOFjnN2u4cz3fL+QksfE1c06h/JXf45EY=	\N	f	Vineet92511			8384825214	f	t	2020-11-04 06:12:46.301591+00
83	pbkdf2_sha256$216000$fE6W8mMazOeB$G4JCAfJ4vEUtJT19uaeKRx5g/HweQA41+N0368ztVO4=	\N	f	ankurchauhan126			9958823400	f	t	2020-11-04 06:13:33.921172+00
69	pbkdf2_sha256$216000$ChHiDDZkuZQW$QVn0xbZeMXinEn5TpTK+cyOh11DcmihiUyQDCYUh7mQ=	\N	f	Raj			8506858057	f	t	2020-11-04 05:50:21.898609+00
84	pbkdf2_sha256$216000$yw0db4nb9upw$aZr3fejc3GHslrG5lbJaGD0rAjHvarpVD6K/I009G3I=	\N	f	Mohit@123			9560036438	f	t	2020-11-04 06:15:16.766876+00
85	pbkdf2_sha256$216000$k31wDXoQruQX$5ux0n+FXR7uzYORq8OBCEmjp+fl2n9hoByXRux6aqK4=	\N	f	aditya			9600121742	f	t	2020-11-04 06:15:28.696565+00
86	pbkdf2_sha256$216000$hWnOn09aZybD$0ipdSsfAng0No8HanpxDzweUUJ2LPFSQbYvYM4289eM=	\N	f	the_mon_ey			7838092220	f	t	2020-11-04 06:16:21.586439+00
87	pbkdf2_sha256$216000$w8WxAF3IxspA$PtdYmzKoQE84J6i4Vwxx3DfXgh+k1A88GZPZ/AqoFlU=	\N	f	Sameer			samarya7253@gmail.com	f	t	2020-11-04 06:17:36.733349+00
88	pbkdf2_sha256$216000$p6jd6NpyMroY$G6Nr0mJdq4p5cm+IIrmp1nbTRTuGCSOR6wc5oFPD7W8=	\N	f	Manish			cedito3784@sovixa.com	f	t	2020-11-04 06:18:35.324194+00
89	pbkdf2_sha256$216000$RtVI2jxpSNlY$grwZVKka6TAjGAA4aBD0Ib5kmOy4R3Vf3VkvlKcj09w=	\N	f	Sweet.secret			praveen.gaur1690@gmail.com	f	t	2020-11-04 06:26:09.866756+00
92	pbkdf2_sha256$216000$5GswEqmQmR66$zE1Lyl/9m+Hs2ap4CPw+6EplU7kV58hgeCEoZRtM07I=	\N	f	iamdebadutta			7008582346	f	t	2020-11-04 06:43:56.23538+00
93	pbkdf2_sha256$216000$aIX206UxdGPP$ZDTGv9TnHYBKYP+KTZpG6cxQp9wfYJnN+rjo91+7flE=	\N	f	Hrishabh			9599561284	f	t	2020-11-04 06:44:03.356307+00
94	pbkdf2_sha256$216000$SUH6dAc9JS2p$5B8ZrOQ65Kdxpi98hwJRcgeoGjPyzA06eTkMaZd1ts4=	\N	f	Anil@9466			8920526130	f	t	2020-11-04 06:44:42.393949+00
95	pbkdf2_sha256$216000$wvxrkZ4mwptq$czrZHng66x7q5VmOXdhOvLdI0RaSGIoTxELinxI7jxY=	\N	f	Vasuchauhan			9999680324	f	t	2020-11-04 06:46:19.123854+00
96	pbkdf2_sha256$216000$vv0UbCulCYqc$W6tl0iCL4nxBBvNeC4igJPqkrU/LXJCjTRfXcUutr60=	\N	f	Anna			8432111600	f	t	2020-11-04 06:47:52.461305+00
97	pbkdf2_sha256$216000$Mm4QQPAzCyII$z9E0/mPZWjPona5n5N8Y72RLqp0g3Yskbza6QFWyp58=	\N	f	Sandy			7011570141	f	t	2020-11-04 06:52:13.158912+00
98	pbkdf2_sha256$216000$IeKDWWfrDrej$Tk1bF6CqTt6qDhy3BWqzqyhj5Lj3kXtucMRMUl+5WlU=	\N	f	iraghav123			rmalhotra2600@gmail.com	f	t	2020-11-04 06:57:06.571063+00
99	pbkdf2_sha256$216000$VPUdvaKrosHL$GtdFzje/tNhu2ekgQKKNXfxL3b0EsBXvdWWb2PhTaRM=	\N	f	Shu219			cnitin630@gmail.com	f	t	2020-11-04 06:57:17.896102+00
100	pbkdf2_sha256$216000$1znl16OVjKh7$bBGMYkOTrhkrg0P5h+vT++98awug1dk+soqLCtoolUw=	\N	f	Sachin			sachingill130@gmail.com	f	t	2020-11-04 07:01:55.406561+00
101	pbkdf2_sha256$216000$kwOwNbwYrlqd$YQr9hGi/GAeQQwFAmqJgXrVwHNwm8Kv/97YABWV1ZhU=	\N	f	Rahul			9643840520	f	t	2020-11-04 07:03:13.825841+00
102	pbkdf2_sha256$216000$8mJuvEh8h6uc$Hu2TxC6jxu7zw7blDUUKD3q+k12sdQQrjI2QMiY1qVU=	\N	f	Abhi			abhishekmudgal01@ymail.com	f	t	2020-11-04 07:03:53.157928+00
103	pbkdf2_sha256$216000$4k9ePeeebxyP$enKSYr3Q+E2IedSvt4iVFoIR1TgjdPMclHF5eMtcaY4=	\N	f	Psychowholifts			Jaykrishna.shah12@gmail.com	f	t	2020-11-04 07:06:44.058103+00
104	pbkdf2_sha256$216000$6nz36SnJwOtZ$GXNRcc9q9FZ8hb6yEv9QH+PBGvxJYLRjJpamQucgKTY=	\N	f	Nikunj			nikunjpurohit811@gmail.com	f	t	2020-11-04 07:06:50.165175+00
105	pbkdf2_sha256$216000$R4ouy2AS7kLy$CYH/9fdmbXZS2dMyRE90hGS9xR9V//Gs/twCeWqTLl8=	\N	f	akshat			8126496695	f	t	2020-11-04 07:07:04.530151+00
106	pbkdf2_sha256$216000$5bTBRhnckN0Y$uK0gqd7Mmg3Bh4s4L68YDD2v60950BXN0YXoib7YRUU=	\N	f	thisisbolt			9875704926	f	t	2020-11-04 07:18:04.199078+00
107	pbkdf2_sha256$216000$qMhCAHR5fuKG$ApXqkTBpIdZCCZyy6719DWffGoSPz7kL9rLiFa9LEMg=	\N	f	harshkumar			harsh11kumar@mail.com	f	t	2020-11-04 07:19:33.661739+00
108	pbkdf2_sha256$216000$9tUwKNR9bj3Q$6UPS4UDc6kBOQDFwmqON51cNvf83yF+QZutQJgq5+oM=	\N	f	Ashish1506			8800177655	f	t	2020-11-04 07:22:01.407598+00
109	pbkdf2_sha256$216000$ln6igI8jD9qQ$CBrVXfRzLfDJvSvshHO/yI7N4Vi1zYLqzCL/EwN1b/M=	\N	f	Jatinchaudhari18			8800503156	f	t	2020-11-04 07:24:49.202748+00
110	pbkdf2_sha256$216000$2KmaQaHTlYbl$gDvEEKWH5HYnF29/4quhINRa/F/XtVcNVbjGYLuOE9s=	\N	f	PDR			rautelaprashant795@gmail.com	f	t	2020-11-04 07:27:04.570067+00
111	pbkdf2_sha256$216000$h6BQvYyrZeT9$JfFFvBaC8vuu+ulwbS3sL9sv+yYJgZa9tRqGSWthVTc=	\N	f	Joe			9992124386	f	t	2020-11-04 07:27:35.023906+00
112	pbkdf2_sha256$216000$u29vg3oBk8q7$lMLMJ7OtXv8EMlZpk7cqXNEe3833mOo9r6Z1YHcfQwg=	\N	f	Satyam8893			9034003667	f	t	2020-11-04 07:30:03.10334+00
113	pbkdf2_sha256$216000$cSRW10ArIC2e$nBknZJ4Pekp1JaqLQCoUBRrhKrZamPpWoDqKdI682d8=	\N	f	Sushant			ssbadam@mitaoe.ac.in	f	t	2020-11-04 07:31:18.181328+00
114	pbkdf2_sha256$216000$7O3bOzP1YmOp$A0hIt+ucHrvdfIxuxsEiRZtk9J32iyhL19e4e7yz6+M=	\N	f	Ghost			rravi516@yahoo.co.in	f	t	2020-11-04 07:32:39.224004+00
1	pbkdf2_sha256$216000$YGegCXhbvl1w$DUsJXEu40uaYiZe/cgo/3BEkIPETNRbhOxkJ1IFRUgQ=	2020-11-09 04:48:11.006508+00	t	ayush			aayusinghal34@gmail.com	t	t	2020-10-13 06:24:25.775546+00
67	pbkdf2_sha256$216000$payuFpxwqiHf$iqQYM45DH56w2IKarqwPzByoUjgpXSvRf3GHxRWRqHY=	\N	f	Swati			9871755848	f	t	2020-11-04 05:16:00.16516+00
115	pbkdf2_sha256$216000$B4ndtGtWhiYh$vf7kx7IszlAfhFSjDVc8aTyrMOU/X5KuHFlcAbufovQ=	\N	f	Arsh9924			6044040725	f	t	2020-11-04 07:33:59.668851+00
116	pbkdf2_sha256$216000$jbjItnNRJ3pY$JrE0mOuHw3qwEGUFZ8n9hjGDUjYMZApC38pZR4ZHdCI=	\N	f	Ankit			9818087026	f	t	2020-11-04 07:37:48.872887+00
117	pbkdf2_sha256$216000$MraJZybfqhrO$IlrEUOUt0aoe0EaWZYm0ZuYYapFh+sKGft16LYPchtE=	\N	f	Mdleo001			6307372184	f	t	2020-11-04 07:38:18.311893+00
118	pbkdf2_sha256$216000$6vTmEVwe7ulE$voP0ZRsroP5PWqxgfpbKqZKW6BIJbBIac4b6o1FDWhg=	\N	f	Prashant			9519214723	f	t	2020-11-04 08:21:54.345139+00
119	pbkdf2_sha256$216000$cwqZSfAamgQW$+gynVk6KyLG0rNzBZRgsm8ieMZl1P/KriR0yjwLUncU=	\N	f	shubham22			8745090530	f	t	2020-11-04 09:21:55.776495+00
121	pbkdf2_sha256$216000$E2Wr0vFnZnXz$+TcEuGyzWTZNruEyQxrIGjrkxdsmpmP3ME8yd4OvDmw=	\N	f	Aakash			9896979992	f	t	2020-11-04 13:23:37.297513+00
123	pbkdf2_sha256$216000$eUubDUXEY3vp$MQJ1rntl7cHPNFUrs1qpVzQzHCwFTt6M07G6uoI1vh0=	\N	f	JayJerson			9174056977	f	t	2020-11-07 14:40:50.239777+00
124	pbkdf2_sha256$216000$ZamCaudUWgs5$zxs/M1toJdH2VLHCBSQlfGW84bbhIpw5ptAS/mld/18=	\N	f	Lucky			8419963903	f	t	2020-11-07 19:59:35.57235+00
125	pbkdf2_sha256$216000$XsF3PkPyvvYE$YVUY/xpuFkallh0EBR5IHRI5IYXJRy9rQaOURgoyBnk=	\N	f	adfs			singhalanand234@gmail.com	f	t	2020-11-09 04:45:27.099025+00
152	pbkdf2_sha256$216000$NUBoJG6fuYNe$Y4CE4s4ZAaI7GOWIlGWTrUF+UHE5YLQvsCQHPiPSObs=	\N	f	Pradss			8692812418	f	t	2020-11-26 07:48:45.310098+00
153	pbkdf2_sha256$216000$Ch6eu8S7Le1U$+q0omvOKnEIGfzko9q3w0xO0xot6BtyJY4Nuf4ooYUA=	\N	f	Chinmay			8390705437	f	t	2020-11-26 08:17:06.007986+00
154	pbkdf2_sha256$216000$L7PrCSRpeE1q$spjr8VeOhhb1BCLKreo6aIdAaEqyVm6+P2A9+mD716g=	\N	f	Avengers007			animbalkar750@gmail.com	f	t	2020-11-26 08:27:38.353329+00
127	pbkdf2_sha256$216000$aGwQyFyL2EbG$BEAPM+n4+txdEvmIWaMjGP2DM/KJA4+QaMlT/RL+sjs=	\N	f	Mieyrra			mieyrrabundy@ymail.com	f	t	2020-11-17 05:31:13.61913+00
155	pbkdf2_sha256$216000$XbXoj2wYvG3N$1Mb/L0Ay/s/jlvtX/HC+c1/XeELwpYkfqIulzhoDUjQ=	\N	f	sameer.pujara999			sameer.pujara999@yahoo.com	f	t	2020-11-27 08:14:35.284418+00
162	pbkdf2_sha256$216000$M4kXKzAVtKeU$rYuKwPANQ9l57OJcR3u31hUP6pOVI4DnglLQLtXoX/E=	\N	f	xavierfoster			xavierfosterx@gmail.com	f	t	2020-12-02 12:54:41.133475+00
129	pbkdf2_sha256$216000$O6Kp3imNY3N5$XP6q4FT9Y+HIO98/ZVcZoTHjs2mzXjAZZ/uyEusZRWw=	\N	f	sethansah			0555615606	f	t	2020-11-23 19:00:56.373604+00
130	pbkdf2_sha256$216000$b8da7OKReviq$b6U+T95AOIM6wEYpAFyNeKxd/LerMT4UZzSO79jkp0Y=	\N	f	Fahad			8879955217	f	t	2020-11-26 05:31:52.364477+00
131	pbkdf2_sha256$216000$MqvD9kXSA1Nn$GYghHv1mM6Tt3fWt0u+iO2rdRY2BW7oRmuDfs7zRXks=	\N	f	kishan1000			imkishankp@gmail.com	f	t	2020-11-26 05:34:07.120147+00
132	pbkdf2_sha256$216000$2MoalCRIW0oi$6ey8WMpu42q/IlY6KQC8naMUXoGA5YqkX43vYejBadM=	\N	f	Rockman			tejasagg8621@gmail.com	f	t	2020-11-26 05:35:39.539581+00
133	pbkdf2_sha256$216000$7LHQuvcgEFZh$CM1qQrtjW7quS7mqO8cgNh86+uDoC1WWxMDSjh56rwY=	\N	f	khan__arquam			ansariarif7377@gmail.com	f	t	2020-11-26 05:37:42.80234+00
134	pbkdf2_sha256$216000$Mwmp28DX7pvI$SHiIsxMBoxARx+gRlVZHHoEbWiH8YjFqpCGEmSXeTzw=	\N	f	Swapnil			8291729558	f	t	2020-11-26 05:45:24.304438+00
135	pbkdf2_sha256$216000$KWq8IfdBVmQF$LNWtVG9vrtMD2Lgq/5rqQ1M9BlQX/LBz7gupvAZOUgc=	\N	f	Danish			9870394848	f	t	2020-11-26 05:46:38.421066+00
136	pbkdf2_sha256$216000$DvlFDFixfxHq$l6z31nkpT4md+6OBVV1qbHOEavam/H97eancJrbywtY=	\N	f	Hrithik			9087660974	f	t	2020-11-26 05:47:10.922406+00
137	pbkdf2_sha256$216000$xACCOxTrtzel$nvy3nQNL7wByPqg+5Co/D1IRFfQqL+A2MxFC1qgizcU=	\N	f	Sandy17			sandeshsandy017@gmail.com	f	t	2020-11-26 05:47:50.154778+00
138	pbkdf2_sha256$216000$vJiuMlFv9i0u$tIwL44tfvXKOvieoQew2cSGKXbLuXEiP8lcXhEoShvs=	\N	f	Ayan			8850720912	f	t	2020-11-26 05:50:47.838808+00
139	pbkdf2_sha256$216000$MF7GK1LL4nBJ$K5qEnDH32trx1Wfaje3jOZwOeoymbRTTXFMEeRfKt8k=	\N	f	Mack			8080005806	f	t	2020-11-26 05:52:31.891677+00
140	pbkdf2_sha256$216000$l011RyGfsk0C$FuWSy0dy8/anyKprUwVgrwtn2ooJlAwRYwHLoy5GVCM=	\N	f	Dexter			jamessawyerford26@gmail.com	f	t	2020-11-26 05:54:49.232953+00
141	pbkdf2_sha256$216000$PPFoCIwWwFVQ$j1PuwbaQx6eQjq178iKAdwaskax7TvV193woOdlUupg=	\N	f	Sunil			9834413516	f	t	2020-11-26 06:11:41.969696+00
142	pbkdf2_sha256$216000$Zt8HSGe2lp01$/Yfne+du373mXYN7cpGBIOePTeTwJQLaTJBAXI8FGR8=	\N	f	Harshnaik			harshnaik69@gmail.com	f	t	2020-11-26 06:13:35.812232+00
143	pbkdf2_sha256$216000$F462lVQJ6y83$97JGxZyUZIIwYI2Vc8LMgI41Wh2P6zPCZ+b+0YHIOJI=	\N	f	Gundavda123			9930365010	f	t	2020-11-26 06:20:44.828664+00
144	pbkdf2_sha256$216000$ndXmXVhXj3ME$HwaJlg/bX8kE2HImcK1eHjNKM11xhBSV3f0BrHsI3sw=	\N	f	redbull871			8652472494	f	t	2020-11-26 06:24:36.148795+00
145	pbkdf2_sha256$216000$4JPQ6z0wVRkB$g5b7HV/Giir0IgKBa3VwT0YCluburHj6s22Bks4QGFc=	\N	f	Aryan			7303839839	f	t	2020-11-26 06:28:16.736415+00
146	pbkdf2_sha256$216000$iz5FaJZAeKab$L7VTZzo8hzsfOw/NaANsPvhBA1IHiHLdCRwLKBsOjSk=	\N	f	Digdigdash			8850800686	f	t	2020-11-26 06:35:42.838683+00
147	pbkdf2_sha256$216000$n0HXl2f6W6X8$0pQh1YWZyPC1AzPUkyCNfHRgYJDzBEtrtZw214iVKmE=	\N	f	sunnyrathod			9619123563	f	t	2020-11-26 06:35:46.981182+00
148	pbkdf2_sha256$216000$cs2S8Mj46OnN$oMpZ8W7jgQHPVYohPWAzrkrvZ8ohdaKdF2Xhsx3faD8=	\N	f	Lucifer			8169480684	f	t	2020-11-26 06:36:26.455672+00
149	pbkdf2_sha256$216000$JXFzliMaLYC3$GgcrpLsmAc1gi2PQhdW186gCHVuWqEKHyp3CHfOTswI=	\N	f	Rohit			cccreator4@gmail.com	f	t	2020-11-26 06:38:20.654925+00
150	pbkdf2_sha256$216000$D58zD8KciDDQ$lUtf7JpOZpOevJNpgVkVGAS3GFTRAG3qngPhSmnxf5g=	\N	f	Ninad			patilninad591@gmail.com	f	t	2020-11-26 06:39:37.865836+00
151	pbkdf2_sha256$216000$tYUVRjgPFRYR$38mHXI0Bx1rnZDs7jKD3YDudbX3Q3tqz/fLjg/5Yhw4=	\N	f	Nags			Nagspeace@gmail.com	f	t	2020-11-26 07:48:39.586655+00
158	pbkdf2_sha256$216000$SbEp5y10xKzj$hVvNiMoeNlvzpplb3bz0u1FfPYUEhBYm5WjBBkEC9kY=	\N	f	mr.raghav17			raghavtaneja2001@gmail.com	f	t	2020-11-27 15:42:44.460517+00
160	pbkdf2_sha256$216000$ToQ6IZHoVIeG$54GsCiHjhsCsGNbvKJtPRObHwawkTz7qfVR8MUA8JbU=	\N	f	paras			7065416135	f	t	2020-11-29 06:08:05.838996+00
171	pbkdf2_sha256$216000$r12k9xQgdRUq$Q+2YnfXPkSmrTEPW37bKoSO86nFv8/8yX0KHl45MB9E=	\N	f	random			check@gmail.com	f	t	2020-12-30 15:01:16.016961+00
161	pbkdf2_sha256$216000$Ugx9ABY4wtIf$1Z1KvxdrVo8QfRT6YQ2Z1DRsYYURg/U3Qe9/0DK/lW4=	\N	f	Ayushhh_15205			aayu342655@gmail.com	f	t	2020-12-02 12:46:24.955245+00
165	pbkdf2_sha256$216000$7QclJ3ujaast$fAChUqsGg3OWeylzdfgVtmaOqH4CxbVrr+y303q+i2I=	\N	f	mohan			9110786531	f	t	2020-12-11 19:03:46.638745+00
166	pbkdf2_sha256$216000$jarFddKMhWxL$3pG9RV3upkGI05BFY4dXhhKAvLfd3hykQepWjryBY+s=	\N	f	Tarun			9950919117	f	t	2020-12-14 17:58:40.485002+00
170	pbkdf2_sha256$216000$ymdyoINltpkX$vR3mTrICsFwosb2EppTulc5SNOHmQmMCYAnVoInbRZw=	\N	f	tester12			random@gmail.com	f	t	2020-12-30 08:13:10.748383+00
164	pbkdf2_sha256$216000$7kS8ReuawK7O$ZdJKcYS3BJs1RSODBQejD0EXCGJ6gHoxL5KYVa3OkKs=	\N	f	check			tisos22609@5y5u.com	f	t	2020-12-03 16:21:17.920442+00
173	pbkdf2_sha256$216000$hUkyC67fR68C$lRf1oTotDcU9KK2EFyFSGAW8aiukVXxIPhFGtz7SXxo=	\N	f	shubham@221			8700018033	f	t	2021-01-09 04:43:42.083892+00
174	pbkdf2_sha256$216000$EgUxtizywyyK$RTBiqq9Isi0SKhIkYBv0jjMd7GSxnuDTq8E2HsCii0Q=	\N	f	Dipaks			9974292670	f	t	2021-01-12 09:59:00.548377+00
175	pbkdf2_sha256$216000$JofJsDyotHBe$I3jz5aWSskzSh8CZ8URaQcvAQXGP1mclNkfchzisAwI=	\N	f	Abhiii			9717491802	f	t	2021-01-16 19:49:49.638183+00
176	pbkdf2_sha256$216000$yu5f6jZnbfQO$sZiZyAtA6D2p8B53XauoNNesMDQipZV4R+M6e4N/e3I=	\N	f	Naman			ritikbest00856@gmail.com	f	t	2021-01-17 09:01:58.434731+00
177	pbkdf2_sha256$216000$CyAmjVNZf5h3$H3DQPUooMVOw6E5V1Spyy+xmTPnhhBdl9V6QBw+PZ1Q=	\N	f	abhishek.tyagi			9953893564	f	t	2021-01-18 05:53:37.079047+00
178	pbkdf2_sha256$216000$24zjha9JHZsD$sDTnUI6j8oxxfvupJ4S4rXMHzYgnQ3+pa4HAJJxexFY=	\N	f	Raissa			0786384270	f	t	2021-01-21 14:45:47.631281+00
179	pbkdf2_sha256$216000$te7wqqAIVuba$rFo7inWy727SKmA4WnO9qjfLForkhb0Se+M5cFIwJIo=	\N	f	Harry			8930966185	f	t	2021-01-26 15:22:18.831188+00
180	pbkdf2_sha256$216000$DJNBr3C7PxNy$UDbVoDttg0kWVd2Dvlw2aFsjiZY5NKbqxIrY8FLLNuI=	\N	f	Kunal			Kunalguptadev007@gmail.com	f	t	2021-01-31 14:00:36.226849+00
27	pbkdf2_sha256$216000$ieB3xRWLxStn$Xoaq6gSRv0a8QOo2Oezbex9fzl+q9sf+Xy1n8bsXsP0=	2021-02-02 04:22:58.474394+00	t	saagar			zeromagnum167@gmail.com	t	t	2020-11-01 08:36:55.119457+00
181	pbkdf2_sha256$216000$IcvXUIqlLgpW$7uFLySHNa17Bj4vTGGEEx25gPQzzTsR4vieJU2UOJH0=	\N	f	Kunal123			joxoxon456@poetred.com	f	t	2021-02-04 10:33:46.861348+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
aa41988f25fee3616341b53e4fb84137fb440ca8	2020-11-04 05:56:12.393462+00	70
ebb8e6eeb95c9cacb72f0740fec59443e62f5aad	2020-11-04 05:57:50.245685+00	71
ea3b4e41bb9f4f08937b53d311b6f1a11e5145a1	2020-11-04 05:58:48.217218+00	73
e5468a11555322d20a56691beb4823ee1003098e	2020-11-04 06:00:48.266587+00	74
d86319ca5f06ab347355ed00929e94786a39ee9d	2020-11-04 06:11:04.915027+00	81
eaaa6e3ede2aed7984927f879a6c46f7f0cd4ea0	2020-11-04 06:17:37.39588+00	87
a43f21ecbe7b36f4c4f78f324fdf9db9ebc9c299	2020-11-04 06:18:35.808794+00	88
c750e55f275e799021a1edde131efea043cd8237	2020-11-04 06:26:10.26448+00	89
f18452277ff4d580bfbfc6859ee77102e34d62d3	2020-11-04 06:32:02.001867+00	90
f16c4ed334bd779d8b3a2a3005504888102ae5da	2020-11-04 06:32:17.02414+00	91
dbadf2734354540c6ef29e07792e70ce1012ed1c	2020-11-04 06:57:06.990782+00	98
fbf3846aa3ff27643a07f32c9997451869067a4a	2020-11-04 06:57:18.108465+00	99
d27aaed91ac534dcd84325b031d74245268bc28e	2020-11-04 07:01:55.620207+00	100
9f2fe613ed0598f15a59ba3dcdfba5481b4238d2	2020-11-04 07:03:53.397808+00	102
c06ed92bf55ee05fde279099cf6e3a084674a72a	2020-11-04 07:06:44.349366+00	103
b339f68294937bbdcdef76a46163dcd810f9e164	2020-11-04 07:06:50.381551+00	104
e19136d3448db307040abcba9d5816d72cb8dd85	2020-11-04 07:19:34.103282+00	107
c53488b2fabb8b1800cdf43f6b9550ceff0e2048	2020-11-04 07:27:05.229189+00	110
0d829788925c4b3971c1e2e6fc373b88faef1da3	2020-11-04 07:31:18.626748+00	113
fea2f7e4c43c24c24ca4a86c2bfff53ca1a1cab8	2020-11-04 07:32:39.84287+00	114
b4abcc7c7e5fa537575416cdc55624e17e23c08c	2020-11-09 04:45:27.337554+00	125
726ef1c1f58894ff928e1530c293eaf7b1fff90c	2020-11-17 05:31:13.830092+00	127
3ed0a11d03496a21d86d780ffb5b0512bb89f153	2020-11-26 05:34:07.332553+00	131
43246a15841bf12080cd2d00b360bb7b1f51497e	2020-11-26 05:35:39.764055+00	132
2d3df9caaef058d38fba2e81ddc907454fccd9c3	2020-11-26 05:37:43.015251+00	133
324552055047ebdb5a0c268f469fdd0175975b88	2020-11-26 05:47:50.469066+00	137
2d8378121f816985b55ecc9845d359bbf5231d4f	2020-11-26 05:54:49.448928+00	140
89901d7ccc53b498f608ac121e7f19d732cf5da2	2020-11-26 06:13:36.226908+00	142
f174acc4fce5b7f208e065c4b5615827d1fac43c	2020-11-26 06:38:20.861877+00	149
5d83267ff3607c834af0f6c9a61487cc51723471	2020-11-26 06:39:38.344665+00	150
fd9ce5d91cc94fd1140451dbbb05d80de4be726b	2020-11-26 07:48:40.005841+00	151
e23ba350007aa5f9e5cbd510f52c4fce86f4f76f	2020-11-26 08:27:38.710731+00	154
a8ac2589f47ae83e0d1c1f7f6fc822c7e77c6991	2020-11-27 08:14:35.498346+00	155
c6e9d46c5e7257930eb662ae335363e18de238a8	2020-11-27 15:42:44.702811+00	158
7e867922bec0446042b729228c3236db858929b9	2020-12-02 12:46:25.173107+00	161
5df2eaf8203bd0acdff4fa85b5fddf8da29d47f0	2020-12-02 12:54:41.563895+00	162
9c0767672d36b8bf4d0a094635bd3e4e5816fc32	2020-12-03 16:21:18.169992+00	164
ba9bbea54838c5203bc74f8ad485b637c5d8e053	2020-12-30 08:13:11.099439+00	170
9dceb8e76fb52f2e3fcacec499cfcab8855c3a4c	2020-12-30 15:01:16.234+00	171
94e8df6e9af541e35c2a807d1566ea79d90af1be	2021-01-17 09:01:58.703082+00	176
7ed674d6a61fba606c4cc72e2b1dc02500bef528	2021-01-31 14:00:36.618722+00	180
34e19f2ba358ed75f47e75f6aaba78b7b6eb6449	2021-02-04 10:33:47.070677+00	181
\.


--
-- Data for Name: chat_chat; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.chat_chat (id) FROM stdin;
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
114
115
117
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
135
136
137
138
139
140
\.


--
-- Data for Name: chat_chat_messages; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.chat_chat_messages (id, chat_id, message_id) FROM stdin;
24	97	24
26	115	26
27	115	27
28	115	28
30	110	30
31	117	31
32	119	32
33	117	33
34	105	34
\.


--
-- Data for Name: chat_chat_participants; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.chat_chat_participants (id, chat_id, contact_id) FROM stdin;
114	91	93
115	92	93
116	93	94
117	94	94
118	95	94
119	95	90
120	96	96
121	96	90
122	97	98
123	97	90
124	98	107
125	98	90
126	99	109
127	99	90
128	100	110
129	100	90
130	101	95
131	101	90
132	102	105
133	102	90
134	103	97
135	104	97
136	105	100
137	105	90
138	106	104
139	106	90
140	107	97
141	108	104
142	109	105
143	110	108
144	111	110
147	114	91
148	114	90
149	115	122
150	115	90
153	117	99
154	117	90
155	119	90
156	119	124
157	121	130
158	121	90
159	122	130
160	122	90
161	123	130
162	123	90
163	124	99
164	124	90
165	125	92
166	125	90
167	126	132
168	126	90
169	127	133
170	127	90
171	128	136
172	128	90
173	129	124
174	129	90
175	131	127
176	131	90
177	132	135
178	132	90
\.


--
-- Data for Name: chat_contact; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.chat_contact (id, user_id) FROM stdin;
90	67
91	69
92	68
93	74
94	82
95	88
96	78
97	93
98	95
99	96
100	99
101	101
102	81
103	102
104	107
105	106
106	108
107	109
108	111
109	116
110	117
122	119
124	123
125	125
127	131
128	134
129	138
130	139
131	142
132	144
133	147
134	146
135	150
136	148
137	152
138	151
139	154
140	155
143	160
144	165
148	170
149	173
152	67
153	175
154	176
155	176
156	177
157	178
158	175
159	181
\.


--
-- Data for Name: chat_contact_friends; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.chat_contact_friends (id, from_contact_id, to_contact_id) FROM stdin;
\.


--
-- Data for Name: chat_message; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.chat_message (id, content, "timestamp", contact_id) FROM stdin;
22	Hi	2020-11-04 05:56:23.803494+00	92
23	hey	2020-11-04 05:57:03.853691+00	90
24	hey	2020-11-04 07:53:29.731305+00	90
25	hey??	2020-11-04 10:08:19.761153+00	90
26	hey	2020-11-04 16:52:19.115446+00	90
27	hey	2020-11-04 16:53:10.325719+00	122
28	hey ayush34	2020-11-04 16:53:19.796871+00	90
29	Heyy	2020-11-04 19:03:42.564755+00	108
30	Hey	2020-11-04 19:03:55.120543+00	108
31	Hi	2020-11-09 07:41:29.36951+00	99
32	Hey swati ping me on what's app 9174056977 . I don't think app is working properly	2020-11-10 14:58:05.710021+00	124
33	Hi	2020-11-13 05:49:38.235104+00	99
34	haa swati	2020-12-03 11:00:51.51014+00	90
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-10-15 01:28:53.821347+00	3	ayush123	1	[{"added": {}}]	8	1
2	2020-10-15 01:29:42.819191+00	1	ayush123	1	[{"added": {}}]	19	1
3	2020-10-15 10:44:14.475662+00	4	ayush2	3		8	1
4	2020-10-15 10:44:24.76699+00	3	ayush123	3		8	1
5	2020-10-15 10:52:41.344377+00	5	ayush567	3		8	1
6	2020-10-15 10:53:20.57585+00	6	ayush3	1	[{"added": {}}]	8	1
7	2020-10-15 10:53:29.794999+00	6	ayush3	2	[]	8	1
8	2020-10-15 10:57:02.973555+00	2	ayush	1	[{"added": {}}]	19	1
9	2020-10-15 10:57:19.705396+00	3	ayush3	1	[{"added": {}}]	19	1
10	2020-10-15 10:57:31.916415+00	4	shubham	1	[{"added": {}}]	19	1
11	2020-10-15 10:57:37.217059+00	1	1	1	[{"added": {}}]	21	1
12	2020-10-15 17:12:08.138547+00	2	ID: 2 - shubham45	2	[{"changed": {"fields": ["Age"]}}]	2	1
13	2020-10-15 17:12:20.601562+00	1	ID: 1 - shubham	2	[{"changed": {"fields": ["Age"]}}]	2	1
14	2020-10-17 10:55:20.216334+00	7	FriendRequest object (7)	3		1	1
15	2020-10-17 10:55:20.220718+00	6	FriendRequest object (6)	3		1	1
16	2020-10-17 10:55:20.222501+00	5	FriendRequest object (5)	3		1	1
17	2020-10-17 10:55:20.22395+00	4	FriendRequest object (4)	3		1	1
18	2020-10-17 11:19:40.730463+00	8	shubham	3		19	1
19	2020-10-17 11:19:40.734617+00	4	shubham	3		19	1
20	2020-10-17 11:20:15.146969+00	8	FriendRequest object (8)	3		1	1
21	2020-10-17 11:22:37.039295+00	9	FriendRequest object (9)	3		1	1
22	2020-10-17 11:22:58.770618+00	9	shubham	3		19	1
23	2020-10-17 11:31:05.541697+00	11	FriendRequest object (11)	3		1	1
24	2020-10-17 11:31:05.545801+00	10	FriendRequest object (10)	3		1	1
25	2020-10-17 11:31:43.21883+00	10	shubham	3		19	1
26	2020-10-17 11:32:58.239619+00	12	shubham	3		19	1
27	2020-10-17 11:32:58.2431+00	11	shubham	3		19	1
28	2020-10-17 11:33:32.340187+00	13	FriendRequest object (13)	3		1	1
29	2020-10-17 11:33:32.343195+00	12	FriendRequest object (12)	3		1	1
30	2020-10-18 06:33:21.63176+00	13	13	3		21	1
31	2020-10-18 06:33:21.634848+00	12	12	3		21	1
32	2020-10-18 06:33:21.636226+00	11	11	3		21	1
33	2020-10-18 06:33:21.63754+00	10	10	3		21	1
34	2020-10-18 06:33:21.642585+00	9	9	3		21	1
35	2020-10-18 06:33:21.64765+00	8	8	3		21	1
36	2020-10-18 06:33:21.649007+00	7	7	3		21	1
37	2020-10-18 06:33:21.650506+00	6	6	3		21	1
38	2020-10-18 06:33:21.651784+00	5	5	3		21	1
39	2020-10-18 06:33:21.653079+00	4	4	3		21	1
40	2020-10-18 06:33:21.655209+00	3	3	3		21	1
41	2020-10-18 06:33:21.656521+00	2	2	3		21	1
42	2020-10-18 06:33:21.661765+00	1	1	3		21	1
43	2020-10-18 06:33:37.134846+00	14	shubham	3		19	1
44	2020-10-18 06:33:37.138388+00	13	shubham	3		19	1
45	2020-10-18 06:33:37.139882+00	7	saagar	3		19	1
46	2020-10-18 06:33:37.141235+00	6	xavier	3		19	1
47	2020-10-18 06:33:37.142828+00	5	shubham45	3		19	1
48	2020-10-18 06:33:37.144257+00	3	ayush3	3		19	1
49	2020-10-18 06:33:37.146527+00	2	ayush	3		19	1
50	2020-10-18 06:33:51.492492+00	16	FriendRequest object (16)	3		1	1
51	2020-10-18 06:33:51.495172+00	15	FriendRequest object (15)	3		1	1
52	2020-10-18 06:33:51.496661+00	14	FriendRequest object (14)	3		1	1
53	2020-10-18 06:46:28.941213+00	18	FriendRequest object (18)	3		1	1
54	2020-10-18 06:46:28.944395+00	17	FriendRequest object (17)	3		1	1
55	2020-10-18 06:50:49.742765+00	16	shubham	3		19	1
56	2020-10-18 06:50:49.745273+00	15	shubham	3		19	1
57	2020-10-18 06:51:05.504421+00	19	FriendRequest object (19)	3		1	1
58	2020-10-18 10:52:10.228414+00	18	shubham	3		19	1
59	2020-10-18 10:52:10.232443+00	17	shubham	3		19	1
60	2020-10-18 10:52:22.956526+00	22	FriendRequest object (22)	3		1	1
61	2020-10-18 10:52:22.960449+00	21	FriendRequest object (21)	3		1	1
62	2020-10-18 10:52:22.962539+00	20	FriendRequest object (20)	3		1	1
63	2020-10-18 10:57:17.096757+00	21	21	3		21	1
64	2020-10-18 10:57:17.099803+00	20	20	3		21	1
65	2020-10-18 10:57:17.101127+00	19	19	3		21	1
66	2020-10-18 10:57:17.102582+00	18	18	3		21	1
67	2020-10-18 10:57:17.103969+00	17	17	3		21	1
68	2020-10-18 10:57:17.105259+00	16	16	3		21	1
69	2020-10-18 10:57:17.106733+00	15	15	3		21	1
70	2020-10-18 10:57:17.10792+00	14	14	3		21	1
71	2020-10-18 10:57:45.334046+00	25	FriendRequest object (25)	2	[{"changed": {"fields": ["To user"]}}]	1	1
72	2020-10-18 11:11:51.26305+00	21	xavier	1	[{"added": {}}]	19	1
73	2020-10-18 11:11:58.098833+00	23	23	1	[{"added": {}}]	21	1
74	2020-10-18 15:37:57.238834+00	3	ID: 3 - saagar	2	[{"changed": {"fields": ["Location"]}}]	2	1
75	2020-10-18 16:11:16.794626+00	3	ID: 3 - saagar	2	[{"changed": {"fields": ["Location"]}}]	2	1
76	2020-10-18 16:48:01.522083+00	1	ID: 1 - shubham	2	[]	2	1
77	2020-10-18 16:48:01.835568+00	1	ID: 1 - shubham	2	[]	2	1
78	2020-10-18 16:55:04.644433+00	3	ID: 3 - saagar	2	[{"changed": {"fields": ["Location"]}}]	2	1
79	2020-10-18 17:03:20.514692+00	3	ID: 3 - saagar	2	[{"changed": {"fields": ["Location"]}}]	2	1
80	2020-10-18 17:05:28.200697+00	3	ID: 3 - saagar	2	[{"changed": {"fields": ["Location"]}}]	2	1
81	2020-10-18 17:09:44.380136+00	3	ID: 3 - saagar	2	[{"changed": {"fields": ["Location"]}}]	2	1
82	2020-10-21 07:05:26.506684+00	6	ID: 6 - null	3		2	1
83	2020-10-21 11:01:17.078221+00	50	shubham45	3		19	1
84	2020-10-21 11:01:17.081879+00	49	shubham45	3		19	1
85	2020-10-21 11:01:17.0833+00	48	shubham45	3		19	1
86	2020-10-21 11:01:17.084803+00	47	shubham45	3		19	1
87	2020-10-21 11:01:17.086097+00	46	shubham45	3		19	1
88	2020-10-21 11:01:17.087501+00	45	shubham45	3		19	1
89	2020-10-21 11:01:17.08918+00	44	shubham45	3		19	1
90	2020-10-21 11:01:17.090752+00	43	shubham45	3		19	1
91	2020-10-21 11:01:17.092324+00	42	shubham45	3		19	1
92	2020-10-21 11:01:17.095088+00	41	shubham45	3		19	1
93	2020-10-21 11:01:17.09664+00	40	shubham45	3		19	1
94	2020-10-21 11:01:17.099413+00	39	shubham45	3		19	1
95	2020-10-21 11:01:17.102276+00	38	shubham45	3		19	1
96	2020-10-21 11:01:17.103558+00	37	shubham45	3		19	1
97	2020-10-21 11:01:17.105285+00	36	shubham45	3		19	1
98	2020-10-21 11:01:17.10668+00	35	shubham45	3		19	1
99	2020-10-21 11:01:17.108231+00	34	shubham45	3		19	1
100	2020-10-21 11:01:17.109635+00	33	shubham45	3		19	1
101	2020-10-21 11:01:17.112089+00	32	shubham45	3		19	1
102	2020-10-21 11:01:17.113839+00	31	shubham45	3		19	1
103	2020-10-21 11:01:17.115296+00	30	shubham45	3		19	1
104	2020-10-21 11:01:17.118149+00	29	shubham45	3		19	1
105	2020-10-21 11:01:17.119532+00	28	shubham45	3		19	1
106	2020-10-21 11:01:17.122357+00	27	shubham45	3		19	1
107	2020-10-21 11:01:17.123923+00	26	shubham45	3		19	1
108	2020-10-21 11:01:17.125386+00	25	shubham45	3		19	1
109	2020-10-21 11:01:17.126919+00	24	shubham45	3		19	1
110	2020-10-21 11:01:17.128403+00	23	shubham45	3		19	1
111	2020-10-21 11:01:17.129822+00	22	sanyam1992000	3		19	1
112	2020-10-21 11:01:17.132153+00	21	xavier	3		19	1
113	2020-10-21 11:01:17.133476+00	20	shubham45	3		19	1
114	2020-10-21 11:01:17.134946+00	19	shubham	3		19	1
115	2020-10-21 11:01:38.966579+00	51	51	3		21	1
116	2020-10-21 11:01:38.968995+00	50	50	3		21	1
117	2020-10-21 11:01:38.970501+00	49	49	3		21	1
118	2020-10-21 11:01:38.972795+00	48	48	3		21	1
119	2020-10-21 11:01:38.974177+00	47	47	3		21	1
120	2020-10-21 11:01:38.975573+00	46	46	3		21	1
121	2020-10-21 11:01:38.97696+00	45	45	3		21	1
122	2020-10-21 11:01:38.980292+00	44	44	3		21	1
123	2020-10-21 11:01:38.98158+00	43	43	3		21	1
124	2020-10-21 11:01:38.982822+00	42	42	3		21	1
125	2020-10-21 11:01:38.984616+00	41	41	3		21	1
126	2020-10-21 11:01:38.985979+00	40	40	3		21	1
127	2020-10-21 11:01:38.98718+00	39	39	3		21	1
128	2020-10-21 11:01:38.988591+00	38	38	3		21	1
129	2020-10-21 11:01:38.990126+00	37	37	3		21	1
130	2020-10-21 11:01:38.991515+00	36	36	3		21	1
131	2020-10-21 11:01:38.992839+00	35	35	3		21	1
132	2020-10-21 11:01:38.994345+00	34	34	3		21	1
133	2020-10-21 11:01:38.995615+00	33	33	3		21	1
134	2020-10-21 11:01:38.99701+00	32	32	3		21	1
135	2020-10-21 11:01:38.998318+00	31	31	3		21	1
136	2020-10-21 11:01:38.999538+00	30	30	3		21	1
137	2020-10-21 11:01:39.000763+00	29	29	3		21	1
138	2020-10-21 11:01:39.002112+00	28	28	3		21	1
139	2020-10-21 11:01:39.007858+00	27	27	3		21	1
140	2020-10-21 11:01:39.009379+00	26	26	3		21	1
141	2020-10-21 11:01:39.010675+00	25	25	3		21	1
142	2020-10-21 11:01:39.012223+00	24	24	3		21	1
143	2020-10-21 11:01:39.013632+00	23	23	3		21	1
144	2020-10-21 11:01:39.01497+00	22	22	3		21	1
145	2020-10-21 11:01:49.821129+00	28	FriendRequest object (28)	3		1	1
146	2020-10-21 11:01:49.823733+00	27	FriendRequest object (27)	3		1	1
147	2020-10-21 11:01:49.825168+00	23	FriendRequest object (23)	3		1	1
148	2020-10-21 11:04:37.074137+00	51	shubham	3		19	1
149	2020-10-21 17:35:29.263272+00	52	shubham	3		19	1
150	2020-10-21 17:36:09.217589+00	31	FriendRequest object (31)	3		1	1
151	2020-10-21 17:36:09.220493+00	30	FriendRequest object (30)	3		1	1
152	2020-10-21 17:36:09.222002+00	29	FriendRequest object (29)	3		1	1
153	2020-10-21 17:37:54.504095+00	54	shubham	3		19	1
154	2020-10-21 17:37:54.507074+00	53	shubham	3		19	1
155	2020-10-21 17:38:08.814512+00	34	FriendRequest object (34)	3		1	1
156	2020-10-21 17:38:08.818631+00	33	FriendRequest object (33)	3		1	1
157	2020-10-21 17:38:08.819962+00	32	FriendRequest object (32)	3		1	1
158	2020-10-21 17:41:25.359431+00	56	shubham	3		19	1
159	2020-10-21 17:41:25.362913+00	55	shubham	3		19	1
160	2020-10-21 17:46:18.825088+00	37	FriendRequest object (37)	3		1	1
161	2020-10-21 17:46:18.828397+00	36	FriendRequest object (36)	3		1	1
162	2020-10-21 17:46:18.829815+00	35	FriendRequest object (35)	3		1	1
163	2020-10-21 17:48:50.955152+00	58	shubham	3		19	1
164	2020-10-21 17:48:50.958743+00	57	shubham	3		19	1
165	2020-10-21 17:49:09.66839+00	40	FriendRequest object (40)	3		1	1
166	2020-10-21 17:49:09.677196+00	39	FriendRequest object (39)	3		1	1
167	2020-10-21 17:49:09.678743+00	38	FriendRequest object (38)	3		1	1
168	2020-10-22 04:18:29.000336+00	59	shubham	3		19	1
169	2020-10-22 04:19:01.530297+00	41	FriendRequest object (41)	3		1	1
170	2020-10-22 04:34:52.70117+00	60	shubham	3		19	1
171	2020-10-22 04:35:04.499274+00	43	FriendRequest object (43)	3		1	1
172	2020-10-22 04:35:04.501664+00	42	FriendRequest object (42)	3		1	1
173	2020-10-22 06:46:39.277237+00	61	shubham	3		19	1
174	2020-10-22 06:46:54.008247+00	45	FriendRequest object (45)	3		1	1
175	2020-10-22 06:46:54.011424+00	44	FriendRequest object (44)	3		1	1
176	2020-10-22 07:05:57.249789+00	47	FriendRequest object (47)	3		1	1
177	2020-10-22 07:05:57.253439+00	46	FriendRequest object (46)	3		1	1
178	2020-10-27 10:19:58.267983+00	2	shubham	3		8	1
179	2020-10-27 10:19:58.270158+00	7	shubham45	3		8	1
180	2020-10-27 10:20:58.263782+00	2	ID: 2 - shubham45	3		2	1
181	2020-10-27 10:20:58.266593+00	1	ID: 1 - shubham	3		2	1
182	2020-10-27 10:43:20.823298+00	15	Swati	3		8	1
183	2020-10-27 10:46:24.818188+00	16	Swati	3		8	1
184	2020-10-27 17:30:46.937677+00	52	52	3		21	1
185	2020-10-27 17:31:30.292115+00	4	ID: 4 - xavier	2	[{"changed": {"fields": ["Profile_picture"]}}]	2	1
186	2020-10-27 17:34:22.665509+00	10	ID: 10 - Swati	2	[{"changed": {"fields": ["Sex"]}}]	2	1
187	2020-10-27 17:34:50.646982+00	10	ID: 10 - Swati	2	[{"changed": {"fields": ["Sex"]}}]	2	1
188	2020-10-27 17:37:43.518593+00	73	Swati	3		19	1
189	2020-10-27 17:37:43.5216+00	72	Swati	3		19	1
190	2020-10-27 17:37:43.522932+00	71	Swati	3		19	1
191	2020-10-27 17:37:43.524241+00	70	Swati	3		19	1
192	2020-10-27 17:37:43.525525+00	69	Swati	3		19	1
193	2020-10-27 17:37:43.526846+00	68	Swati	3		19	1
194	2020-10-27 17:37:43.528351+00	67	Swati	3		19	1
195	2020-10-27 17:37:43.529725+00	66	Swati	3		19	1
196	2020-10-27 17:37:43.530934+00	65	Swati	3		19	1
197	2020-10-27 17:48:04.838923+00	68	68	3		21	1
198	2020-10-27 17:48:04.84226+00	67	67	3		21	1
199	2020-10-27 17:48:04.843844+00	66	66	3		21	1
200	2020-10-27 17:48:04.845204+00	65	65	3		21	1
201	2020-10-27 17:48:04.846485+00	64	64	3		21	1
202	2020-10-27 17:48:04.847873+00	63	63	3		21	1
203	2020-10-27 17:48:04.849199+00	62	62	3		21	1
204	2020-10-27 17:48:04.850475+00	61	61	3		21	1
205	2020-10-27 17:48:04.851808+00	60	60	3		21	1
206	2020-10-27 17:48:04.853022+00	59	59	3		21	1
207	2020-10-27 17:48:04.854286+00	58	58	3		21	1
208	2020-10-27 17:48:04.855692+00	57	57	3		21	1
209	2020-10-27 17:48:04.856934+00	56	56	3		21	1
210	2020-10-27 17:48:04.858121+00	55	55	3		21	1
211	2020-10-27 17:48:04.859326+00	54	54	3		21	1
212	2020-10-27 17:48:04.860567+00	53	53	3		21	1
213	2020-10-27 17:48:16.780777+00	64	Ayush1234	3		19	1
214	2020-10-27 17:48:26.956329+00	13	Ayush1234	3		8	1
215	2020-10-27 17:49:30.450882+00	18	yu	3		8	1
216	2020-10-27 18:03:42.871186+00	12	ayush56	3		8	1
217	2020-10-28 05:38:35.226579+00	14	Gupta321	3		8	1
218	2020-10-28 05:38:35.229658+00	10	Prem	3		8	1
219	2020-10-28 05:38:35.231159+00	17	Swati	3		8	1
220	2020-10-28 05:38:35.232567+00	6	ayush3	3		8	1
221	2020-10-28 05:38:35.233942+00	19	blade	3		8	1
222	2020-10-28 05:38:35.235307+00	8	saagar	3		8	1
223	2020-10-28 05:38:35.236784+00	11	sanyam1992000	3		8	1
224	2020-10-28 05:38:35.237988+00	9	xavier	3		8	1
225	2020-10-28 05:39:07.966042+00	9	Age object (9)	3		3	1
226	2020-10-28 05:39:07.968578+00	8	Age object (8)	3		3	1
227	2020-10-28 05:39:07.970072+00	7	Age object (7)	3		3	1
228	2020-10-28 05:39:07.971569+00	6	Age object (6)	3		3	1
229	2020-10-28 05:39:07.972935+00	5	Age object (5)	3		3	1
230	2020-10-28 05:39:07.974413+00	4	Age object (4)	3		3	1
231	2020-10-28 05:39:07.975832+00	3	Age object (3)	3		3	1
232	2020-10-28 05:39:07.977023+00	2	Age object (2)	3		3	1
233	2020-10-28 05:39:07.978304+00	1	Age object (1)	3		3	1
234	2020-10-28 05:39:19.603603+00	6	DateRequest object (6)	3		24	1
235	2020-10-28 05:39:19.607245+00	5	DateRequest object (5)	3		24	1
236	2020-10-28 05:39:19.608609+00	4	DateRequest object (4)	3		24	1
237	2020-10-28 05:39:29.960816+00	54	FriendRequest object (54)	3		1	1
238	2020-10-28 05:39:29.963075+00	53	FriendRequest object (53)	3		1	1
239	2020-10-28 05:39:29.964489+00	52	FriendRequest object (52)	3		1	1
240	2020-10-28 05:39:29.965879+00	51	FriendRequest object (51)	3		1	1
241	2020-10-28 05:39:29.967205+00	50	FriendRequest object (50)	3		1	1
242	2020-10-28 05:39:29.968524+00	49	FriendRequest object (49)	3		1	1
243	2020-10-28 05:39:29.969871+00	48	FriendRequest object (48)	3		1	1
244	2020-10-28 05:39:42.113907+00	17	Notify object (17)	3		23	1
245	2020-10-28 05:39:42.117132+00	16	Notify object (16)	3		23	1
246	2020-10-28 05:39:42.118565+00	15	Notify object (15)	3		23	1
247	2020-10-28 05:39:42.119928+00	14	Notify object (14)	3		23	1
248	2020-10-28 05:39:42.121203+00	13	Notify object (13)	3		23	1
249	2020-10-28 05:39:42.122549+00	12	Notify object (12)	3		23	1
250	2020-10-28 05:39:42.123966+00	11	Notify object (11)	3		23	1
251	2020-10-28 05:39:42.125189+00	10	Notify object (10)	3		23	1
252	2020-10-28 05:39:42.126385+00	9	Notify object (9)	3		23	1
253	2020-10-28 05:39:42.127751+00	8	Notify object (8)	3		23	1
254	2020-10-28 05:39:42.128977+00	7	Notify object (7)	3		23	1
255	2020-10-28 05:39:42.130302+00	6	Notify object (6)	3		23	1
256	2020-10-28 05:39:42.131771+00	5	Notify object (5)	3		23	1
257	2020-10-28 05:39:42.133058+00	4	Notify object (4)	3		23	1
258	2020-10-28 05:39:42.134504+00	3	Notify object (3)	3		23	1
259	2020-10-28 05:39:42.135799+00	2	Notify object (2)	3		23	1
260	2020-10-28 05:39:55.041049+00	11	ID: 11 - blade	3		2	1
261	2020-10-28 05:39:55.043451+00	10	ID: 10 - Swati	3		2	1
262	2020-10-28 05:39:55.045312+00	9	ID: 9 - Gupta321	3		2	1
263	2020-10-28 05:39:55.046973+00	8	ID: 8 - Ayush1234	3		2	1
264	2020-10-28 05:39:55.048555+00	7	ID: 7 - null	3		2	1
265	2020-10-28 05:39:55.050098+00	5	ID: 5 - sanyam1992000	3		2	1
266	2020-10-28 05:39:55.051546+00	4	ID: 4 - xavier	3		2	1
267	2020-10-28 05:39:55.052887+00	3	ID: 3 - saagar	3		2	1
268	2020-10-28 05:40:06.24646+00	10	Que object (10)	3		4	1
269	2020-10-28 05:40:06.24964+00	9	Que object (9)	3		4	1
270	2020-10-28 05:40:06.25115+00	8	Que object (8)	3		4	1
271	2020-10-28 05:40:06.252452+00	7	Que object (7)	3		4	1
272	2020-10-28 05:40:06.253762+00	6	Que object (6)	3		4	1
273	2020-10-28 05:40:06.255158+00	5	Que object (5)	3		4	1
274	2020-10-28 05:40:06.25649+00	4	Que object (4)	3		4	1
275	2020-10-28 05:40:06.257769+00	3	Que object (3)	3		4	1
276	2020-10-28 05:40:06.259027+00	2	Que object (2)	3		4	1
277	2020-10-28 05:40:06.260311+00	1	Que object (1)	3		4	1
278	2020-10-28 05:59:10.133699+00	14	ID: 14 - ayushe	1	[{"added": {}}]	2	1
279	2020-10-28 05:59:42.590853+00	15	ID: 15 - ayush123	1	[{"added": {}}]	2	1
280	2020-10-28 06:00:13.660203+00	16	ID: 16 - ayush123ff	1	[{"added": {}}]	2	1
281	2020-10-28 06:41:24.654734+00	69	69	3		21	1
282	2020-10-28 06:46:34.662511+00	56	FriendRequest object (56)	3		1	1
283	2020-10-28 06:46:34.665731+00	55	FriendRequest object (55)	3		1	1
284	2020-10-28 07:04:49.742449+00	8	DateRequest object (8)	3		24	1
285	2020-10-28 07:05:01.98429+00	57	FriendRequest object (57)	3		1	1
286	2020-10-28 07:08:39.299084+00	58	FriendRequest object (58)	3		1	1
287	2020-10-28 17:02:11.410926+00	59	FriendRequest object (59)	3		1	1
288	2020-10-28 17:22:05.372866+00	60	FriendRequest object (60)	3		1	1
289	2020-10-28 17:23:55.362474+00	10	DateRequest object (10)	3		24	1
290	2020-10-28 17:32:36.154836+00	61	FriendRequest object (61)	3		1	1
291	2020-10-28 17:33:40.24301+00	62	FriendRequest object (62)	3		1	1
292	2020-10-28 17:34:20.367684+00	17	ID: 17 - ayushes	1	[{"added": {}}]	2	1
293	2020-10-28 17:36:27.487951+00	63	FriendRequest object (63)	3		1	1
294	2020-10-28 17:39:43.609505+00	64	FriendRequest object (64)	3		1	1
295	2020-10-29 04:09:54.640151+00	11	DateRequest object (11)	3		24	1
296	2020-10-29 04:25:35.090913+00	65	FriendRequest object (65)	3		1	1
297	2020-10-29 04:26:52.271554+00	66	FriendRequest object (66)	3		1	1
298	2020-10-29 04:30:29.625994+00	68	FriendRequest object (68)	3		1	1
299	2020-10-29 04:30:29.633255+00	67	FriendRequest object (67)	3		1	1
300	2020-10-29 05:39:28.408887+00	69	FriendRequest object (69)	3		1	1
301	2020-10-29 05:49:05.6699+00	70	FriendRequest object (70)	3		1	1
302	2020-10-29 05:57:43.055443+00	12	DateRequest object (12)	3		24	1
303	2020-10-29 06:04:14.026282+00	13	DateRequest object (13)	3		24	1
304	2020-10-29 06:04:24.879192+00	71	FriendRequest object (71)	3		1	1
305	2020-10-29 06:14:15.548945+00	72	FriendRequest object (72)	3		1	1
306	2020-10-29 06:14:29.327703+00	14	DateRequest object (14)	3		24	1
307	2020-10-29 06:20:22.898919+00	15	DateRequest object (15)	3		24	1
308	2020-10-29 06:20:33.261983+00	74	FriendRequest object (74)	3		1	1
309	2020-10-29 06:20:33.266415+00	73	FriendRequest object (73)	3		1	1
310	2020-10-29 06:20:42.731271+00	76	Ayush34	3		19	1
311	2020-10-29 06:20:42.73349+00	75	Swati	3		19	1
312	2020-10-29 06:21:02.046752+00	19	Notify object (19)	3		23	1
313	2020-10-29 06:21:20.934796+00	70	70	3		21	1
314	2020-10-29 06:24:50.367675+00	16	DateRequest object (16)	3		24	1
315	2020-10-29 06:25:01.647327+00	75	FriendRequest object (75)	3		1	1
316	2020-10-29 06:30:06.917165+00	17	DateRequest object (17)	3		24	1
317	2020-10-29 06:35:11.395685+00	76	FriendRequest object (76)	3		1	1
318	2020-10-29 06:35:20.51463+00	18	DateRequest object (18)	3		24	1
319	2020-10-29 06:35:57.443745+00	77	FriendRequest object (77)	3		1	1
320	2020-10-29 07:13:38.972539+00	20	DateRequest object (20)	3		24	1
321	2020-10-29 07:13:38.983598+00	19	DateRequest object (19)	3		24	1
322	2020-10-29 07:16:38.348474+00	21	DateRequest object (21)	3		24	1
323	2020-10-29 07:17:53.000425+00	22	DateRequest object (22)	3		24	1
324	2020-10-29 09:36:29.023604+00	20	Ayush34	3		8	1
325	2020-10-29 09:36:58.215745+00	17	ID: 17 - ayushes	3		2	1
326	2020-10-29 09:36:58.21964+00	16	ID: 16 - ayush123ff	3		2	1
327	2020-10-29 09:36:58.221351+00	15	ID: 15 - ayush123	3		2	1
328	2020-10-29 09:36:58.222909+00	14	ID: 14 - ayushe	3		2	1
329	2020-10-29 09:36:58.2244+00	12	ID: 12 - Ayush34	3		2	1
330	2020-10-29 09:37:21.416646+00	78	FriendRequest object (78)	3		1	1
331	2020-10-29 09:37:36.983681+00	23	DateRequest object (23)	3		24	1
332	2020-10-29 17:12:40.348955+00	22	sfd	1	[{"added": {}}]	8	1
333	2020-10-29 17:12:48.828427+00	22	sfd	2	[]	8	1
334	2020-10-29 17:13:07.141535+00	78	sfd	1	[{"added": {}}]	19	1
335	2020-10-29 17:13:11.346666+00	71	71	1	[{"added": {}}]	21	1
336	2020-10-29 17:16:14.030096+00	71	71	2	[{"changed": {"fields": ["Messages"]}}]	21	1
337	2020-10-29 17:16:54.95492+00	71	71	2	[{"changed": {"fields": ["Participants"]}}]	21	1
338	2020-10-30 05:03:54.935234+00	79	Anjali	1	[{"added": {}}]	19	1
339	2020-10-30 05:04:04.10018+00	72	72	1	[{"added": {}}]	21	1
340	2020-10-30 09:23:59.61299+00	12	Age object (12)	2	[{"changed": {"fields": ["Age"]}}]	3	1
341	2020-10-30 09:25:08.189011+00	13	ID: 13 - Swati	2	[{"changed": {"fields": ["Sex"]}}]	2	1
342	2020-10-30 15:13:54.75776+00	74	74	3		21	1
343	2020-10-30 15:14:47.682872+00	21	Notify object (21)	3		23	1
344	2020-10-30 17:08:56.225154+00	26	DateRequest object (26)	1	[{"added": {}}]	24	1
345	2020-10-30 17:12:24.964362+00	27	DateRequest object (27)	1	[{"added": {}}]	24	1
346	2020-10-30 17:19:17.095057+00	28	DateRequest object (28)	1	[{"added": {}}]	24	1
347	2020-10-30 17:22:35.378474+00	83	83	3		21	1
348	2020-10-30 17:22:35.381664+00	82	82	3		21	1
349	2020-10-30 17:22:35.383155+00	81	81	3		21	1
350	2020-10-30 17:22:35.384461+00	80	80	3		21	1
351	2020-10-30 17:22:35.38576+00	79	79	3		21	1
352	2020-10-30 17:22:35.387216+00	78	78	3		21	1
353	2020-10-30 17:22:35.388572+00	77	77	3		21	1
354	2020-10-30 17:22:35.389863+00	76	76	3		21	1
355	2020-10-30 17:22:35.395488+00	75	75	3		21	1
356	2020-10-30 17:22:35.396863+00	73	73	3		21	1
357	2020-10-30 17:22:35.398119+00	72	72	3		21	1
358	2020-10-30 17:22:35.399594+00	71	71	3		21	1
359	2020-10-30 17:22:55.472705+00	29	DateRequest object (29)	1	[{"added": {}}]	24	1
360	2020-10-30 17:51:30.856052+00	22	sfd	3		8	1
361	2020-10-31 10:28:55.699115+00	32	Notify object (32)	3		23	1
362	2020-10-31 10:28:55.702408+00	31	Notify object (31)	3		23	1
363	2020-10-31 10:28:55.706432+00	30	Notify object (30)	3		23	1
364	2020-10-31 10:28:55.707919+00	29	Notify object (29)	3		23	1
365	2020-10-31 10:28:55.709365+00	28	Notify object (28)	3		23	1
366	2020-10-31 10:28:55.710699+00	27	Notify object (27)	3		23	1
367	2020-10-31 10:28:55.712044+00	26	Notify object (26)	3		23	1
368	2020-10-31 10:28:55.713346+00	25	Notify object (25)	3		23	1
369	2020-10-31 10:28:55.714599+00	24	Notify object (24)	3		23	1
370	2020-10-31 10:28:55.715868+00	23	Notify object (23)	3		23	1
371	2020-10-31 13:04:31.010377+00	33	Notify object (33)	1	[{"added": {}}]	23	1
372	2020-11-01 06:34:37.56116+00	26	ayushv	1	[{"added": {}}]	8	1
373	2020-11-01 06:34:43.582864+00	26	ayushv	2	[]	8	1
374	2020-11-01 06:36:56.366753+00	26	ayushv	3		8	1
375	2020-11-01 06:37:16.130186+00	18	ID: 18 - Ayush12	3		2	1
376	2020-11-01 11:00:50.899951+00	4	info@3choices.in	1	[{"added": {}}]	12	27
377	2020-11-01 11:01:57.301585+00	25	Abhigupta123	3		8	27
378	2020-11-01 11:39:55.021655+00	1	3choices.in	2	[{"changed": {"fields": ["Domain name", "Display name"]}}]	11	27
379	2020-11-01 15:35:42.374113+00	28	shubham666	3		8	1
380	2020-11-01 15:37:45.120798+00	29	shubhamgg	3		8	1
381	2020-11-02 07:39:14.739573+00	85	85	3		21	1
382	2020-11-02 07:39:14.742834+00	84	84	3		21	1
383	2020-11-02 07:39:58.932414+00	60	Reject object (60)	3		22	1
384	2020-11-02 12:18:22.850802+00	33	Ayushhh_1520	3		8	1
385	2020-11-02 12:24:45.889688+00	35	346tt	3		8	1
386	2020-11-02 12:24:45.892763+00	34	ayush1255	3		8	1
387	2020-11-02 12:24:45.894334+00	30	ayushv56	3		8	1
388	2020-11-02 12:32:29.504876+00	36	hhhsr	3		8	1
389	2020-11-02 13:39:56.066825+00	37	ghddgfx	3		8	1
390	2020-11-02 13:39:56.070505+00	38	shubhamhhh	3		8	1
391	2020-11-02 13:43:42.133024+00	39	hvvjvjdv	3		8	1
392	2020-11-02 13:44:29.085556+00	40	hvvjvjdv	3		8	1
393	2020-11-02 14:35:08.048563+00	41	shubhamjnj	3		8	1
394	2020-11-02 16:32:45.690537+00	42	gghhh	3		8	1
395	2020-11-02 16:41:13.18947+00	44	hdduygx	3		8	1
396	2020-11-02 19:42:15.19161+00	47	Abhigupta	3		8	27
397	2020-11-03 00:39:20.71209+00	21	Swati	3		8	1
398	2020-11-03 00:39:30.812185+00	31	Parmeet_singh	3		8	1
399	2020-11-03 00:39:30.814468+00	32	Rishi	3		8	1
400	2020-11-03 01:22:57.268719+00	48	ayush3	3		8	1
401	2020-11-03 08:02:06.208693+00	51	Abhigupta	3		8	27
402	2020-11-03 08:11:50.858952+00	52	Abhigupta	3		8	27
403	2020-11-03 08:18:25.083014+00	53	Abhigupta	3		8	27
404	2020-11-03 09:23:57.489284+00	25	ID: 25 - null	3		2	1
405	2020-11-03 09:26:03.993291+00	26	ID: 26 - null	3		2	1
406	2020-11-03 09:27:21.595917+00	27	ID: 27 - null	3		2	1
407	2020-11-03 09:28:40.43171+00	28	ID: 28 - null	3		2	1
408	2020-11-03 09:30:41.963449+00	29	ID: 29 - null	3		2	1
409	2020-11-03 10:08:44.919991+00	24	Ayush12	3		8	1
410	2020-11-03 10:08:44.92303+00	49	ayush35	3		8	1
411	2020-11-03 10:18:48.159264+00	33	DateRequest object (33)	3		24	1
412	2020-11-03 10:18:48.162145+00	32	DateRequest object (32)	3		24	1
413	2020-11-03 10:18:48.163663+00	31	DateRequest object (31)	3		24	1
414	2020-11-03 10:50:09.254066+00	56	Abhigupta	3		8	27
415	2020-11-03 10:52:53.750904+00	57	Abhigupta	3		8	27
416	2020-11-03 12:44:14.422046+00	22	ID: 22 - Abhigupta	3		2	1
417	2020-11-03 13:12:14.018364+00	59	Abhigupta	3		8	27
418	2020-11-03 13:12:14.020966+00	58	Abhigupta1	3		8	27
419	2020-11-03 13:35:18.809873+00	32	ID: 32 - Abhigupta	3		2	1
420	2020-11-03 13:41:04.453161+00	80	FriendRequest object (80)	3		1	1
421	2020-11-03 13:41:04.455691+00	79	FriendRequest object (79)	3		1	1
422	2020-11-03 13:41:40.832748+00	31	ID: 31 - sahn	3		2	1
423	2020-11-03 13:41:40.8388+00	30	ID: 30 - null	3		2	1
424	2020-11-03 13:41:40.84063+00	21	ID: 21 - ayushv56	3		2	1
425	2020-11-03 13:41:40.84219+00	20	ID: 20 - Ayush12	3		2	1
426	2020-11-03 13:42:24.937846+00	43	adf	3		8	1
427	2020-11-03 13:42:24.94505+00	45	ayushvss	3		8	1
428	2020-11-03 13:42:24.946517+00	46	ayushvvvv	3		8	1
429	2020-11-03 13:42:24.950419+00	55	sahn	3		8	1
430	2020-11-03 14:01:33.606011+00	60	safre	3		8	1
431	2020-11-03 14:12:11.637574+00	61	Abhigupta	3		8	27
432	2020-11-03 14:25:06.268123+00	62	abhigupta1	3		8	27
433	2020-11-03 14:41:28.946903+00	20	Que object (20)	2	[{"changed": {"fields": ["Username"]}}]	4	1
434	2020-11-03 16:53:05.439989+00	20	Age object (20)	2	[{"changed": {"fields": ["Age"]}}]	3	1
435	2020-11-03 17:23:14.958959+00	35	ID: 35 - ayush344	3		2	1
436	2020-11-03 17:27:05.376923+00	36	ID: 36 - null	3		2	1
437	2020-11-04 01:10:54.639264+00	34	ID: 34 - abhigupta1	3		2	1
438	2020-11-04 01:10:54.644237+00	33	ID: 33 - Abhigupta	3		2	1
439	2020-11-04 05:02:22.442488+00	63	ayush344	3		8	1
440	2020-11-04 05:06:56.681397+00	36	DateRequest object (36)	3		24	1
441	2020-11-04 05:07:20.852013+00	22	Age object (22)	3		3	1
442	2020-11-04 05:07:20.855018+00	21	Age object (21)	3		3	1
443	2020-11-04 05:07:20.856443+00	20	Age object (20)	3		3	1
444	2020-11-04 05:07:20.857718+00	19	Age object (19)	3		3	1
445	2020-11-04 05:07:20.859167+00	18	Age object (18)	3		3	1
446	2020-11-04 05:07:20.860584+00	17	Age object (17)	3		3	1
447	2020-11-04 05:07:20.86202+00	16	Age object (16)	3		3	1
448	2020-11-04 05:07:20.863337+00	15	Age object (15)	3		3	1
449	2020-11-04 05:07:20.864581+00	14	Age object (14)	3		3	1
450	2020-11-04 05:07:20.865755+00	13	Age object (13)	3		3	1
451	2020-11-04 05:07:20.86714+00	12	Age object (12)	3		3	1
452	2020-11-04 05:07:20.868442+00	11	Age object (11)	3		3	1
453	2020-11-04 05:07:20.869652+00	10	Age object (10)	3		3	1
454	2020-11-04 05:07:32.923818+00	20	Count object (20)	3		25	1
455	2020-11-04 05:07:32.926799+00	19	Count object (19)	3		25	1
456	2020-11-04 05:07:32.928265+00	18	Count object (18)	3		25	1
457	2020-11-04 05:07:32.929636+00	17	Count object (17)	3		25	1
458	2020-11-04 05:07:32.931107+00	16	Count object (16)	3		25	1
459	2020-11-04 05:07:32.932469+00	15	Count object (15)	3		25	1
460	2020-11-04 05:07:32.933963+00	14	Count object (14)	3		25	1
461	2020-11-04 05:07:32.93538+00	13	Count object (13)	3		25	1
462	2020-11-04 05:07:32.936686+00	12	Count object (12)	3		25	1
463	2020-11-04 05:07:32.937942+00	11	Count object (11)	3		25	1
464	2020-11-04 05:07:32.939301+00	10	Count object (10)	3		25	1
465	2020-11-04 05:07:32.940605+00	9	Count object (9)	3		25	1
466	2020-11-04 05:07:32.941834+00	8	Count object (8)	3		25	1
467	2020-11-04 05:07:32.943102+00	7	Count object (7)	3		25	1
468	2020-11-04 05:07:32.944336+00	6	Count object (6)	3		25	1
469	2020-11-04 05:07:32.945552+00	5	Count object (5)	3		25	1
470	2020-11-04 05:07:32.94682+00	4	Count object (4)	3		25	1
471	2020-11-04 05:07:32.948238+00	3	Count object (3)	3		25	1
472	2020-11-04 05:07:32.94954+00	2	Count object (2)	3		25	1
473	2020-11-04 05:07:32.950855+00	1	Count object (1)	3		25	1
474	2020-11-04 05:07:52.298131+00	4	Friend object (4)	3		27	1
475	2020-11-04 05:07:52.302332+00	3	Friend object (3)	3		27	1
476	2020-11-04 05:07:52.303868+00	2	Friend object (2)	3		27	1
477	2020-11-04 05:07:52.305394+00	1	Friend object (1)	3		27	1
478	2020-11-04 05:08:31.859322+00	37	DateRequest object (37)	1	[{"added": {}}]	24	1
479	2020-11-04 05:09:00.499688+00	37	Notify object (37)	3		23	1
480	2020-11-04 05:09:00.510351+00	36	Notify object (36)	3		23	1
481	2020-11-04 05:09:00.512328+00	35	Notify object (35)	3		23	1
482	2020-11-04 05:09:00.513803+00	34	Notify object (34)	3		23	1
483	2020-11-04 05:09:25.551781+00	38	Notify object (38)	1	[{"added": {}}]	23	1
484	2020-11-04 05:11:12.238782+00	38	Notify object (38)	3		23	1
485	2020-11-04 05:11:27.933937+00	37	DateRequest object (37)	3		24	1
486	2020-11-04 05:11:40.280847+00	17	Date object (17)	3		26	1
487	2020-11-04 05:11:40.283252+00	16	Date object (16)	3		26	1
488	2020-11-04 05:11:40.284784+00	15	Date object (15)	3		26	1
489	2020-11-04 05:11:40.286505+00	14	Date object (14)	3		26	1
490	2020-11-04 05:11:40.294711+00	13	Date object (13)	3		26	1
491	2020-11-04 05:11:40.29706+00	12	Date object (12)	3		26	1
492	2020-11-04 05:11:40.299539+00	11	Date object (11)	3		26	1
493	2020-11-04 05:11:40.305275+00	10	Date object (10)	3		26	1
494	2020-11-04 05:11:40.308019+00	9	Date object (9)	3		26	1
495	2020-11-04 05:11:40.3105+00	8	Date object (8)	3		26	1
496	2020-11-04 05:11:40.31272+00	7	Date object (7)	3		26	1
497	2020-11-04 05:11:40.314832+00	6	Date object (6)	3		26	1
498	2020-11-04 05:11:40.322354+00	5	Date object (5)	3		26	1
499	2020-11-04 05:11:40.323743+00	4	Date object (4)	3		26	1
500	2020-11-04 05:11:40.325092+00	3	Date object (3)	3		26	1
501	2020-11-04 05:11:40.326965+00	2	Date object (2)	3		26	1
502	2020-11-04 05:11:40.329248+00	1	Date object (1)	3		26	1
503	2020-11-04 05:12:04.257671+00	39	ID: 39 - rockstar	3		2	1
504	2020-11-04 05:12:04.264816+00	38	ID: 38 - dd	3		2	1
505	2020-11-04 05:12:04.269987+00	37	ID: 37 - ayush344	3		2	1
506	2020-11-04 05:12:04.273524+00	24	ID: 24 - Xavier	3		2	1
507	2020-11-04 05:12:04.275527+00	23	ID: 23 - Aakash	3		2	1
508	2020-11-04 05:12:04.281369+00	19	ID: 19 - Anjali	3		2	1
509	2020-11-04 05:12:04.282909+00	13	ID: 13 - Swati	3		2	1
510	2020-11-04 05:12:16.883327+00	23	Que object (23)	3		4	1
511	2020-11-04 05:12:16.886377+00	22	Que object (22)	3		4	1
512	2020-11-04 05:12:16.888737+00	21	Que object (21)	3		4	1
513	2020-11-04 05:12:16.890737+00	20	Que object (20)	3		4	1
514	2020-11-04 05:12:16.892499+00	19	Que object (19)	3		4	1
515	2020-11-04 05:12:16.894377+00	18	Que object (18)	3		4	1
516	2020-11-04 05:12:16.896265+00	17	Que object (17)	3		4	1
517	2020-11-04 05:12:16.898031+00	16	Que object (16)	3		4	1
518	2020-11-04 05:12:16.901407+00	15	Que object (15)	3		4	1
519	2020-11-04 05:12:16.903186+00	14	Que object (14)	3		4	1
520	2020-11-04 05:12:16.905096+00	13	Que object (13)	3		4	1
521	2020-11-04 05:12:16.906661+00	12	Que object (12)	3		4	1
522	2020-11-04 05:12:16.914975+00	11	Que object (11)	3		4	1
523	2020-11-04 05:12:50.553373+00	20	Anjali	3		20	1
524	2020-11-04 05:12:50.556123+00	13	Anjali	3		20	1
525	2020-11-04 05:12:50.557766+00	12	Anjali	3		20	1
526	2020-11-04 05:12:50.559325+00	11	Anjali	3		20	1
527	2020-11-04 05:13:00.896696+00	89	Anjali	3		19	1
528	2020-11-04 05:13:00.898827+00	88	Anjali	3		19	1
529	2020-11-04 05:13:00.900245+00	87	Anjali	3		19	1
530	2020-11-04 05:13:00.901704+00	86	Anjali	3		19	1
531	2020-11-04 05:13:00.90318+00	79	Anjali	3		19	1
532	2020-11-04 05:13:18.93717+00	89	89	3		21	1
533	2020-11-04 05:13:18.939401+00	88	88	3		21	1
534	2020-11-04 05:13:18.94084+00	87	87	3		21	1
535	2020-11-04 05:13:18.942259+00	86	86	3		21	1
536	2020-11-04 05:13:50.054616+00	50	Aakash	3		8	1
537	2020-11-04 05:13:50.057252+00	23	Anjali	3		8	1
538	2020-11-04 05:13:50.058718+00	54	Xavier	3		8	1
539	2020-11-04 05:13:50.060089+00	65	alone.8313	3		8	1
540	2020-11-04 05:13:50.061528+00	64	dd	3		8	1
541	2020-11-04 05:13:50.063001+00	66	rockstar	3		8	1
542	2020-11-04 05:52:45.059064+00	40	ID: 40 - Swati	2	[{"changed": {"fields": ["Sex"]}}]	2	1
543	2020-11-04 05:53:38.994072+00	39	DateRequest object (39)	3		24	1
544	2020-11-04 05:53:38.99724+00	38	DateRequest object (38)	3		24	1
545	2020-11-04 05:54:56.307662+00	40	DateRequest object (40)	3		24	1
546	2020-11-04 05:56:10.586811+00	61	Reject object (61)	3		22	1
547	2020-11-04 06:05:18.772718+00	90	90	3		21	1
548	2020-11-04 06:05:32.587667+00	19	Date object (19)	3		26	1
549	2020-11-04 06:05:32.592382+00	18	Date object (18)	3		26	1
550	2020-11-04 06:59:29.146682+00	42	ID: 42 - Raj	3		2	1
551	2020-11-04 07:03:14.775439+00	58	ID: 58 - Raj	3		2	1
552	2020-11-04 07:39:08.476807+00	61	ID: 61 - Raj	3		2	1
553	2020-11-04 07:51:06.169006+00	114	Swati	3		19	1
554	2020-11-04 07:51:06.173877+00	113	Swati	3		19	1
555	2020-11-04 07:51:06.175491+00	112	Swati	3		19	1
556	2020-11-04 07:51:06.177059+00	111	Swati	3		19	1
557	2020-11-04 08:10:44.780728+00	116	Swati	3		19	1
558	2020-11-04 08:10:44.783701+00	115	Swati	3		19	1
559	2020-11-04 09:10:40.254874+00	121	Anna	3		19	1
560	2020-11-04 09:10:40.257997+00	120	Anna	3		19	1
561	2020-11-04 09:10:40.259502+00	119	Anna	3		19	1
562	2020-11-04 09:10:40.260887+00	118	Anna	3		19	1
563	2020-11-04 09:10:40.262241+00	117	Anna	3		19	1
564	2020-11-04 10:07:36.704429+00	58	DateRequest object (58)	1	[{"added": {}}]	24	1
565	2020-11-04 10:09:01.844926+00	113	113	3		21	1
566	2020-11-04 10:09:11.850014+00	112	112	3		21	1
567	2020-11-04 10:09:45.962789+00	95	FriendRequest object (95)	1	[{"added": {}}]	1	1
568	2020-11-04 13:05:06.1393+00	120	Abhigupta	3		8	27
569	2020-11-04 16:54:26.664598+00	60	DateRequest object (60)	3		24	1
570	2020-11-04 17:23:18.65507+00	66	DateRequest object (66)	3		24	1
571	2020-11-04 17:23:18.65836+00	65	DateRequest object (65)	3		24	1
572	2020-11-04 17:23:18.659889+00	64	DateRequest object (64)	3		24	1
573	2020-11-04 17:23:18.661351+00	63	DateRequest object (63)	3		24	1
574	2020-11-04 17:23:18.662791+00	62	DateRequest object (62)	3		24	1
575	2020-11-04 17:23:18.664149+00	61	DateRequest object (61)	3		24	1
576	2020-11-04 17:35:33.033775+00	70	DateRequest object (70)	3		24	1
577	2020-11-04 17:35:33.041274+00	69	DateRequest object (69)	3		24	1
578	2020-11-04 17:35:33.042763+00	68	DateRequest object (68)	3		24	1
579	2020-11-04 17:35:33.044157+00	67	DateRequest object (67)	3		24	1
580	2020-11-05 05:40:21.05033+00	122	Gupta1234	3		8	27
581	2020-11-09 02:38:24.538008+00	75	Reject object (75)	3		22	1
582	2020-11-09 02:38:31.510907+00	74	Reject object (74)	3		22	1
583	2020-11-09 02:44:49.244302+00	76	Reject object (76)	3		22	1
584	2020-11-09 03:11:27.736746+00	116	116	3		21	1
585	2020-11-09 05:45:00.101022+00	71	ID: 71 - Raj	2	[{"changed": {"fields": ["Profile_picture"]}}]	2	1
586	2020-11-11 09:53:05.144934+00	126	AbhiGupta	1	[{"added": {}}]	8	27
587	2020-11-11 09:53:36.06037+00	126	AbhiGupta	2	[]	8	27
588	2020-11-11 09:53:52.179666+00	126	AbhiGupta	3		8	27
589	2020-11-23 14:09:46.919652+00	128	Abhigupta102	3		8	27
590	2020-11-27 13:56:51.910164+00	156	Ritik	3		8	27
591	2020-11-27 14:01:57.363144+00	157	Naman	3		8	27
592	2020-11-28 11:17:46.574555+00	159	Abhi098	3		8	27
593	2020-12-09 11:15:11.391757+00	99	ID: 99 - Abhi098	3		2	27
594	2020-12-25 20:56:41.296808+00	164	check	2	[{"changed": {"fields": ["password"]}}]	8	27
595	2020-12-26 11:22:29.45243+00	168	9717491802	3		8	27
596	2021-01-07 13:23:00.302372+00	164	check	2	[{"changed": {"fields": ["password"]}}]	8	27
597	2021-01-16 19:29:44.072345+00	172	7318311339	3		8	27
598	2021-01-16 19:45:58.181962+00	169	Abhi20	3		8	27
599	2021-01-23 23:02:12.048281+00	167	test	3		8	27
600	2021-01-23 23:02:12.053641+00	163	tester	3		8	27
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	Profile	friendrequest
2	Profile	profile
3	Profile	age
4	Profile	que
5	admin	logentry
6	auth	permission
7	auth	group
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	sites	site
12	account	emailaddress
13	account	emailconfirmation
14	socialaccount	socialaccount
15	socialaccount	socialapp
16	socialaccount	socialtoken
17	knox	authtoken
18	authtoken	token
19	chat	contact
20	chat	message
21	chat	chat
22	Profile	reject
23	Profile	notify
24	Profile	daterequest
25	Profile	count
26	Profile	date
27	Profile	friend
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	Profile	0001_initial	2020-10-13 06:23:23.780498+00
2	Profile	0002_age_que	2020-10-13 06:23:23.795253+00
3	Profile	0003_auto_20201009_1051	2020-10-13 06:23:23.805189+00
4	Profile	0004_auto_20201012_1110	2020-10-13 06:23:23.826494+00
5	contenttypes	0001_initial	2020-10-13 06:23:23.837975+00
6	auth	0001_initial	2020-10-13 06:23:23.88008+00
7	account	0001_initial	2020-10-13 06:23:23.94431+00
8	account	0002_email_max_length	2020-10-13 06:23:23.967356+00
9	admin	0001_initial	2020-10-13 06:23:23.986551+00
10	admin	0002_logentry_remove_auto_add	2020-10-13 06:23:24.009042+00
11	admin	0003_logentry_add_action_flag_choices	2020-10-13 06:23:24.025141+00
12	contenttypes	0002_remove_content_type_name	2020-10-13 06:23:24.055494+00
13	auth	0002_alter_permission_name_max_length	2020-10-13 06:23:24.070129+00
14	auth	0003_alter_user_email_max_length	2020-10-13 06:23:24.086271+00
15	auth	0004_alter_user_username_opts	2020-10-13 06:23:24.100649+00
16	auth	0005_alter_user_last_login_null	2020-10-13 06:23:24.114225+00
17	auth	0006_require_contenttypes_0002	2020-10-13 06:23:24.119785+00
18	auth	0007_alter_validators_add_error_messages	2020-10-13 06:23:24.132909+00
19	auth	0008_alter_user_username_max_length	2020-10-13 06:23:24.149823+00
20	auth	0009_alter_user_last_name_max_length	2020-10-13 06:23:24.164114+00
21	auth	0010_alter_group_name_max_length	2020-10-13 06:23:24.179876+00
22	auth	0011_update_proxy_permissions	2020-10-13 06:23:24.196728+00
23	auth	0012_alter_user_first_name_max_length	2020-10-13 06:23:24.21018+00
24	authtoken	0001_initial	2020-10-13 06:23:24.231202+00
25	authtoken	0002_auto_20160226_1747	2020-10-13 06:23:24.291867+00
26	chat	0001_initial	2020-10-13 06:23:24.366705+00
27	knox	0001_initial	2020-10-13 06:23:24.417607+00
28	knox	0002_auto_20150916_1425	2020-10-13 06:23:24.448885+00
29	knox	0003_auto_20150916_1526	2020-10-13 06:23:24.490584+00
30	knox	0004_authtoken_expires	2020-10-13 06:23:24.507546+00
31	knox	0005_authtoken_token_key	2020-10-13 06:23:24.523849+00
32	knox	0006_auto_20160818_0932	2020-10-13 06:23:24.568674+00
33	knox	0007_auto_20190111_0542	2020-10-13 06:23:24.584196+00
34	sessions	0001_initial	2020-10-13 06:23:24.592968+00
35	sites	0001_initial	2020-10-13 06:23:24.603969+00
36	sites	0002_alter_domain_unique	2020-10-13 06:23:24.613409+00
37	socialaccount	0001_initial	2020-10-13 06:23:24.711408+00
38	socialaccount	0002_token_max_lengths	2020-10-13 06:23:24.768526+00
39	socialaccount	0003_extra_data_default_dict	2020-10-13 06:23:24.79015+00
40	Profile	0005_auto_20201021_1426	2020-10-21 09:56:33.770497+00
41	Profile	0006_reject	2020-10-27 09:33:54.705912+00
42	Profile	0007_auto_20201025_1413	2020-10-27 09:33:54.7304+00
43	Profile	0008_daterequest	2020-10-27 09:33:54.742373+00
44	Profile	0009_count	2020-10-28 05:37:24.412556+00
45	Profile	0010_date_friend	2020-10-30 08:17:57.266495+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
qtvn5s0hiidoga7m49k8nc4fy2xd868r	.eJxVjMsOwiAQRf-FtSEgb5fu-w1kZgCpGkhKuzL-uzbpQrf3nHNfLMK21riNvMQ5sQuT7PS7IdAjtx2kO7Rb59TbuszId4UfdPCpp_y8Hu7fQYVRv7WwmiRKryyKQlCCsmfSQQRJmXzx6KxApV0CA4WMdB5cTlY6R95oQvb-AOBhOAc:1kSDxN:LBpbyuLBSjiY70R1xrOxbksmpFOdsZ0uIDRaHAzxK4Y	2020-10-27 06:38:45.571502+00
uargzya998e9k444atn87emq6j9qpvmk	.eJxVjMsOwiAQRf-FtSEgb5fu-w1kZgCpGkhKuzL-uzbpQrf3nHNfLMK21riNvMQ5sQuT7PS7IdAjtx2kO7Rb59TbuszId4UfdPCpp_y8Hu7fQYVRv7WwmiRKryyKQlCCsmfSQQRJmXzx6KxApV0CA4WMdB5cTlY6R95oQvb-AOBhOAc:1kSkUK:QEvpfxn2xd2RskKOPAeupht8e8IVzYllNqOk65aKFkE	2020-10-28 17:22:56.019036+00
7dhb56ixo00lsy23x9hqj4oezla1psxz	.eJxVjMsOwiAQRf-FtSEgb5fu-w1kZgCpGkhKuzL-uzbpQrf3nHNfLMK21riNvMQ5sQuT7PS7IdAjtx2kO7Rb59TbuszId4UfdPCpp_y8Hu7fQYVRv7WwmiRKryyKQlCCsmfSQQRJmXzx6KxApV0CA4WMdB5cTlY6R95oQvb-AOBhOAc:1kSkUK:QEvpfxn2xd2RskKOPAeupht8e8IVzYllNqOk65aKFkE	2020-10-28 17:22:56.041479+00
h784pjkd5w81oitz9fll8fegqlkg745z	.eJxVjMsOwiAQRf-FtSEgb5fu-w1kZgCpGkhKuzL-uzbpQrf3nHNfLMK21riNvMQ5sQuT7PS7IdAjtx2kO7Rb59TbuszId4UfdPCpp_y8Hu7fQYVRv7WwmiRKryyKQlCCsmfSQQRJmXzx6KxApV0CA4WMdB5cTlY6R95oQvb-AOBhOAc:1kSs2B:HnuBoVz0N47uQmcKx3vsbv44viyWAx8FCAhw8n392bM	2020-10-29 01:26:23.16557+00
4ddehxesuv0zszlds3kj45oa52w042ox	.eJxVjMsOwiAQRf-FtSEgb5fu-w1kZgCpGkhKuzL-uzbpQrf3nHNfLMK21riNvMQ5sQuT7PS7IdAjtx2kO7Rb59TbuszId4UfdPCpp_y8Hu7fQYVRv7WwmiRKryyKQlCCsmfSQQRJmXzx6KxApV0CA4WMdB5cTlY6R95oQvb-AOBhOAc:1kSvec:Is6JzuGWGdiRDlxpPTmL8MPk8j16Gqk7Q_Or6-tHPsU	2020-10-29 05:18:18.519191+00
6dt2zr495zrvfxlxx0vo2ag1rqykth7l	.eJxVjUEOwiAURO_C2hCwFKhL956BfD4fiyIkbXFjvLtt0kTdzpuZ92IO2jK6NtPkUmAnJtnhN_OAdyobCDco18qxlmVKnm8VvtOZX2qgfN67fwcjzOO6Flqh9NJ22ouIEIdOH1ENYpBIaKP1RgvfKROgh4i9NBYMBS2NQdsr9OspINZWFvekKcVEwdEDUman0nL-0k26-pC9P1w6Sck:1kVBzX:fZhDT5KS0a4pTrttg1qqLd1AqRm5xHUj0Aa7tKdEH98	2020-11-04 11:09:15.839979+00
j4ny9okd9qopooembqnkz2iuh2ftzly8	.eJxVjMsOwiAQRf-FtSEgb5fu-w1kZgCpGkhKuzL-uzbpQrf3nHNfLMK21riNvMQ5sQuT7PS7IdAjtx2kO7Rb59TbuszId4UfdPCpp_y8Hu7fQYVRv7WwmiRKryyKQlCCsmfSQQRJmXzx6KxApV0CA4WMdB5cTlY6R95oQvb-AOBhOAc:1kVUMa:ZnE33DAVvCbTUwiElW8Fbxye-b2sUStGohHLykq1TMQ	2020-11-05 06:46:16.227419+00
wodztchily2690rvshpmtax9i2r9hzdc	.eJxVjMsOwiAQRf-FtSEgb5fu-w1kZgCpGkhKuzL-uzbpQrf3nHNfLMK21riNvMQ5sQuT7PS7IdAjtx2kO7Rb59TbuszId4UfdPCpp_y8Hu7fQYVRv7WwmiRKryyKQlCCsmfSQQRJmXzx6KxApV0CA4WMdB5cTlY6R95oQvb-AOBhOAc:1kXLTi:fWbcGGRslrazoB14YEqAiF9KguIgw9RgO_QYvDsNnFs	2020-11-10 09:41:18.225069+00
4zynvzeybgpvznwa8bun5zggv43gzm3h	.eJxVjMsOwiAQRf-FtSEgb5fu-w1kZgCpGkhKuzL-uzbpQrf3nHNfLMK21riNvMQ5sQuT7PS7IdAjtx2kO7Rb59TbuszId4UfdPCpp_y8Hu7fQYVRv7WwmiRKryyKQlCCsmfSQQRJmXzx6KxApV0CA4WMdB5cTlY6R95oQvb-AOBhOAc:1kXSnh:bDqtrcsnUmwBj1d4NXYKgQwx_T5G5qZzaH3WpVHKp8w	2020-11-10 17:30:25.29619+00
j45mkwmkv0jq2sfm0du36xpcr8i0ejx5	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiJqIn0:1kXTKg:kjy-pLwMv4KcxVLCgO8HyWF7GaNqRgSphvrtUzg_6qw	2020-11-10 18:04:30.879255+00
3s302kqb5nleaufffkrz0jtcup8ky7qx	.eJxVjMsOwiAQRf-FtSEgb5fu-w1kZgCpGkhKuzL-uzbpQrf3nHNfLMK21riNvMQ5sQuT7PS7IdAjtx2kO7Rb59TbuszId4UfdPCpp_y8Hu7fQYVRv7WwmiRKryyKQlCCsmfSQQRJmXzx6KxApV0CA4WMdB5cTlY6R95oQvb-AOBhOAc:1kYYYY:6-OYkhdcMOpLN5EeiUPIFeFQov0wUREjXkMvIqqkD6U	2020-11-13 17:51:18.192551+00
y4qn7l40oywuhaxxhc8phopp0txijqkx	.eJxVjMsOwiAQRf-FtSEgb5fu-w1kZgCpGkhKuzL-uzbpQrf3nHNfLMK21riNvMQ5sQuT7PS7IdAjtx2kO7Rb59TbuszId4UfdPCpp_y8Hu7fQYVRv7WwmiRKryyKQlCCsmfSQQRJmXzx6KxApV0CA4WMdB5cTlY6R95oQvb-AOBhOAc:1kYo7n:xXrzJ09ryCagqg5wC4qaYhXhPnwkp_5CQ37TaPOi9bg	2020-11-14 10:28:43.971528+00
3tul3o9czxekk6z4dr4lft1ulz5zgqrn	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiJwIn0:1kYraK:YjC012ak8ED4jcrcIHmaDECjG5k0E1F482OeShGnM-c	2020-11-14 14:10:24.293303+00
xrvo55vh9x23f6tes1ururztetmlxhwj	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kZAOc:5HtD0gPbaqiCFcTCXlv68K24BQbeuPv93LEOM896cGQ	2020-11-15 10:15:34.323846+00
ehwefteajd1cbnr8j0nvq22oyj4xprf3	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kZW1o:iQCAHF1ib1E9EmkA5Oa-lBBygJco11937oRTfJE2XbU	2020-11-16 09:21:28.977195+00
t2ypigpfavpkhua1ye48aio7lylmj0bz	.eJxVjEEOwiAUBe_CuiFgKdAu3XsG8vmARRGStpgY491tTWPS7cy89yaAWGpezNNPMUTvjH9ATGTINaXmb-vsJzKQF2mIgbqMP2CiWxk_Mgt493kT7gb5WiiWvEzR0i2hu53ppTifznt7OBhhHtc1kwK55bqVlgWE0LfyhKJnPUePOmirJLOtUA46CNhxpUF5J7lSqDuBlny-o-FJ3w:1kZYmD:pu-pK7x9KwBL4hjrvUM0j3wN0i-vFoI-1TMwvCmjRGU	2020-11-16 12:17:33.628116+00
s1i6n5i1wzjg2x74lmp6bga5ayq37yir	.eJxVj00OwiAQhe_C2hCwLVCX7j0DGYbBoghJW9wY725Jmqjb972fvBezUNfJ1oVmGz07MckOv5oDvFNuwN8gXwvHktc5Ot4sfKcLvxRP6bx7_womWKYtLVSP0knTKScCQhg7dcR-FKNEQhOM00q4rtceBgg4SG1Ak1dSazRDj24rBcRS82qfNMcQyVt6QEzslGtKX9pG2w3B3h-lLEnH:1kZYtj:yQDtBMoKWfN2WstDahMdHzslQ9oIm9VBGEPvhoXhZpM	2020-11-16 12:25:19.027024+00
79wk43rxn4zov75c31q1mf0pa1astq1c	.eJxVj00OwiAQhe_C2hCwLVCX7j0DGYbBoghJW9wY725Jmqjb972fvBezUNfJ1oVmGz07MckOv5oDvFNuwN8gXwvHktc5Ot4sfKcLvxRP6bx7_womWKYtLVSP0knTKScCQhg7dcR-FKNEQhOM00q4rtceBgg4SG1Ak1dSazRDj24rBcRS82qfNMcQyVt6QEzslGtKX9pG2w1g7w-lv0n4:1kZdFt:JSqkGN0ey3abpB5uO1UbNHLPdAS2tRiAr9OZOqrgG-0	2020-11-16 17:04:29.340297+00
b8kqbe3nh6c384hv8t4p9cp6jwv5brhj	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIxaSJ9:1kZrWg:gLvhYuZEbgs127L1781g2Dml1VuRz5ttXNTc2dlppjg	2020-11-17 08:18:46.278099+00
7xotov3qdwxymml5zfqxobkkjk6rbu1p	.eJxVjUkOwiAYhe_C2hAoY7t07xkIw49FEZK2uDHeXZo0UZfvfW94IWPbNpu2wmJSQBMaFDr9ms76O5SdhJst14p9LduSHN4j-KArvtQA-Xxk_wZmu8697TVRA9UBuHBBQlSUOWBM6RjCCJZ5FgkXVEapCCddeCGVdEJzNciR-T5qva-tbOYJS4oJgoGHTRlNpeX8pftp_6MP9P4At3hJhw:1kZvs0:UMAm5j_kZDb8cWKaWaDxsXT9YQgzj1iPN0TBAAClKTM	2020-11-17 12:57:04.241974+00
fnnm7u7c04mela9q01jzv862c4hgnzci	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kZw6V:DiCXzWcQv2oFzltYvu7fuDeTXphmwItBzYSeAwLLgo4	2020-11-17 13:12:03.153625+00
l963u86cf03itsv0d0zisnzo6pcw5x5w	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kZx1a:SF5zeqSReReswfG0eSuEWD1Hy0zpxRm1PoKpYOW0c1I	2020-11-17 14:11:02.798731+00
ot9n90m709ib59htdob0v1ftde854y04	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIxeSJ9:1kaBmJ:fG2VpL2x1uXwO_Du1kGgdGapRnSJy0TpQ2jZBw6eRDM	2020-11-18 05:56:15.51019+00
h54eefsel04yf7bogfv6lxj08wowc3gz	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIxeiJ9:1kaBnt:PVMOlDiEan0rRHxshjQ5xmX_oFAR546vKrrh2xxw8GU	2020-11-18 05:57:53.403805+00
gvnbtxwso8vl0p1rw794urud38e5eh5p	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIyMSJ9:1kaBop:01SvocsWFk2Fc9XwRvUZdulRr9OZa1-sa1VDBsvhNUU	2020-11-18 05:58:51.205975+00
7uui1olf11ca3u2zxtfh8o242qyi4tr2	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIyMiJ9:1kaBql:hvAXp2PsMwRCdMyMq9owkf5u_6TA2Winn9CZNJguFcs	2020-11-18 06:00:51.55746+00
rcsdeigffvqsfyezhevwpzfvqkq7qx0q	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIyOSJ9:1kaC0i:yC3MIqzAoLrmK96Fx2HIbB-TfuacLRPlj4qjMV1pu48	2020-11-18 06:11:08.001053+00
udesept7xr1aunxekf5v9ab2nn7mltgr	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIyZiJ9:1kaC72:vh4-I16x20-hUDmeAuWMFFKjbWHpmtPZ4WmjChB74TY	2020-11-18 06:17:40.718738+00
wx5z885d3lraodz574w627xjl39z7hxo	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIyZyJ9:1kaC7y:Bom7esbqFSX6BSBuPAUK9LQ9gKBkYP3CpIQNJH3cna4	2020-11-18 06:18:38.961572+00
tip3cs7kq1kqlg9sfut5jt6c4znqdygh	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIyaCJ9:1kaCFJ:Z4QV98hoaUDsBGBdfxuze8B27J0Ha8dBnsbSpEMuUqE	2020-11-18 06:26:13.356732+00
khp8b0gmpuq3wus4cnk56zdz9o9r1f60	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIyaSJ9:1kaCKz:a5RMOatKO9gfFysLLmy9UeQfTFnPdAyfy76EuiXe-Ks	2020-11-18 06:32:05.218387+00
yrr0fsgzqi63zod7n7bdo97dtrfg48h9	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIyaiJ9:1kaCLD:9WfgBkNk-0vuNTP29VGftHfxMIVd6nUEpa45pgK2ghs	2020-11-18 06:32:19.938241+00
ooaxhdxe9s5y9e4yyyo339n4tiswhmyw	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIycSJ9:1kaCjG:xxYUjTm_XWOI2Eeela86K7gHEgsfQKnnh5WCjuLffEE	2020-11-18 06:57:10.158971+00
11xk9n2lmy928cp5mfm8hw60vsky1ywp	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIyciJ9:1kaCjR:xeVjVa0k8yHKhc01hW8plTUjmYxPofV_mO7MOHFwynI	2020-11-18 06:57:21.154002+00
hcl73r1q89zcql44dtr8v8t54le582xr	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIycyJ9:1kaCnu:2GiQWm0G8kw4jxFlyrDm5c4X8PVeUc1OA75Z-pymx-Q	2020-11-18 07:01:58.690068+00
qshe86lzb6wc7vh0oa6w51erhno6pl4k	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIydSJ9:1kaCpo:nh9ZBRTY02La1O9bfBRES6Ezk7rQ2LYZ-laGeOUVtdU	2020-11-18 07:03:56.415071+00
7f33quvgnlcxwa29l5kvqo7fsp9q60g5	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIydiJ9:1kaCsZ:xe4qSQDJwDJ7pZWMd_cFMa55Nbd3HLyy1ee-A_brifI	2020-11-18 07:06:47.44629+00
80bo5refxjs52itia6lbkmz3vr6z4i64	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIydyJ9:1kaCsf:jpq1d8g1uPBHEQykhgtHGskzQm11NALNUCTm-jkdA70	2020-11-18 07:06:53.455989+00
viakv7qc3huqzro77gxzn454g7f11c8v	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIyeiJ9:1kaD4z:koCmg1qhqv2bAaspcdDeza9VBLV_5OJn-hnOEErVNBc	2020-11-18 07:19:37.19889+00
q4mj571y2px0l3k2arw8uq3aac1tygqp	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIzMiJ9:1kaDCG:DWgmsYwItvPiHEWh8jo_1vxl9oJ3oLKYaELHCJyQJoc	2020-11-18 07:27:08.286557+00
9hxf6ejw3ri3rv8m303smnd2n69k5k7c	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIzNSJ9:1kaDGL:1_nW8muO7lD0CGpDMh9KrhV0lEyFx6_Dlf8l9_k28sU	2020-11-18 07:31:21.734551+00
moksnpyglsy91x45puiw8obpphbscbw3	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIzNiJ9:1kaDHe:VcVpsQ7MIY4pMJbl-Q_1oWwfQl0t2TdVxALUg-1d6HQ	2020-11-18 07:32:42.862481+00
vj834p75mfokll9elfr1jr2r8v2047z6	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kaMPw:8eguDiG_9ZbhdCWxUXTiUwrcg_TX_sCHoonapr_axNY	2020-11-18 17:17:52.308247+00
s9kpmtgskzo6y95deicv4ad7eiasml1h	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1ke9yH:mqmGH2IQOT3yLM0f9UfOMZny-FqbVgaPfhHnhoNYhvw	2020-11-29 04:49:01.293802+00
egb20sbnpt3o8bhfazbjh6xufzjs65ct	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIzaiJ9:1ketaI:1yr88Ffir9W6rbqVIpK_-i3YbPyGJqw44rImx41byMU	2020-12-01 05:31:18.123665+00
7agwmkxw2539skalxaverf4t7kekla27	eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhY3hkNGctMWU1NjU4Y2QzYjlhN2E0ZTI2NjJmZjgyYzVkMmU2YmEifQ:1kb6Jq:7uf3Ynv_xLZ-boIyOQcLVKdnAQqmt9YIebF5YUNoJyg	2020-11-20 18:18:38.735324+00
0i2e7z4jyyxjaz0j6d9gahtqs6dq7zul	eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhY3hkNGctMWU1NjU4Y2QzYjlhN2E0ZTI2NjJmZjgyYzVkMmU2YmEifQ:1kb7NN:Dus9QGUKoXDgGKRv62SKnglX56g0CHMbeNY3Qyr-f6M	2020-11-20 19:26:21.886527+00
2dgy2q5xk1o4zyo0846pshgu752qskbb	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kewvG:cidwRZsqIJtZChvDxqE0s5unVcB0t6Ct7X3QuU6bUeo	2020-12-01 09:05:10.584425+00
24ir4idfl8wq9njejzop9ml2y0kypbz5	eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZDF6czEtZTc4NDQzYTBlM2Y4NTVmMDQ0YzE1ZWVkOTA3MGE4OTMifQ:1kbz2K:rHqrxryepdASALANnrJTaUnA3bfE8f_ipS28SDPFaNE	2020-11-23 04:44:12.119648+00
eewzl098v1xd8urcd9wiomesjay2en6w	eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZDF6czEtZTc4NDQzYTBlM2Y4NTVmMDQ0YzE1ZWVkOTA3MGE4OTMifQ:1kbz2K:rHqrxryepdASALANnrJTaUnA3bfE8f_ipS28SDPFaNE	2020-11-23 04:44:12.663548+00
9zphrsvzav0y43zvctbvlbwlfmfyohzy	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kfeNH:f6ZlcAAjYl8OMUUyuhXUoDY6MXI3GC6rJ9WMkIuVPyg	2020-12-03 07:28:59.198709+00
4m19xnmvxx69vo0iiydil6kgduw7hlxo	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kfmK4:j9gwiYrNQjhjSC5OCDRl2zJANK7TaL40_N0jEn1Z0rg	2020-12-03 15:58:12.257388+00
s5e6mz31hcquprzc7v0q0tjs6tqba3c2	eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZDIxaGstOTU3YWZiNmNmOGEzNTE3NGMwYTkwMGE5ZDdhYTk2MTEifQ:1kbzba:1CmVM_0e1ftgylxNlSN_CF7Da1yz9jDavWWhfAHKsJY	2020-11-23 05:20:38.629914+00
swjae80pmh4idyfj8upmmc7mhosqfoep	eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZDIxaGstOTU3YWZiNmNmOGEzNTE3NGMwYTkwMGE5ZDdhYTk2MTEifQ:1kbzba:1CmVM_0e1ftgylxNlSN_CF7Da1yz9jDavWWhfAHKsJY	2020-11-23 05:20:38.84403+00
qi5p13oqvv7lfwoy0cilozhspaju8395	.eJxVjEEOwiAUBe_C2hCg7RdcuvcM5MGnUjWQlHZlvLtt0oVu38y8t_BYl-zXlmY_sbgILU6_W0B8prIDfqDcq4y1LPMU5K7IgzZ5q5xe18P9O8hoeatHArFLjqI1VlnljEvBEIHZqS7YXlvFGtA6KArAELEVXTei5wHnJD5f3-I4JQ:1kbzbn:Jxtw0vdzlsQtSzbbGkIFL1LRmJ1TwEUPmIjgrGo_2Is	2020-11-23 05:20:51.05026+00
ooz774vlqctbfwc90s4n12ta61t87vta	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kgqpj:irKfLgxEzltYR0YjOiSZvppsLFrxGHWC9QekpYz9JVA	2020-12-06 14:59:19.182913+00
pjkifvh51kvfyj3kj59870qz1ba93i8c	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kcmnp:PySCiOJWy7tXvHcDOU1XlnsM1vuDuHcs-kZAemAGMQ8	2020-11-25 09:52:33.46012+00
9s4xeo4g5ifpojaiktdat7k9mff2zjmb	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIzbiJ9:1ki9v0:SOuHd3I9DpiEtlakK34vOvY5HtT_55wywJrQZmQDohA	2020-12-10 05:34:10.442955+00
jkd6bg3k27lcnvee7uzhy0y6daqcfa4n	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIzbyJ9:1ki9wU:FOun9HoOi9_0NPyOluBHW0SqJGK8stYoZpt3vJmazyU	2020-12-10 05:35:42.754546+00
tsrxykgud5zfo2k2d8rx46kbc36pvtxm	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIzcCJ9:1ki9yU:NsgcdxDQz6MJauQcle7IP79rXxK5NewGAAMrY_6ywu8	2020-12-10 05:37:46.043166+00
egbdginyygvy1ukfbmz1zzi5dj8bwksk	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIzdCJ9:1kiA8H:dO43YQl0SJ5b5VCV_76gmlR2plb7PPN0QTwtDr0WWd8	2020-12-10 05:47:53.49739+00
ucd1rvg7rdq6ji36ynmf4gsumzdpxsbo	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIzdyJ9:1kiAF2:jPSGuNv0-40FZAo7f0dCNU9Bax---7JqKKUr_mx7KRo	2020-12-10 05:54:52.573512+00
xcgwzedu337kw5fa78bel8cx7tjdsrg9	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIzeSJ9:1kiAXD:sTDLH23l827UESUuXbHNeLgBv1ne7ZJE56Vadd5PPZY	2020-12-10 06:13:39.241804+00
ignhh4qsvnnuc2su318syez0z9ls0mwj	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI0NSJ9:1kiAv9:Qg7wv3Ou7-XAeNFzGUeBSVkt4vERafXEvtANkQuX3mg	2020-12-10 06:38:23.946719+00
jnxhmjpwvm0lusxsqvc66phcj3gkrlu3	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI0NiJ9:1kiAwP:aqGg6EEKmirxiYdnl9kGvDaxtOwBHH_jG4oFrr3YUL0	2020-12-10 06:39:41.530243+00
z7ddzu7vo6037izloogqvwa2ynywt8ci	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI0NyJ9:1kiC1D:nxrRbYD8BhDcVoYtBH9aaGdQ1ocwkTd8SOX_PZ92S0U	2020-12-10 07:48:43.08011+00
0dr4ab71v4ewrkpexim7q04tpuotaypj	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI0YSJ9:1kiCcv:IfAR7LLJi50jfrZ0uwV8q09_4pC6snWPX0pgPjaGL8s	2020-12-10 08:27:41.906751+00
8fkqtrzyf6ktpmhku4qgrqgtuf6f4n9a	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI0YiJ9:1kiYtq:Q9MliPOa9VIR44YZ6hFdobox9TqfGeLp3TqnLTfyKHs	2020-12-11 08:14:38.718566+00
beg6dhd74ho70pc72dke7asutbysvwns	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI0YyJ9:1kieBw:NBEKA4cRR63kHHN6opq-Lvkglh1fdAzhX9wSLhW9__4	2020-12-11 13:53:40.304562+00
2q3jkvgxxf2ft1np99eqgmsks28oxa4n	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI0ZSJ9:1kiftX:1VJa2ImNEAeZ52zmNVHco_8kd4n4lrxsesoT0pn5rdg	2020-12-11 15:42:47.607805+00
22aitlfkn6k1gbldfkoen8lpcv15yxm7	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kitCL:GmVPkpA3Hb9sBqoRcTUqu_Ue9H2MVK-huPWhAiUEbSs	2020-12-12 05:55:05.397845+00
gizc4egl4o98bnu5izzlubyvc3qaq3af	.eJxVjUkOwiAYhe_C2hBaxnbp3jMQhh9BEZK2uDHeXZo0UZfvfW94IW3aFnVbYdHJoxmNEp1-TWvcHcpO_M2Ua8Wulm1JFu8RfNAVX6qHfD6yfwPRrLG3nSJyHJQHxq0XEORALVAqVfB-AkMdDYTxQQQhCSNdOC6ksFwxOYqJuj5qnKutbPoJSwoJvIaHSRnNpeX8pftp_2MRvT-3dUmF:1kkRWe:BCn4X1sMRd9JnzXYURepdUswshmkZ3yumKRCCIPw1Gw	2020-12-16 12:46:28.333601+00
cgvseb6mdndtofpdofzg7g01giko8btc	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI0aSJ9:1kkRee:30hSD7DORBMTC5plDeul8SEvlMYePVlxtfAvVI1DoE0	2020-12-16 12:54:44.675859+00
z1qyjacjy6quo2s93qallwz6odu3f69n	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kl8on:Y5k-9b8ifSgxdOBXMKGQZSZEL-mHOW3XNuwmW2TlLqY	2020-12-18 11:00:05.476359+00
84q7whylvbrao57gy16ifogwgrousisv	.eJxVjMsOgyAURP-FtTEoT7vsvt9A4HKpVAqJSjdN_73amCYu55yZeRMLUGpezQvnGCJ6g08bE7nkmlLzt3XBmVwIn0hDjK3r-CMm-g326gydhQnzbvzD5ntpoeR1jq7dK-1hl_ZWPKbr0T0djHYZtzVoqvpOe-TCeYlBdcwhY0oH7we0DFigXHQySEU53QIIqaQTmqteDgzI5wsLXEmI:1kl8so:Nw3pDDBDQRLa6RtzW7BX-HhN5A-8b7woub-XutC7RiE	2020-12-18 11:04:14.314676+00
oklfvp821qdkkg1cwe73tqn6iopc8mkk	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1km88D:idvOvoXW1X8I6R64OkOSle7vtqgypubOHRtulsXq3AU	2020-12-21 04:28:13.283178+00
so2uour6fztfrcdmjjdf8vu3woibedi8	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kpuCv:rYBGcqUEwuCRb78_0buCAUKQ_si69rNsmrvPe8rSA8g	2020-12-31 14:24:41.67137+00
3ytf1xtn1e85uvdwutco6h9oy2aj6pj8	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1ksVGY:2YydnYrCmkg95Us3h8dLSw7mN7zJM6z6hJncaVh3Wz4	2021-01-07 18:23:10.540659+00
2ky5y0ad68ymdxqeo4nsqv4cfe59qqxp	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1ksjd6:jUcUAIpO8qHWlW40JYKk6opXGKPeSV3RNRQ4SlleXGA	2021-01-08 09:43:24.255336+00
ijd7nktsy0vf3r52ky0y1iwmb85s4pnb	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI0cSJ9:1kuWbb:QkSnnduj3mQzV1fhAtB8giuORjS6Sd9yN8691AiYExc	2021-01-13 08:13:15.850578+00
ucrb755n23wanvn1uq1a5dexygk1eidh	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kuaHY:OqUidCf0xW71pRfmr4KjJ5Oawgm7viCUZSKCnRndZno	2021-01-13 12:08:48.87956+00
cfm3f7qqdfc4gwl70qyruuvpx9oy19oq	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI0ciJ9:1kucyW:M64z1peCDYs1jFeI0BUPfoybJnYfdlnmsabHn_PIln4	2021-01-13 15:01:20.541045+00
nram7983lio6sayktnyl89wo47xddnmk	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kwmn1:7tW40SDyIydji6R6u-8bZF8Ik2qK00ZtO3ri3e67SXo	2021-01-19 13:54:23.270332+00
0wafoy2156t3oelc8bezyqpbg1taxg6w	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kxVFk:wVhKF1RtCaCvGE1R6OGM0bNNHPgTH5lMYWsufdqeQ94	2021-01-21 13:23:00.312651+00
2744vai8faau1e4796ddhmjynt6k29se	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1kxuvE:8JrAh0zlIxyrnahmY8EJ4ya8igR0Lji7ATKnLCYZ1A8	2021-01-22 16:47:32.938636+00
o523aqpll3wh7ejsggxtc3cc0bveja3n	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1l0reh:xj_sYiQSZOCvlUtooQbgDuadgbgmLWZzIBzZOWSceYQ	2021-01-30 19:54:39.0455+00
564ds5aaxmpueruxeltf22dll5yhn44c	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1l0rp9:orrWjIE-ziWpqVS_YNWjyx35oxUCx0e_AtN_Lw1mo5s	2021-01-30 20:05:27.427784+00
cjekxc2hhu0eaxdhc258rrk4oowvkf0g	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1l11t5:DHITRxE6NxMuYI_-z_uDM4yF46w3V7MXY5lEyTbKxBc	2021-01-31 06:50:11.056725+00
5rn83kwktndsxoq2jjwy29iwqwpef1l2	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI0dyJ9:1l13wf:s1G9nX9vG8v-bopQqMly34dXZrKtdYT4pPEjLPCwohs	2021-01-31 09:02:01.957062+00
17zpnws5npyff51rn32ieux2ilxm1750	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1l3FUa:4K7cZ7tMRmECoh7R6-icCiw7fUj-1S8JOdUbbwvth8E	2021-02-06 09:46:04.007574+00
f7nwxxqv6qoyqgpqqcegpfir5bodmblt	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1l3HjM:7g3omWUmpIVJLQdYI8_S394nC5i24r83Oo7QvLWOU1M	2021-02-06 12:09:28.67534+00
osg772i1edtj327x98659hvnlmdimcol	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI1MCJ9:1l6DHN:OnDO1zNFO7b5K2l_f2krM1QIv4C3AyFgsK8q15MSIZY	2021-02-14 14:00:41.495975+00
uuv11rpp1rpug464835yfpozxp0q5wgs	.eJxVjDsOwjAQRO_iGln-r0NJnzNYtneNA8iR4qRC3J1ESgHlzHszbxbittawdVrChOzKFLDLb5liflI7CD5iu888z21dpsQPhZ-083FGet1O9--gxl73dfYClPRIxiZ0VEDqRFqDL4gDRZ11EcZKVxwII_aQrQOXrDeg3KAz-3wBCm83ig:1l6nDO:GV-Pdxq4BjBBs2Vbz1jXtnqccXGnT730iEBx4GDYuLM	2021-02-16 04:22:58.47814+00
x5mix3cehcgezy81piilxr0l0qkm111w	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI1MSJ9:1l7bxO:-bjtmbgZHyYgcrD42ZLJ6u7BzIin4_ui58U2vlmCqiA	2021-02-18 10:33:50.152882+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.django_site (id, domain, name) FROM stdin;
1	3choices.in	3choices.in
\.


--
-- Data for Name: knox_authtoken; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.knox_authtoken (digest, salt, created, user_id, expiry, token_key) FROM stdin;
22025a9e80fee7edd7d61d66a0ab6995b5155966564a1b91238be041cb7757124a4a8d881e32c9e18afee39f8bb74c8b69b77d5b928eb4a012c6b991d481e11f	520776db7ebed918	2021-01-26 15:22:19.032782+00	179	2021-01-27 01:22:19.032326+00	935b2d03
d2105f61c12e4c405a18a0ef8bd1fa426bdcbbc33684ca19b86199569e2242aeefe3e6eadedc4cabf4e1d7f482840af1a9ed49d73aba8a4e15aa346a1c149dd1	a1e4eec66727770a	2021-02-04 10:44:14.558455+00	175	2021-02-04 20:44:14.557915+00	c814d2f3
51435e56397bf16b0ac72bc12a34691bbaba203b0a415ce58251c18ccb339656b2ec2ab22a11bc680f58cf4ce5d126022ca552e99c57ebd8f8bd5ce00ac3df78	8cf44f3356485e11	2020-11-04 05:50:22.318447+00	69	2020-11-04 15:50:22.313981+00	10ff6884
f016fb3415c54b8ae64f0d99a6b6505cce3d29e18c537d0323f6f91bc0d0f0c1eb6725c0c5885ba39a07727c0c5b4fdc3e8d566fea9668ac50b68ab2a1349204	80167f9ba2db48b5	2020-11-04 05:56:06.890582+00	68	2020-11-04 15:56:06.890071+00	98a3ac5a
0790d4864422b6b50caf8a8456212a3f4d128f1d1d31f1043a9df0724b90e1a13ff4a10fcf4f50c1e852234b1f276556fe5055ebc4f25e4035e1bbac28ebd5c2	826ca5cf55adf45c	2020-11-04 06:02:15.43478+00	75	2020-11-04 16:02:15.434334+00	75225090
f2525cc2996e368f914aa649174913194fa02c39718523203cc302286130e147d33d09e39ce773def86d1c499e405358e043cd79cdd1b428f03049978e9bfe40	8709944ee6c2107b	2020-11-04 06:06:27.553707+00	76	2020-11-04 16:06:27.553208+00	92d226c9
2a396cebf78d4eaf83086b2dbe95a0a0434fc5d28ef32661df0785b19bf9dd48e36ed73d616f9cae6b75b37fee2d7122f601bdf0f26db3152f9a5dfb3d3201cd	8d53dcffa78750f7	2020-11-04 06:07:03.220735+00	78	2020-11-04 16:07:03.220367+00	3d96007d
fe70a61787902466821fc071ab1827807153c6fd7128b50beac4aee5580ae2887edcbe16dcd13ea7d87d913d3de806bf423080bf236edff20adb9e6167ab43d9	22f751240bd38537	2020-11-04 06:09:31.495024+00	74	2020-11-04 16:09:31.494507+00	65609ab3
d405f5c94019655e8ad9dd7c2615921aac8a633f6636eb78fe79e0c0c480c67ccba78e343e716ae8f20548475888d56257f615014868631ea90fcac7bc954356	3a0c9e77d76aeefa	2020-11-04 06:12:47.017376+00	82	2020-11-04 16:12:47.016998+00	ebe4c2fc
1ee4cc5978b6dd4cc15978410627cf3316a0dbaf09b8ea4cf4e257c73f695e7a35a7ac49226e421243e8ea68e12ee11b35087cfbabb43205438aba1db758ef75	d9981c8648710972	2020-11-04 06:15:17.520426+00	84	2020-11-04 16:15:17.51955+00	e894aeb7
e02979378e6fa9ef51f9b9e7a69b80736e59beda41d90b15f5dfcce50b96b21f2f4eea91e20a03b0d7dbadb44f9d699020f443b141d1c7a4e8c95c310974d9ff	84690078bd8d5fea	2020-11-04 06:16:02.086967+00	85	2020-11-04 16:16:02.086333+00	7bbf77f3
9122be15413fad05f7d02108be45377d38332aed9557da06147eb97fa0369731444b852be270330567ec2fd9ce622c558c66c6cd0e4abc71ecc096598db8768e	efdfa672d3d24de6	2020-11-04 06:40:17.340681+00	90	2020-11-04 16:40:17.339694+00	13edab48
2af78442c5ccd5ee1f86b21c1decf43738a9a7f5fb2e2a199b3c679930fb74017c684ae009ec926699989e69e209012b6ee5308247226e9265d13d16ce8cfecb	481f6d87cf9152a9	2020-11-04 06:44:03.605177+00	93	2020-11-04 16:44:03.604801+00	5839ba20
69fefb6247f0857696c40af843a0cae4f7fd1a739994f07a219cb4242ef6eb816f5e6150bcb7e7e9cdd15128178a9b23296581b3946cde12f911b0f9c330b45a	80fb20f26e6fdcd8	2020-11-04 06:46:19.378514+00	95	2020-11-04 16:46:19.378083+00	5a969eb3
2eb57d44fd80eee7177abdc03043cb42176fee2925225df582728e65d3a5a20c40568b01a1659178ddcb631ccd59653d31dc8ab1fd8fb05ad978c47e86c9ec20	0d649590958bd3df	2021-01-09 04:43:42.305869+00	173	2021-01-09 14:43:42.305415+00	0a62de62
07fce89aeed872c008328fc0fd951a9ec57920d0991baf6015c716f4c293bc0ec237286640f3ed10d81768cb3d9724eaa26c405c440eda66a636f79ba6bd73db	8ae2404b55192818	2020-11-04 06:50:39.469887+00	94	2020-11-04 16:50:39.469391+00	36bb179c
69bdda3f4e17c0f798d29e603c35eee5564b5e1ded66477a7f3a9b6e7bd51253c1452ae92b0a70a4b768ed98d073b144c0bbe5478473c1d81f820399ba21dcba	9c7101cd76b484d5	2020-11-04 06:53:21.559777+00	96	2020-11-04 16:53:21.559307+00	8e93db72
094db6d917d8579bb21eeb9d4272dfe875db06c1d0144b7241429ce80b10b616ddfb95affaba984be55b0d2894d68acbfce2f31ae7220f0294f54c1038d512d6	667aa2c71855a40a	2020-11-04 07:01:39.317551+00	99	2020-11-04 17:01:39.317063+00	4b07cfe5
f9149be8ebb879b76207e4637d25a81719d47d441a24687cca5ecbf3948859310a289ecf74ccd62401b318ed1ed6ca9690006a9f2c1ca9c297135b22cface1ce	b8b05fe151bc614b	2020-11-04 07:03:14.044774+00	101	2020-11-04 17:03:14.044396+00	31de54f2
1c17bed49c7318000858495e2206a9a1e69e900738da710ee7fb5c48c833e78c044104d0b151f625c59b3c6a722d0977fa368f93e0f54ce22508598c26f73523	7b450dac6a2164a8	2020-11-04 07:18:04.401133+00	106	2020-11-04 17:18:04.40079+00	7f7ea01d
3bdb6b88a05f8e4e84d70c69a54c36eafe48c72099bc7ddd61ee4b23a9137407bb952369ff1ea4976951491c8ee41df3eecdd25d49bc365ff54cdc5f99465b8d	cc11a9037c2bc501	2020-11-04 07:22:04.960752+00	107	2020-11-04 17:22:04.960293+00	6c0cb1a5
d62dfc59da80a519cd5f0b89fb344f7f1f2cccd013c8818cf7b48719864ec13035853ca289cccd8ee1624894f93afb32221a3c63809b6eaea70fe2e9e1f96059	8c3d180c7c36f0dd	2020-11-04 07:33:59.875945+00	115	2020-11-04 17:33:59.875528+00	db3be89b
1e5ba95f138d1352a248a907a730e8a6cd1047baca80a8b4205f50c38014abc2c0c057593c9b8c3f80f91dd706ca6a956c6df08bbb6d01d3c4acc4ee73c2a997	2747cf114ee5f26d	2020-11-04 07:38:18.521071+00	117	2020-11-04 17:38:18.520707+00	b271c2fc
3f3577c6d6e9afb47f73ff48548a047801e724baba8be5b4bcecd673a4bac4d23ede81bb96e426f80047178d1511f9a52f311a7a7a68c8503fac03c056c278e1	1c07f814342b45aa	2020-11-04 07:43:03.830067+00	91	2020-11-04 17:43:03.829396+00	e3eece01
7cccedbeebd6e00b24051d6237d989b9fc2ecaa494cb993c88927f01449c85d6bd4bed4976d00d26a7398b8328a2c2b65a8ef16629827a9ef2deceab4f627930	b17a93504df9ba1e	2020-11-04 08:21:05.076264+00	96	2020-11-04 18:21:05.075685+00	afd3184b
11251b2b38dba87ace2ec5509a68cdafd5b8bbe1a7c5270bb7fa448f088deb743c4cdfe95f2f57cf7f465a566edb725eb5fceac2772ab468a5470a38ad31bd11	182ae2eeee260b43	2020-11-04 09:30:47.603925+00	119	2020-11-04 19:30:47.603432+00	2935a0ec
00cab5afc75b6e81c6cbba33d6d933677a34c3044d8eb3f1e7a7b4509d0884fa742a69e564e416190508998471e3660c8dd8927dceeb359539cf328634cbe085	8e04343cc9f2dbbe	2020-11-04 16:47:07.677842+00	119	2020-11-05 02:47:07.676916+00	79bdc4ea
09d42de87d9ee04c993fa89534260e47a49caf873840ed3aeb045bac37da25412f51f2e231697a87fb8fe4d3d6bc927137779ea6dd3aa74bcc2de9aaed7584dd	e3891e3148f2b88f	2020-12-26 11:45:26.785329+00	67	2020-12-26 21:45:26.78486+00	f00c5a10
6def61f3317dfed1b13a325438994938ce3010e20e0247117b75c79dd6e02be3fe5433a4238b80c921bcc0a6051dd3f7a4c907a808041439618ebf76d2e00a32	611dca3f1d651ef6	2021-01-31 06:57:45.451227+00	175	2021-01-31 16:57:45.450685+00	cbcc629f
2f8424199810da238305bcbaf3435129c0ddbbb52874772435eebb6984d96ef081f4e5eb552b5adcef88f23f74d53e979b7c5be0eff344e35470c31b2bfc483d	e809b7435beeb4f7	2020-11-04 05:26:35.285556+00	68	2020-11-04 15:26:35.285203+00	0b05799d
43ba977cdcc0a76d5b07d57de4b6b4ca3b85ad1eff0491c9e3fc9e18350ca6280ba3405008ddb4868472b2e8a18e4070ab1080bdd3595ad5b101f2af86957813	1cf68478b0b8215d	2020-11-04 05:58:39.838273+00	72	2020-11-04 15:58:39.837901+00	c3416cfa
3fec467eef966825ce2752fbe69742fb3cd1f145edf29acd3e33c93157e07dc50fc33aab9bd11b1dec96a6259c6e23058de8d2cbd114fcdcd10714b47d6fef14	0b13062402d6679b	2020-11-04 06:06:38.218536+00	77	2020-11-04 16:06:38.217981+00	9893c4c9
281c9ec69554f8ac71a452b86de3548f1055ad6e1f4090d0242f30a44584682c38411ccaaba513fc1a02fd08bf4649dab26b566508f2bf6c929db77223a512b9	78546e6061e28b2b	2020-11-04 06:08:28.309834+00	79	2020-11-04 16:08:28.309393+00	f4a1ccdf
6f3278df88791b535c1f00122650bcb658012320200b17180986c51de1318328acb4d6e7a29be9dd38341b734414127ffae6331226043c9956c50800e07247db	d5d46f10d03593a4	2020-11-04 06:10:51.751733+00	80	2020-11-04 16:10:51.751344+00	f9310386
f1bf0d806dcab735098c9a6ea467fce495fd0f69ac921278041a0d15bd00562d83459e58eb01226a60c79773c9722ad6e01157c35331f7d4590576f2e2b135f0	79ae93e4d2e65514	2020-11-04 06:13:34.299272+00	83	2020-11-04 16:13:34.298811+00	b5648c7f
386dc342468cdf582136d6b685dee88078f226bbd2b46d17d3da4a0f3e93678c3f9c9a4aab0c542c872a6731fd896098d92f7ebc564fccbff28cf60ebdeec99d	0cac73c6a15a932a	2020-11-04 06:15:28.97917+00	85	2020-11-04 16:15:28.978805+00	6b76efa7
77a22d3fb7a3076e91e8e4463b34128450e23c74860fd2eafaeaf02983747c7721f6f091d24f5665e6e1098f63e8235aeeeeacb209fc3f12024c2821ed006c1c	918090af26cb8d9b	2020-11-04 06:16:23.36211+00	86	2020-11-04 16:16:23.361707+00	1ff10cff
05e402017405fca22f8670605c78fb64a5a880cf2bc638f818031c988157bc84fd30593b9a64763f0c47d5bac12cd327804f54a12aad77b2795e07490578a428	0be328d70ef4c6f1	2020-11-04 06:43:56.487903+00	92	2020-11-04 16:43:56.487439+00	0c7b4790
353b0feb04dc09e9697e01f49b6f4a1a441577f71b15d77829f4c160ab44a47d68ea07365501f876f406525d0c519ab789dccd76e0178829b5c84b91aead72ff	cfafa656d33699dc	2020-11-04 06:44:42.614009+00	94	2020-11-04 16:44:42.613625+00	30ca9b41
9fff06307ad97237e4e9da554f71d17d673d4d1dc955390e3b56ae13f45962ade381a0485b7b20ea3861f208f79058c436b3edc574ad074c7c07dc545f166cd6	e3901dab26b959bc	2020-11-04 06:47:52.922074+00	96	2020-11-04 16:47:52.921637+00	0b1f8d4c
9d554fab9d140969f8f7dc6adf3544c2eef4f4fc3095e222de6a5dfb8e5c0a2e0e28e924726aafda0730c3b56259b339e7fe91dc9c3e6211e7f6c9ee7eb70f38	5dafd3f2773be03b	2020-11-04 06:52:13.499196+00	97	2020-11-04 16:52:13.498782+00	231634cf
a790af1f3af6a7c49b3d45cb6ecd9a40edd6fdb62288b499a6cbd8b4511763681c18e160929015c58af5c79edee29abcd185cc66d660e078275629d53087b735	f255e704545e5ce0	2020-11-04 07:01:36.737033+00	69	2020-11-04 17:01:36.736562+00	b2d5eb70
49cc7c4f2b906497bb69a6a36d68e7a8f126a122d6398b120d795790451839306655a454ae78189c01f52fa8de0abbf79f7f2fda7af7e38be3a0590788c6ea62	2733df3b003fc33c	2020-11-04 07:01:58.35995+00	69	2020-11-04 17:01:58.359485+00	59cfb8e4
e8c05cfb5f5085b0356528e9fccf831f500ccc87b2ed1519920d939a9392e2a4719489ee7f010252ee32a60d488b11a3aeffa12f6ef47487706098498a0f788f	96cc2d3d81191bcb	2020-11-04 07:07:04.812886+00	105	2020-11-04 17:07:04.812552+00	62e07e6b
f174d2237471f540b3f00d298bccb4869f0c6e7556e08e2d4e89875e6bc046835460ac15ef89ff184fb0a2e0ac24d99ca06b09cc72d5e797a052aaf0c54125be	80cfa8cd20d5d658	2020-11-04 07:22:01.616592+00	108	2020-11-04 17:22:01.616101+00	88227c4b
7250e71786a37c7b9e563053abf06339429d8e99568beda8582036eebff8e42560913c2ded4a17cf2a6497071777aa1b07590a113ac96d01c12dbd754ec26053	66698dd8e316d76a	2020-11-04 07:24:49.631026+00	109	2020-11-04 17:24:49.630691+00	e54cf6b1
40e9dc85414a1b957a89e98358cb9caef7f5011e3ecbc61746a455a4d5a667f36b232d9a29a3b5f6f966782cd781f62c7783da1e71880da2d73f070b7a5d22e9	507dfef5af95c2c0	2020-11-04 07:30:03.30592+00	112	2020-11-04 17:30:03.305518+00	bf550e26
c50b1e15badbaaba6ce1057d1988f6bb5c95dd19400dc9566abf8bcaed3f4b0fcefb8ee0867996118b0fdc8f65a81dcbc7f2d24d70dae6b50afa5f6feeb529dd	4906746b4b2679c3	2020-11-04 07:37:49.132404+00	116	2020-11-04 17:37:49.131758+00	9d17c481
f0d7c30eeb6536a0584eaeeed1a49dc0e0fa840cbbf495b5e15fad07f1ba0be44256afbc16ebb9c3756cab798f7f9109c27d9f10524a48f3f93c68904e148d66	d902a62e12ea4b62	2020-11-04 07:39:45.025663+00	69	2020-11-04 17:39:45.025193+00	5e19d2b2
bc4330ec56801ba8cb8b09890e05f86d1ca300827c5fccb2189f1dbc4cfe5e23a2c5da83bc83dbf42ffd741642ce3120c70897535fdcc9e39bca029170e53784	44308136616f6082	2020-11-04 08:21:54.643946+00	118	2020-11-04 18:21:54.643489+00	928ec939
ecce19c9a2c6e66131e587dbaa780e9a4e1aed6c7600f30485bd5f5c7743eb03bb21a2600a36afdb99bacdfe96a2a69fbc8eb5a7b9626f855c6d74f23b6c4b3f	51e85c1f8ce8746c	2020-11-04 09:21:55.982962+00	119	2020-11-04 19:21:55.982619+00	279943d2
e3445b0963c840d41e342eec51c357398b0085bb5afc35988e5629dcdc23b57c22e3d38644c92cf6be1388b08f92d7f09a3eda6aadb7155beac241ccbdf0e56e	1c4ef38888c3fb55	2020-11-04 09:32:00.336347+00	119	2020-11-04 19:32:00.335605+00	bc9a42c2
9fb39cc425f151c1c21a15e81e3338aebfcb33adaf1d8e2526820e57339dd151e156e301868f42df5f77184ab4ef85626495a7dc438aedbe138fdabef78bc945	9f9052428dc04828	2020-11-04 13:23:37.570591+00	121	2020-11-04 23:23:37.569919+00	10b28e8c
d507f05a457678bd061878dd4316a3b08ac02342982059161123e56d53d3926875ee7167e5ff31423de48ada905de13ed89295b080c5455adaa9cc9092b5b1fe	1258215f551bc0fa	2020-11-04 16:49:45.031184+00	119	2020-11-05 02:49:45.030709+00	b977ece6
ce7f104be58932ab8f78b7bb8b78bb407a4cb71bc9df96c59b78a3697b2f8404a9667edfacd187670d58d4bfb27548bdc4babc6c1c9ca6938a4510867ef35761	c245f2220f12e145	2020-11-04 16:52:01.748618+00	119	2020-11-05 02:52:01.747702+00	82a66e9f
a3fe0808b155fa71bdf03c56dae78629cd4c11ee9607004456903699cd07094741ffb0f2f4577e3820d1a5eeb264924ee8d5e18bea483ec684172d3313ae3798	2985800049363e60	2020-12-26 15:55:35.101895+00	67	2020-12-27 01:55:35.101384+00	8f006879
3782352d978972ef27038fdcfc0695e5d2865697a0fbe29e9ed73ad4059274f5ffdddff9b3555111b227ca6a38109dd6f869303301b8ba184927c08b3fc09eef	c4f370997f13b51d	2020-11-04 19:02:05.720802+00	111	2020-11-05 05:02:05.720301+00	6b2e54a7
359513dd4776e59499c9610dabe840ac7d671dd9e634139c5228b47e8afce3641838ef1403b44c9fb1a92f814e1ff362055c7eeed169af5c93b973edd22a4ba9	1c8953c021e18ed4	2021-01-31 07:03:44.301402+00	175	2021-01-31 17:03:44.300883+00	c154f699
4bc3e783fc8a6cbd06699fe705eca472eb4df2ee3290178f892b2f6a4173f1d8b5655bdf54426b58e400f6c461133691acee7abb055c1dbef05ea778c4bac3ff	b637fed2501ee0cf	2020-11-05 08:40:22.791957+00	96	2020-11-05 18:40:22.791282+00	0120f6e3
e8a545b60fc4196db58713431f106875b7a19bb5cf6f83a92acdf44b0a248adb5cb50407b119f948cfc91f512ce021326cb9a5370392b3a6ff0a1dd663466305	e327f832a2b61d9c	2020-11-06 09:21:49.646869+00	68	2020-11-06 19:21:49.646349+00	a3819771
ac4e3ed283872ba7b14c1469087b7e23e1aa91deafec798669f580a8061a1985b72a72e820f249e223e224edbd6239d8bfb5830d931c3c9026bc71a8f5eaa95f	bfd726cc74394b72	2020-11-06 17:26:18.289051+00	69	2020-11-07 03:26:18.28858+00	de6da3be
9fc6d24339263e1b592dc215a5f5d8f352b0cd9907b2e44ea8de4184739239976fb7bab99b5166c6bfee0e5f7186dbeb7205af45b5c82b6ff9c3ec8ad70ef8ec	8db98aa898ad94ff	2020-11-07 19:59:35.957847+00	124	2020-11-08 05:59:35.957405+00	68bd838b
0bbe0750ed997b80b07cbc4a285c84abe10b2c8c91145c636953fce8a40f0a4c5742201abb511cea9787a9cb0be35da0749b0e38c8be1815ad2a6c4fae72d32e	d9acfb33d3c8f2b3	2020-11-09 04:46:37.384193+00	125	2020-11-09 14:46:37.383524+00	149853ca
3437eeecc102d621484bfe840fbd82906527c028eb8d531e01fe170bd1205e205f73d4cbcf92b0ee186eefcb22a1b6e7b74ec0601622a22e90f4ebbff3193af8	ac89c6a7781fb9e0	2020-11-09 07:40:50.306182+00	96	2020-11-09 17:40:50.305715+00	a0103fe5
0e2d7bd430bb25e01ab6fbc50f3917458d09aaff9a601b7adc00a8c0a9d372e6807a262230bcd4cae731734889fc34d3d40dde74fa250152b309c0c91c898423	923d296e2b5e3976	2020-11-10 14:56:49.350978+00	123	2020-11-11 00:56:49.350273+00	8e46c4ab
7d5eed604d315bf358a6ac37f95c948aeb2c2d14917e9d440ee53db7f62664e7de3e76ed035fd5d7e4952adb69b71fb4da84f9e8085ab3a761d881dd9f676b30	c3eccad4a66c0d4c	2020-11-13 05:49:00.518291+00	96	2020-11-13 15:49:00.517647+00	82cdf1ac
dbb2c4a95c1b47d278a8834d63ecf8d09b5cf37d588c5c8bfd340eaa18712d8b386eb7a2ae8f57e3a6dbf6b875ad8682313d305607d454a3adeedfeb1a2ce0fb	4446c1f5518fd033	2020-11-18 06:52:45.380631+00	123	2020-11-18 16:52:45.380097+00	f44ab68c
ef4882fa476f68673afc45fc1fe4c68e89eacbb6e1940343518c83b576b870a5ca4a01578f06772afac8e1e04f901b7e9b28f481c30321f46fff028595e452eb	3d3a23d98384c663	2020-11-23 07:41:24.223827+00	123	2020-11-23 17:41:24.223055+00	f1729138
882009b444e64fb84c8d9257083d8805cb3122c3d56a73d45e0b48b6b83872c53dfe43a3260607b61d62f368101c553e8dc884571de3a711ada44a86230af3dc	dc9d83a12fb5be3e	2020-11-23 19:00:56.577897+00	129	2020-11-24 05:00:56.577481+00	f06a6389
74cdf82fc16e5872e2b0d8cebbf8453acd9f156e38c67e17838d5e461d48e47eb918710ec3c857cad43bab9e402d44d8862a8635508d72967b88400db378ae74	c5a028378e1cdff0	2020-11-26 05:31:52.606166+00	130	2020-11-26 15:31:52.605719+00	351e1810
08a241df768340a4b255859860e35a28a4f74f25aa7fe2f5bbd4f0adbbe92d7393e2428411a41e98026af71dbaebd7944690fe414d8db479821e2643bd46d080	e8f31226279db533	2020-11-26 05:45:24.510789+00	134	2020-11-26 15:45:24.510449+00	afcba0e0
69fc3d8a651f2f13cf74c50635b96ecae41562832cf78f91eac3cea85f0ede0a431f829044e2f0e905cfad887b8462de606bc77f58d71992e87e1487a4664c4e	28cc4382e13861fb	2020-11-26 05:46:38.631084+00	135	2020-11-26 15:46:38.630743+00	23bd2476
8b0fb0bb980f4b4722eb5443f42ffc94e8466a0891504a6ce03c292f06d74309b5a2c58691ad6159ae1b9aa954aad6c02b568b45052f2fcef2c2dfd047ab1a57	cd24df1252f03bdc	2020-11-26 05:47:11.132252+00	136	2020-11-26 15:47:11.131762+00	a018e7e7
c103017a6f48502b986bdcfd779a6bf774daece31df12b847ff25ee775c1767c6894e7badef619b03a8d353f8e3f34908e771bf92ba3d9e6a3e7f9577834ada9	2c9bf05d6af77b5c	2020-11-26 05:50:48.044759+00	138	2020-11-26 15:50:48.044328+00	affcf6a7
c3f74fb796d48ea8065c3ed08c8c517634b12002310c9a903bd5eb1c4b3b691b769d14a1ce7de17b580f00cc6e33ede80495f857cd9bc6c79fca1ead88ce956c	1d48043147074d34	2020-11-26 05:52:32.623016+00	139	2020-11-26 15:52:32.622591+00	2457720a
53db8d199d6787ca5b9a9a8b064848d57215be90f4e77c8a5cb2c148cc1b7096713279a05f2986f10bddf45d2eb9f1437821fbba784d0f5e4e73d761a2cc5c52	340184965a5bbecd	2020-11-26 06:11:42.175595+00	141	2020-11-26 16:11:42.175174+00	27299696
4cc3b12215e56313f6c66cf9b52a2e8d26b67af0e733cc96652fa6691da243289cd34fa8cc707fbb76c7c15bc0b936118d517d0aa6abf6e3c22286fc97c393b2	231d4c5b3c608614	2020-11-26 06:14:14.198452+00	142	2020-11-26 16:14:14.197897+00	6d612bcf
21bdd1660f70c2b932dc0922ab394cc43551e972a74416bf61e45f576fe3698ea48c02648f3a33980ec567e33237ad6a803a6ce7a17bb365a01898b4809faaa1	f41828732e60a654	2020-11-26 06:20:45.131369+00	143	2020-11-26 16:20:45.130984+00	81072e3b
5e1e644297b3b240cf17d6698c120818aa7141a5855c6958c292e1e7b635f74be018db2b5083aad4ab5b7d495a664a0d6c5828258395bf109fbacd9d303cf60c	e6f2ad399fb309ec	2020-11-26 06:24:36.417349+00	144	2020-11-26 16:24:36.416933+00	7ef22f6f
67986d32b27332340ec79cb4ad266c0a40d86c083bebf7219253d9eb3eb4aa8115399c2ac524ecbbad5eca1bca8ba6fd7273ce2f43fafd8a7ae4024762e3d96d	099034b222c8a173	2020-11-26 06:28:17.067569+00	145	2020-11-26 16:28:17.067218+00	1ff7e237
913cc49862d5df43b8679995885ed083095d1d47508f7315841797e3721e198dd55def8f85fb339e1a5e80ecb5a5450cae6e9955178450d091fd8eae07c55a84	044e0c887b5e90c1	2020-11-26 06:29:56.72515+00	145	2020-11-26 16:29:56.724692+00	0fdf5e6e
0b988418c071448173a5159025d87bc270cccde395bc8362c7bad6886a7675ea4a51b5d91233ae14e42c0f8bf8661356ce8273da835bf61d8fbb4ba1b8f07b3a	145a03dc6a599225	2020-11-26 06:35:43.159833+00	146	2020-11-26 16:35:43.159469+00	24b7e105
5fc6f88589f09e60dc485e8bf4088002bfeec0398bcc4c0585feb61310c09f4f74cc1d2ac7ca1f323aa24ec0d6b2dc4672f242742b9d13b025ebc7a4de3b03f7	30dae615cf239a4d	2020-11-26 06:35:47.227671+00	147	2020-11-26 16:35:47.227261+00	87b7aae7
4374a9cf5642c1814b503342c9cbae5f390d3ac348f08fe8ad579d2cff1f8903dd19e565da076d0720a03bd81b590fcca85ff6bdbc782b3af88579e5eeb8e297	ee97cffd7fa5ba43	2020-11-26 06:36:26.658635+00	148	2020-11-26 16:36:26.658271+00	9e63d3f9
4e9796d5a0c895f22d4a1dae03fcd8e574fdd3095ba6da70e6031ef5f8d528b794c213872de03bd29aaa5a25ee2878507d0f4b80ab1c724c20708047e3c1697e	4cd720d5db25298b	2020-11-26 06:41:24.181782+00	147	2020-11-26 16:41:24.181317+00	fe036745
bcf18a7e3102de6b1f20622bb8970913199936ad3ad80e524bef4a9b2d796f77b767c6ae14e112f359a05ecbbf92e4fd2ceb6a5fbcc9bedfb1692cce2d54e7f0	e46226faa3843233	2020-11-26 07:48:45.519065+00	152	2020-11-26 17:48:45.518722+00	0215aff4
b5f2631e243dc06f54c8e91aa8bf1f3aa38fb34a404200c3a9eb791d36e1ae6ac2207007c7a540da47a335d38a91d2a35f9d47122cb630fd2056fe86bc0ca3f0	3612195c4fe6b514	2020-11-26 08:17:06.217672+00	153	2020-11-26 18:17:06.217292+00	fd0a54f7
c70517461d44e71ea784608036c91c031c7b521d8962166847042a73e4f0bd5338b10a89651a2d6e3c913c7011f6734823f86849ea1150165a4098f34615b997	9bd057fdd8930a7a	2020-12-26 16:12:57.62674+00	164	2020-12-27 02:12:57.626256+00	f949ed93
39e40503541cd3e1ab4554ad9b7c6af6dd2f770316af49d6e1f737e90b4bf8998cc3e4333e9e015aedf3e398071a3582071292fd6eb2dbb822c58b53a47b56fd	850c87b15ac2c3a9	2021-01-31 07:04:56.869978+00	175	2021-01-31 17:04:56.869494+00	933c0cee
f98e2c14b7cea21ea0c124ece21216e1274480ebe48a169c7527a56d5c4d8c83c7489bc7e77f9036ed42dbcd8840a75b8df8e2dede61f70aba3cec3d5df9d667	29f8fefd3e08c512	2020-11-29 06:08:06.052425+00	160	2020-11-29 16:08:06.051953+00	7a5faf8b
837be64068b9af932e21d5da49350608c8db6dbd5e50459846f70044d7eb578f035ac1c6099c5cc1b76048ca5cc90822ffde3bb7a8b55aee98025be9c7b43dd8	ac684b8bbf8a4c95	2020-12-02 13:06:05.716574+00	160	2020-12-02 23:06:05.715897+00	b82d9cd5
7f976270a3da9adbde1ae13e9f0ed37b0fff4262301c2af8d8bdcd6e3bb6f921479b1a42ea40f912d0e696e53708ed59df2d610deeefd105e6493d91cad8bb49	6dcd4c2c363bd169	2020-12-03 10:59:24.181355+00	67	2020-12-03 20:59:24.180835+00	06ec7ea7
ef74e224ad2ee4c014570f5b95327e25b53f006d1ecc7fdbf8a55c8b51135547c4440ffa02d15b1972e787124aba558e84e5ee3b47d806715b17ac9ac666f3aa	e157f6d53baae5a0	2020-12-06 15:29:45.608948+00	67	2020-12-07 01:29:45.60839+00	18bfd3af
70aa2ff674409293df329dec7e8b0d95e55d0d1b55a4519bf0712834fbe147cbe21193f5719399b0272323b3e8b789b12bf480a8a4e4c4f5c4814878877b963d	6b135af8c8395005	2020-12-09 07:11:02.423435+00	67	2020-12-09 17:11:02.422957+00	27c17b10
93176e5ce3ec2af37fb1291a2ca5254ff52055d7635a90e172fb2997f7d6dab07f54528d0ee39a004c86bb2162b0e41c4bfb65d23482e491610c9eaaa6535339	6a47eca6c643f6fb	2020-12-11 19:03:47.066357+00	165	2020-12-12 05:03:47.065869+00	3c922c9b
6017370648f0e09c1de1c651539f533cec6f031ca6fc7293a671354bd630550c2c34cb3ba7ccb4022f2155386af083685934966bb353e657814a21e931dca4fa	6971a0bfcbc1e3af	2020-12-14 17:58:40.888108+00	166	2020-12-15 03:58:40.887636+00	bed65ce4
6066ec348024b53d4bf7c28baa05748164c2012c475bcfbf8c75b8deb702f7726af3c9467aecbfa726e19f76f4b22809f84b57a06e96565180bfc2d840ba3b03	ed973615132ed6a2	2020-12-15 03:48:45.45308+00	67	2020-12-15 13:48:45.452557+00	6faac369
9df819ae70bb82654ee9a91bf361505dfa5b112f8c87d4160fa810a3d107e4b23138964ebbf92132b2acd8f225bb6f5e00807ae10e2572157dad60b694570e12	2180461339c5d8ef	2020-12-25 20:58:20.578951+00	164	2020-12-26 06:58:20.578297+00	9545978c
9c42708bc936ea898ba84e6aa00562e80b45f64108bebaacef7e2240b2cd5caec512afe838682d3f095eb73ba49fad80af9af3d5ee73f9ef54ec1ad4fada0e87	47587802b388c057	2020-12-26 09:28:00.504542+00	164	2020-12-26 19:28:00.50404+00	429dda0b
c7f131492320979473d4876ca98be048493130f8171f5d3cac170822208c3b6c622d9ef8540d5a3858edb8e01a73422d8e4fc1b2a46f941332406260cd65b502	65310d2aa581b25a	2020-12-26 09:59:13.460228+00	164	2020-12-26 19:59:13.459744+00	7d5bcce9
ef792e35a9096ed32de75e7492119998bd43392d5499f0ee8904b6ec45e4cc24414b6944d911bba5e34e5e21741c97b61a826fcadb5ebaac92b3eb11a01c6a84	cf1e117afc73352e	2020-12-26 10:00:54.97475+00	164	2020-12-26 20:00:54.974284+00	e29b1e10
20d3a13edb6f86704f6ab89a5d0350e273f80524129de4bda448ceac2e3b1b15cc3cf4ad8e37576500e6dcb2507a7147f4efbe4c621dfb30abffd3cc10c4027b	9681d8f59d982627	2020-12-26 10:03:03.169367+00	164	2020-12-26 20:03:03.168898+00	aa419e8d
d4d1857d29194ebb5375b69f6ab35149f83f07f3207204d4302225a7c99ab3311529ead6ec7a42bd8c36ef5dd25a77b81ff0097fbdc75a2f337214bf61570426	136138642fd6e3d4	2020-12-26 10:09:06.171656+00	164	2020-12-26 20:09:06.171147+00	30d73b5e
268be400b47891dd0b7a978e5834a65f61b8cb4831ebcd984aa09a78efd0d9611c126a9952f81f7bb32cda571b2b6d79e2d8d345c5cf330e9f8ba7f20e6a09ed	7c6dc09e41698303	2021-02-04 10:39:58.392193+00	181	2021-02-04 20:39:58.391559+00	2b54e8ec
f3f4851b6ebcf9ef4ee14e2698a31be1271f79c0c9a7ee90fbd7212276b912d8ad27313010d6d818d4176430462b9e7a873f03f930ab7a09e2119775792d0998	2131dba52637d06c	2021-01-12 09:59:00.801509+00	174	2021-01-12 19:59:00.800841+00	ef2c6603
2f5c21f6a85664d033e413d51d2d804b8de6dd3620b39923ad4832ad6068c8c64c1ff0e80d99b96ff49fd0f6df6a5ad4ce409ed57fb7371a2c7ade86a223bebb	9dc35768a1ab74f7	2021-01-13 04:46:58.401608+00	67	2021-01-13 14:46:58.401134+00	25e643ff
c828112b89925761b7b998cc68bfbcec3ffb00bfd992c2d588652e91d2d698057589985a7ee1f07848e169ec2d6f919bbd0f5e3a7fd3eb26de7767f6d6071180	569fde0fad148646	2021-01-13 04:47:57.77009+00	67	2021-01-13 14:47:57.769629+00	40228162
38a7f9d8a36e3b6127ef087147cdcb313d12658b985e9ec7f4d5f34fb48c02a281715fee2abeba6cb3ed4cf51217ad6f53ee829627651401420f046427005bd2	cb101ddab3229f1e	2021-01-13 04:49:41.492348+00	67	2021-01-13 14:49:41.486407+00	1b64f61c
2a5b780fc4ccd091a66b6d7492e7a411080c50030c96d6245939ff68861c5b3fee401e26e3158f790ae6cfee28fde1cad3115f6f158806922680f81206ac1b6a	8c66544a188b9710	2021-01-13 04:57:16.310566+00	67	2021-01-13 14:57:16.310069+00	a4abc9ec
d1435612129d238a0f0d614fcf030786e0ad603bd11a974520c5748a3aab9634ece88158465769a0b424fce3849e2237f0f014c651e26fb1ee7ff00b86c6cceb	90e6c04a7e597f0a	2021-01-13 04:59:43.672719+00	67	2021-01-13 14:59:43.672272+00	c02a779f
f2a87b02132ae81b946c6f4bc7761e21ffe49e712b62b8ed130862e508bf30b74b260053d55ba6cc149337719f1884952c37aa153aa81e6c0d3dab9d28c867c1	871205a0ae82134f	2021-01-13 05:01:21.656727+00	67	2021-01-13 15:01:21.656275+00	04ce038f
cbf0926da4c4d0ff6e264f0a41a375be234194a300f1b6386e183eaa40463989756c7a9816ca2c2cb0d11ee877e1176f7159a7526357074f3b18d72a5cb767b9	ae0fe9350c95a05e	2021-02-04 10:40:12.798755+00	175	2021-02-04 20:40:12.798236+00	b31f68e2
e966af53870b6c0a021fd9fd30d44432e756f317ec7e3199b5233e54430ddcb74d5a4de4aefdde93a480278e9838691486f5b7910d04def3e7cca77cb076291f	8cae9a2d7b3181f4	2021-01-16 19:49:50.047946+00	175	2021-01-17 05:49:50.047418+00	20fe485f
af8d97610112f55aa841891dd3223a69b08f24b082dac78dcd03ede41ea57ee4c730dcf47bc57fc1266256aea9944f7041bdc9e863103e8a78cb2d7c8c534e07	afa63ce2e500e850	2021-01-16 19:59:35.158817+00	175	2021-01-17 05:59:35.158351+00	2f799298
09ef94b372001fc1b5dc34d96afb8a7c02cc31431ae4c58b3bc8873bdf9d9dd42745d81863e6d08f52ed00bf583ba2d21d207c0a10a0777a065e00d780c601d2	4ecac7f84a441a39	2021-01-17 01:46:02.091898+00	67	2021-01-17 11:46:02.091441+00	aee933a8
07a80ca59b53c6f06a5786a0a8fae035084359eff74c84fedd1bce7bcf7b5e62e07e7aee453ef6c007217a42fb8c64db9983062c5d73d3b0c479313d484c49dc	2cab267c80f74c69	2021-01-17 07:39:14.058036+00	175	2021-01-17 17:39:14.057547+00	a2e3638b
3af13d8c6306982d896a3e806fb40e3e10b1d7b2425b1a45a8aed00666595d684a003310e565e6f66e9f5ae95fdad1744f8d052e542bb3ebf9d3c20ad02348c6	ad4f498c0e8923fd	2021-01-17 09:03:19.13411+00	176	2021-01-17 19:03:19.133609+00	65caabdc
87dd53f1bf17ac5b899cd41cf436e3dd7a05f3ebcce0f4fc126294ac7ed5b10592e9bcaac6afe3e93566400939ccae4cc6664951be419dc8cd45bc2ba22eb28a	5f990edc1ccf20aa	2021-01-17 09:57:37.919305+00	175	2021-01-17 19:57:37.918817+00	cf2296ed
ab8a6b701ccb4f328f68f7b8fdbcc0b8e4dcfb1c1db280b1a06c41c9b5690ff6ded1d18daa600633218f1b90adaabcb02a4c13935d1f67482f97e094e191c9b0	0bc4da57ba77dbae	2021-01-18 01:17:56.977125+00	175	2021-01-18 11:17:56.976603+00	f12b3183
dfc27ee7fff12165b52de5c313e9e212c2c607b03810efb12b95c26e058fee33b0b00036042f157a21fed6d7efcaaef2216a8b835830d0b5f13aea5d67765316	a62d34ee40728f5d	2021-01-18 05:53:37.283129+00	177	2021-01-18 15:53:37.282664+00	ea7050e2
185767bac9780650dcae83d324e58ac727fc87683f5a2c187d140b512901e9442443c0810c60cff5012b0d53c0106c6469dedbcb780e98d06bdc5427b9baa6f5	0fbc9a4cce9d3a4d	2021-01-21 07:03:40.73603+00	175	2021-01-21 17:03:40.735537+00	0c30aa02
32688b173b6365415e26a01a2c89fd4c2c136652d5b42a36305e77c49b18bd923ff85717fcd44eec772a95426328257382da44f44a36fbd9173c6111c6c5aab7	b2f17efa60226e89	2021-01-21 14:45:47.832113+00	178	2021-01-22 00:45:47.831719+00	ed59c333
c1f3bfc30cab7c9d44d4a75bdf85f534c681173cc1d35ea5187ff6817452fe4b1cb18cce3a64ba0aa8466e86d3046a6d4b16ea2714bc85090802a5a523bca26b	1bdcb6c02dbe13ea	2021-01-21 14:48:34.179682+00	178	2021-01-22 00:48:34.179172+00	b52abdd2
3c6ba72003bb08d173835a50104910e484563004af86ec752d33734ded3f815c37c94dee19449bda42d99c44dcb83d4da03481822dbeb3224d3f660e43140a01	807b0ad4a2f51ed4	2021-01-23 09:50:00.697623+00	67	2021-01-23 19:50:00.697124+00	a71fba3d
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: dbadmi
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Name: Profile_age_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public."Profile_age_id_seq"', 91, true);


--
-- Name: Profile_count_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public."Profile_count_id_seq"', 107, true);


--
-- Name: Profile_date_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public."Profile_date_id_seq"', 43, true);


--
-- Name: Profile_daterequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public."Profile_daterequest_id_seq"', 174, true);


--
-- Name: Profile_friend_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public."Profile_friend_id_seq"', 32, true);


--
-- Name: Profile_friendrequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public."Profile_friendrequest_id_seq"', 189, true);


--
-- Name: Profile_notify_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public."Profile_notify_id_seq"', 89, true);


--
-- Name: Profile_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public."Profile_profile_id_seq"', 112, true);


--
-- Name: Profile_que_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public."Profile_que_id_seq"', 82, true);


--
-- Name: Profile_reject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public."Profile_reject_id_seq"', 159, true);


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 67, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 108, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 181, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: chat_chat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.chat_chat_id_seq', 140, true);


--
-- Name: chat_chat_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.chat_chat_messages_id_seq', 34, true);


--
-- Name: chat_chat_participants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.chat_chat_participants_id_seq', 181, true);


--
-- Name: chat_contact_friends_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.chat_contact_friends_id_seq', 1, false);


--
-- Name: chat_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.chat_contact_id_seq', 159, true);


--
-- Name: chat_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.chat_message_id_seq', 34, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 600, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 27, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 45, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmi
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: Profile_age Profile_age_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_age"
    ADD CONSTRAINT "Profile_age_pkey" PRIMARY KEY (id);


--
-- Name: Profile_age Profile_age_username_3c79cdfa_uniq; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_age"
    ADD CONSTRAINT "Profile_age_username_3c79cdfa_uniq" UNIQUE (username);


--
-- Name: Profile_count Profile_count_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_count"
    ADD CONSTRAINT "Profile_count_pkey" PRIMARY KEY (id);


--
-- Name: Profile_count Profile_count_username_key; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_count"
    ADD CONSTRAINT "Profile_count_username_key" UNIQUE (username);


--
-- Name: Profile_date Profile_date_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_date"
    ADD CONSTRAINT "Profile_date_pkey" PRIMARY KEY (id);


--
-- Name: Profile_daterequest Profile_daterequest_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_daterequest"
    ADD CONSTRAINT "Profile_daterequest_pkey" PRIMARY KEY (id);


--
-- Name: Profile_friend Profile_friend_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_friend"
    ADD CONSTRAINT "Profile_friend_pkey" PRIMARY KEY (id);


--
-- Name: Profile_friendrequest Profile_friendrequest_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_friendrequest"
    ADD CONSTRAINT "Profile_friendrequest_pkey" PRIMARY KEY (id);


--
-- Name: Profile_notify Profile_notify_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_notify"
    ADD CONSTRAINT "Profile_notify_pkey" PRIMARY KEY (id);


--
-- Name: Profile_profile Profile_profile_parent_user_4ad25153_uniq; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_profile"
    ADD CONSTRAINT "Profile_profile_parent_user_4ad25153_uniq" UNIQUE (parent_user);


--
-- Name: Profile_profile Profile_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_profile"
    ADD CONSTRAINT "Profile_profile_pkey" PRIMARY KEY (id);


--
-- Name: Profile_que Profile_que_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_que"
    ADD CONSTRAINT "Profile_que_pkey" PRIMARY KEY (id);


--
-- Name: Profile_que Profile_que_username_b3825054_uniq; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_que"
    ADD CONSTRAINT "Profile_que_username_b3825054_uniq" UNIQUE (username);


--
-- Name: Profile_reject Profile_reject_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public."Profile_reject"
    ADD CONSTRAINT "Profile_reject_pkey" PRIMARY KEY (id);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: chat_chat_messages chat_chat_messages_chat_id_message_id_0dc243e3_uniq; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_chat_messages
    ADD CONSTRAINT chat_chat_messages_chat_id_message_id_0dc243e3_uniq UNIQUE (chat_id, message_id);


--
-- Name: chat_chat_messages chat_chat_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_chat_messages
    ADD CONSTRAINT chat_chat_messages_pkey PRIMARY KEY (id);


--
-- Name: chat_chat_participants chat_chat_participants_chat_id_contact_id_827dbf76_uniq; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_chat_participants
    ADD CONSTRAINT chat_chat_participants_chat_id_contact_id_827dbf76_uniq UNIQUE (chat_id, contact_id);


--
-- Name: chat_chat_participants chat_chat_participants_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_chat_participants
    ADD CONSTRAINT chat_chat_participants_pkey PRIMARY KEY (id);


--
-- Name: chat_chat chat_chat_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_chat
    ADD CONSTRAINT chat_chat_pkey PRIMARY KEY (id);


--
-- Name: chat_contact_friends chat_contact_friends_from_contact_id_to_conta_7995e049_uniq; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_contact_friends
    ADD CONSTRAINT chat_contact_friends_from_contact_id_to_conta_7995e049_uniq UNIQUE (from_contact_id, to_contact_id);


--
-- Name: chat_contact_friends chat_contact_friends_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_contact_friends
    ADD CONSTRAINT chat_contact_friends_pkey PRIMARY KEY (id);


--
-- Name: chat_contact chat_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_contact
    ADD CONSTRAINT chat_contact_pkey PRIMARY KEY (id);


--
-- Name: chat_message chat_message_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_message
    ADD CONSTRAINT chat_message_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: knox_authtoken knox_authtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.knox_authtoken
    ADD CONSTRAINT knox_authtoken_pkey PRIMARY KEY (digest);


--
-- Name: knox_authtoken knox_authtoken_salt_key; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.knox_authtoken
    ADD CONSTRAINT knox_authtoken_salt_key UNIQUE (salt);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: Profile_age_username_3c79cdfa_like; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX "Profile_age_username_3c79cdfa_like" ON public."Profile_age" USING btree (username varchar_pattern_ops);


--
-- Name: Profile_count_username_4b7ed614_like; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX "Profile_count_username_4b7ed614_like" ON public."Profile_count" USING btree (username varchar_pattern_ops);


--
-- Name: Profile_profile_parent_user_4ad25153_like; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX "Profile_profile_parent_user_4ad25153_like" ON public."Profile_profile" USING btree (parent_user varchar_pattern_ops);


--
-- Name: Profile_que_username_b3825054_like; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX "Profile_que_username_b3825054_like" ON public."Profile_que" USING btree (username varchar_pattern_ops);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: chat_chat_messages_chat_id_6ef09da4; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX chat_chat_messages_chat_id_6ef09da4 ON public.chat_chat_messages USING btree (chat_id);


--
-- Name: chat_chat_messages_message_id_efa31cba; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX chat_chat_messages_message_id_efa31cba ON public.chat_chat_messages USING btree (message_id);


--
-- Name: chat_chat_participants_chat_id_c4383b55; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX chat_chat_participants_chat_id_c4383b55 ON public.chat_chat_participants USING btree (chat_id);


--
-- Name: chat_chat_participants_contact_id_703a4fb8; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX chat_chat_participants_contact_id_703a4fb8 ON public.chat_chat_participants USING btree (contact_id);


--
-- Name: chat_contact_friends_from_contact_id_767f7e54; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX chat_contact_friends_from_contact_id_767f7e54 ON public.chat_contact_friends USING btree (from_contact_id);


--
-- Name: chat_contact_friends_to_contact_id_5cb5d725; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX chat_contact_friends_to_contact_id_5cb5d725 ON public.chat_contact_friends USING btree (to_contact_id);


--
-- Name: chat_contact_user_id_1df671c2; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX chat_contact_user_id_1df671c2 ON public.chat_contact USING btree (user_id);


--
-- Name: chat_message_contact_id_3553335c; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX chat_message_contact_id_3553335c ON public.chat_message USING btree (contact_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: knox_authtoken_digest_188c7e77_like; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX knox_authtoken_digest_188c7e77_like ON public.knox_authtoken USING btree (digest varchar_pattern_ops);


--
-- Name: knox_authtoken_salt_3d9f48ac_like; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX knox_authtoken_salt_3d9f48ac_like ON public.knox_authtoken USING btree (salt varchar_pattern_ops);


--
-- Name: knox_authtoken_token_key_8f4f7d47; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX knox_authtoken_token_key_8f4f7d47 ON public.knox_authtoken USING btree (token_key);


--
-- Name: knox_authtoken_token_key_8f4f7d47_like; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX knox_authtoken_token_key_8f4f7d47_like ON public.knox_authtoken USING btree (token_key varchar_pattern_ops);


--
-- Name: knox_authtoken_user_id_e5a5d899; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX knox_authtoken_user_id_e5a5d899 ON public.knox_authtoken USING btree (user_id);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: dbadmi
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: chat_chat_messages chat_chat_messages_chat_id_6ef09da4_fk_chat_chat_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_chat_messages
    ADD CONSTRAINT chat_chat_messages_chat_id_6ef09da4_fk_chat_chat_id FOREIGN KEY (chat_id) REFERENCES public.chat_chat(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: chat_chat_messages chat_chat_messages_message_id_efa31cba_fk_chat_message_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_chat_messages
    ADD CONSTRAINT chat_chat_messages_message_id_efa31cba_fk_chat_message_id FOREIGN KEY (message_id) REFERENCES public.chat_message(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: chat_chat_participants chat_chat_participants_chat_id_c4383b55_fk_chat_chat_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_chat_participants
    ADD CONSTRAINT chat_chat_participants_chat_id_c4383b55_fk_chat_chat_id FOREIGN KEY (chat_id) REFERENCES public.chat_chat(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: chat_chat_participants chat_chat_participants_contact_id_703a4fb8_fk_chat_contact_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_chat_participants
    ADD CONSTRAINT chat_chat_participants_contact_id_703a4fb8_fk_chat_contact_id FOREIGN KEY (contact_id) REFERENCES public.chat_contact(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: chat_contact_friends chat_contact_friends_from_contact_id_767f7e54_fk_chat_cont; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_contact_friends
    ADD CONSTRAINT chat_contact_friends_from_contact_id_767f7e54_fk_chat_cont FOREIGN KEY (from_contact_id) REFERENCES public.chat_contact(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: chat_contact_friends chat_contact_friends_to_contact_id_5cb5d725_fk_chat_contact_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_contact_friends
    ADD CONSTRAINT chat_contact_friends_to_contact_id_5cb5d725_fk_chat_contact_id FOREIGN KEY (to_contact_id) REFERENCES public.chat_contact(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: chat_contact chat_contact_user_id_1df671c2_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_contact
    ADD CONSTRAINT chat_contact_user_id_1df671c2_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: chat_message chat_message_contact_id_3553335c_fk_chat_contact_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.chat_message
    ADD CONSTRAINT chat_message_contact_id_3553335c_fk_chat_contact_id FOREIGN KEY (contact_id) REFERENCES public.chat_contact(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: knox_authtoken knox_authtoken_user_id_e5a5d899_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.knox_authtoken
    ADD CONSTRAINT knox_authtoken_user_id_e5a5d899_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dbadmi
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

