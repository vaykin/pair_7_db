--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 16.2

-- Started on 2024-03-19 15:45:05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = on;

DROP DATABASE pair7demo;
--
-- TOC entry 3486 (class 1262 OID 16561)
-- Name: pair7demo; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE pair7demo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_T�rkiye.1254';


ALTER DATABASE pair7demo OWNER TO postgres;

\connect pair7demo

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = on;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 227 (class 1259 OID 16609)
-- Name: address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address (
    id integer NOT NULL,
    customer_address character varying NOT NULL,
    supplier_address character varying NOT NULL,
    city_id integer NOT NULL,
    country_id integer NOT NULL,
    postal_id integer NOT NULL,
    employee_address character varying NOT NULL
);


ALTER TABLE public.address OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16608)
-- Name: address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.address ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 16571)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL,
    is_active boolean NOT NULL,
    image_id integer NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16570)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 229 (class 1259 OID 16617)
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    customer_city character varying NOT NULL,
    supplier_city character varying NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16616)
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.cities ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 231 (class 1259 OID 16625)
-- Name: contacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts (
    id integer NOT NULL,
    sup_phone character varying NOT NULL,
    cus_phone character varying NOT NULL,
    sup_mail character varying NOT NULL,
    cus_mail character varying NOT NULL,
    e_phone character varying NOT NULL,
    e_mail character varying NOT NULL
);


ALTER TABLE public.contacts OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16624)
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.contacts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 233 (class 1259 OID 16633)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    customer_country character varying NOT NULL,
    supplier_country character varying NOT NULL
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16632)
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.countries ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 225 (class 1259 OID 16601)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    info_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16600)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 245 (class 1259 OID 16788)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    user_id integer NOT NULL,
    title character varying NOT NULL,
    birth_date date NOT NULL,
    hire_date date NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 16787)
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.employees ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16579)
-- Name: images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.images (
    id integer NOT NULL,
    product_image character varying,
    category_image character varying,
    employee_photo character varying
);


ALTER TABLE public.images OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16578)
-- Name: image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.images ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 239 (class 1259 OID 16656)
-- Name: informations_payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.informations_payment (
    id integer NOT NULL,
    customer_card character varying,
    supplier_card character varying,
    address_id integer NOT NULL
);


ALTER TABLE public.informations_payment OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16655)
-- Name: informations_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.informations_payment ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.informations_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 235 (class 1259 OID 16641)
-- Name: order_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_details (
    id integer NOT NULL,
    product_id integer NOT NULL,
    order_id integer NOT NULL,
    unit_price double precision NOT NULL,
    quantity integer NOT NULL,
    payment_id integer NOT NULL,
    address_id integer NOT NULL,
    employee_id integer NOT NULL
);


ALTER TABLE public.order_details OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16640)
-- Name: order_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.order_details ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 16595)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    order_date timestamp with time zone NOT NULL,
    delivery_date timestamp with time zone NOT NULL,
    required_date date NOT NULL,
    shipped_date timestamp with time zone NOT NULL,
    employee_id integer NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16594)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 237 (class 1259 OID 16647)
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    id integer NOT NULL,
    type character varying NOT NULL,
    order_id integer NOT NULL,
    customer_id integer NOT NULL,
    info_id integer NOT NULL
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16646)
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payments ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 241 (class 1259 OID 16664)
-- Name: postal_codes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.postal_codes (
    id integer NOT NULL,
    customer_code integer NOT NULL,
    supplier_code integer NOT NULL
);


ALTER TABLE public.postal_codes OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16663)
-- Name: postal_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.postal_codes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.postal_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 16563)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    supplier_id integer NOT NULL,
    category_id integer NOT NULL,
    unit_price double precision NOT NULL,
    is_active boolean NOT NULL,
    units_in_stock integer NOT NULL,
    image_id integer NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16562)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 16587)
-- Name: suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suppliers (
    id integer NOT NULL,
    company_name character varying NOT NULL,
    contact_name character varying NOT NULL,
    address_id integer NOT NULL,
    contact_id integer NOT NULL,
    info_id integer NOT NULL
);


ALTER TABLE public.suppliers OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16586)
-- Name: suppliers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.suppliers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.suppliers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 243 (class 1259 OID 16780)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    e_first_name character varying NOT NULL,
    c_first_name character varying NOT NULL,
    e_last_name character varying NOT NULL,
    c_last_name character varying NOT NULL,
    contact_id integer NOT NULL,
    address_id integer NOT NULL,
    images_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16779)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3462 (class 0 OID 16609)
-- Dependencies: 227
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3452 (class 0 OID 16571)
-- Dependencies: 217
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3464 (class 0 OID 16617)
-- Dependencies: 229
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3466 (class 0 OID 16625)
-- Dependencies: 231
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3468 (class 0 OID 16633)
-- Dependencies: 233
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3460 (class 0 OID 16601)
-- Dependencies: 225
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3480 (class 0 OID 16788)
-- Dependencies: 245
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3454 (class 0 OID 16579)
-- Dependencies: 219
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3474 (class 0 OID 16656)
-- Dependencies: 239
-- Data for Name: informations_payment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3470 (class 0 OID 16641)
-- Dependencies: 235
-- Data for Name: order_details; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3458 (class 0 OID 16595)
-- Dependencies: 223
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3472 (class 0 OID 16647)
-- Dependencies: 237
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3476 (class 0 OID 16664)
-- Dependencies: 241
-- Data for Name: postal_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3450 (class 0 OID 16563)
-- Dependencies: 215
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3456 (class 0 OID 16587)
-- Dependencies: 221
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3478 (class 0 OID 16780)
-- Dependencies: 243
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 226
-- Name: address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_id_seq', 1, false);


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 216
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 228
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 1, false);


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 230
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacts_id_seq', 1, false);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 232
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 1, false);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 224
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 1, false);


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 244
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_id_seq', 1, false);


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 218
-- Name: image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.image_id_seq', 1, false);


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 238
-- Name: informations_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.informations_payment_id_seq', 1, false);


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 234
-- Name: order_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_details_id_seq', 1, false);


--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 222
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 236
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_id_seq', 1, false);


--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 240
-- Name: postal_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.postal_codes_id_seq', 1, false);


--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 214
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 220
-- Name: suppliers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.suppliers_id_seq', 1, false);


--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 242
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 3261 (class 2606 OID 16615)
-- Name: address address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);


--
-- TOC entry 3251 (class 2606 OID 16577)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3263 (class 2606 OID 16623)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- TOC entry 3265 (class 2606 OID 16631)
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- TOC entry 3267 (class 2606 OID 16639)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- TOC entry 3259 (class 2606 OID 16607)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3279 (class 2606 OID 16794)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- TOC entry 3253 (class 2606 OID 16585)
-- Name: images image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 16662)
-- Name: informations_payment informations_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.informations_payment
    ADD CONSTRAINT informations_payment_pkey PRIMARY KEY (id);


--
-- TOC entry 3269 (class 2606 OID 16645)
-- Name: order_details order_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (id);


--
-- TOC entry 3257 (class 2606 OID 16599)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3271 (class 2606 OID 16653)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 16668)
-- Name: postal_codes postal_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.postal_codes
    ADD CONSTRAINT postal_codes_pkey PRIMARY KEY (id);


--
-- TOC entry 3249 (class 2606 OID 16569)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3255 (class 2606 OID 16593)
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 16786)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3291 (class 2606 OID 16684)
-- Name: address FK_ADDRESS_CITIES; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_ADDRESS_CITIES" FOREIGN KEY (city_id) REFERENCES public.cities(id) NOT VALID;


--
-- TOC entry 3292 (class 2606 OID 16689)
-- Name: address FK_ADDRESS_COUNTRIES; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_ADDRESS_COUNTRIES" FOREIGN KEY (country_id) REFERENCES public.countries(id) NOT VALID;


--
-- TOC entry 3293 (class 2606 OID 16694)
-- Name: address FK_ADDRESS_POSTAL_CODES; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_ADDRESS_POSTAL_CODES" FOREIGN KEY (postal_id) REFERENCES public.postal_codes(id) NOT VALID;


--
-- TOC entry 3283 (class 2606 OID 16699)
-- Name: categories FK_CATEGORIES_IMAGES; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT "FK_CATEGORIES_IMAGES" FOREIGN KEY (image_id) REFERENCES public.images(id) NOT VALID;


--
-- TOC entry 3289 (class 2606 OID 16815)
-- Name: customers FK_CUSTOMERS_INFOS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT "FK_CUSTOMERS_INFOS" FOREIGN KEY (info_id) REFERENCES public.informations_payment(id) NOT VALID;


--
-- TOC entry 3290 (class 2606 OID 16820)
-- Name: customers FK_CUSTOMERS_USER; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT "FK_CUSTOMERS_USER" FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 3306 (class 2606 OID 16795)
-- Name: employees FK_EMPLOYEES_USERS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT "FK_EMPLOYEES_USERS" FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 3302 (class 2606 OID 16714)
-- Name: informations_payment FK_INFORMATİONS_PAYMENT_ADDRESS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.informations_payment
    ADD CONSTRAINT "FK_INFORMATİONS_PAYMENT_ADDRESS" FOREIGN KEY (address_id) REFERENCES public.address(id) NOT VALID;


--
-- TOC entry 3287 (class 2606 OID 16739)
-- Name: orders FK_ORDERS_CUSTOMERS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "FK_ORDERS_CUSTOMERS" FOREIGN KEY (customer_id) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3288 (class 2606 OID 16825)
-- Name: orders FK_ORDERS_EMPLOYEES; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "FK_ORDERS_EMPLOYEES" FOREIGN KEY (employee_id) REFERENCES public.employees(id) NOT VALID;


--
-- TOC entry 3294 (class 2606 OID 16734)
-- Name: order_details FK_ORDER_DETAILS_ADDRESS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT "FK_ORDER_DETAILS_ADDRESS" FOREIGN KEY (address_id) REFERENCES public.address(id) NOT VALID;


--
-- TOC entry 3295 (class 2606 OID 16830)
-- Name: order_details FK_ORDER_DETAILS_EMPLOYEES; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT "FK_ORDER_DETAILS_EMPLOYEES" FOREIGN KEY (employee_id) REFERENCES public.employees(id) NOT VALID;


--
-- TOC entry 3296 (class 2606 OID 16724)
-- Name: order_details FK_ORDER_DETAILS_ORDERS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT "FK_ORDER_DETAILS_ORDERS" FOREIGN KEY (order_id) REFERENCES public.orders(id) NOT VALID;


--
-- TOC entry 3297 (class 2606 OID 16729)
-- Name: order_details FK_ORDER_DETAILS_PAYMENTS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT "FK_ORDER_DETAILS_PAYMENTS" FOREIGN KEY (payment_id) REFERENCES public.payments(id) NOT VALID;


--
-- TOC entry 3298 (class 2606 OID 16719)
-- Name: order_details FK_ORDER_DETAILS_PRODUCTS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT "FK_ORDER_DETAILS_PRODUCTS" FOREIGN KEY (product_id) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 3299 (class 2606 OID 16749)
-- Name: payments FK_PAYMENTS_CUSTOMERS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT "FK_PAYMENTS_CUSTOMERS" FOREIGN KEY (customer_id) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3300 (class 2606 OID 16754)
-- Name: payments FK_PAYMENTS_INFOS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT "FK_PAYMENTS_INFOS" FOREIGN KEY (info_id) REFERENCES public.informations_payment(id) NOT VALID;


--
-- TOC entry 3301 (class 2606 OID 16744)
-- Name: payments FK_PAYMENTS_ORDERS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT "FK_PAYMENTS_ORDERS" FOREIGN KEY (order_id) REFERENCES public.orders(id) NOT VALID;


--
-- TOC entry 3280 (class 2606 OID 16674)
-- Name: products FK_PRODUCTS_CATEGORIES; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "FK_PRODUCTS_CATEGORIES" FOREIGN KEY (category_id) REFERENCES public.categories(id) NOT VALID;


--
-- TOC entry 3281 (class 2606 OID 16679)
-- Name: products FK_PRODUCTS_IMAGES; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "FK_PRODUCTS_IMAGES" FOREIGN KEY (image_id) REFERENCES public.images(id) NOT VALID;


--
-- TOC entry 3282 (class 2606 OID 16669)
-- Name: products FK_PRODUCTS_SUPPLIERS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "FK_PRODUCTS_SUPPLIERS" FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id) NOT VALID;


--
-- TOC entry 3284 (class 2606 OID 16764)
-- Name: suppliers FK_SUPPLIERS_ADDRESS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT "FK_SUPPLIERS_ADDRESS" FOREIGN KEY (address_id) REFERENCES public.address(id) NOT VALID;


--
-- TOC entry 3285 (class 2606 OID 16769)
-- Name: suppliers FK_SUPPLIERS_CONTACTS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT "FK_SUPPLIERS_CONTACTS" FOREIGN KEY (contact_id) REFERENCES public.contacts(id) NOT VALID;


--
-- TOC entry 3286 (class 2606 OID 16774)
-- Name: suppliers FK_SUPPLIERS_INFOS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT "FK_SUPPLIERS_INFOS" FOREIGN KEY (info_id) REFERENCES public.informations_payment(id) NOT VALID;


--
-- TOC entry 3303 (class 2606 OID 16835)
-- Name: users FK_USERS_ADDRESS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "FK_USERS_ADDRESS" FOREIGN KEY (address_id) REFERENCES public.address(id) NOT VALID;


--
-- TOC entry 3304 (class 2606 OID 16845)
-- Name: users FK_USERS_CONTACTS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "FK_USERS_CONTACTS" FOREIGN KEY (contact_id) REFERENCES public.contacts(id) NOT VALID;


--
-- TOC entry 3305 (class 2606 OID 16840)
-- Name: users FK_USERS_IMAGES; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "FK_USERS_IMAGES" FOREIGN KEY (images_id) REFERENCES public.images(id) NOT VALID;


-- Completed on 2024-03-19 15:45:06

--
-- PostgreSQL database dump complete
--

