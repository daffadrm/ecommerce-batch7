PGDMP                  
        y            mini_project    13.1    13.1 <    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    16759    mini_project    DATABASE     ?   CREATE DATABASE mini_project WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252' TABLESPACE = bootcampspace;
    DROP DATABASE mini_project;
                postgres    false                        3079    16760    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false            0           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    2            ?            1259    16797    address    TABLE     ?  CREATE TABLE public.address (
    addr_id integer NOT NULL,
    addr_email character varying(55),
    addr_fullname character varying(55),
    addr_phone_number character varying(18),
    addr_is_default boolean,
    addr_zipcode character varying(15),
    addr_street1 character varying(255),
    addr_street2 character varying(255),
    add_city_id integer NOT NULL,
    add_user_id integer NOT NULL
);
    DROP TABLE public.address;
       public         heap    postgres    false            ?            1259    16803    address_addr_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.address_addr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.address_addr_id_seq;
       public          postgres    false    201            1           0    0    address_addr_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.address_addr_id_seq OWNED BY public.address.addr_id;
          public          postgres    false    202            ?            1259    16805    cart    TABLE     ?   CREATE TABLE public.cart (
    cart_id integer NOT NULL,
    cart_created_on timestamp without time zone,
    cart_is_closed boolean,
    cart_total integer,
    cart_user_id integer NOT NULL
);
    DROP TABLE public.cart;
       public         heap    postgres    false            ?            1259    16808    cart_cart_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.cart_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_cart_id_seq;
       public          postgres    false    203            2           0    0    cart_cart_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart.cart_id;
          public          postgres    false    204            ?            1259    16810    category    TABLE     d   CREATE TABLE public.category (
    cate_id integer NOT NULL,
    cate_name character varying(25)
);
    DROP TABLE public.category;
       public         heap    postgres    false            ?            1259    16813    category_cate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.category_cate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.category_cate_id_seq;
       public          postgres    false    205            3           0    0    category_cate_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.category_cate_id_seq OWNED BY public.category.cate_id;
          public          postgres    false    206            ?            1259    16815    city    TABLE     ?   CREATE TABLE public.city (
    city_id integer NOT NULL,
    city_name character varying(100),
    city_prov_id integer NOT NULL
);
    DROP TABLE public.city;
       public         heap    postgres    false            ?            1259    16818    city_city_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.city_city_id_seq;
       public          postgres    false    207            4           0    0    city_city_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;
          public          postgres    false    208            ?            1259    16820    order_detail    TABLE     ?   CREATE TABLE public.order_detail (
    ordi_quantity integer,
    ordi_price integer,
    ordi_cart_id integer NOT NULL,
    ordi_prod_id integer NOT NULL,
    ordi_order_name character varying NOT NULL
);
     DROP TABLE public.order_detail;
       public         heap    postgres    false            ?            1259    16826    orders    TABLE     ?   CREATE TABLE public.orders (
    order_name character varying(55) NOT NULL,
    order_create_on timestamp without time zone,
    order_is_closed boolean,
    order_total integer,
    order_user_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            ?            1259    16829    product    TABLE     7  CREATE TABLE public.product (
    prod_id integer NOT NULL,
    prod_title character varying(25),
    prod_description character varying(255),
    prod_stock integer,
    prod_price integer,
    prod_manufacture character varying(15),
    prod_image character varying(100),
    prod_cate_id integer NOT NULL
);
    DROP TABLE public.product;
       public         heap    postgres    false            ?            1259    16832    product_images    TABLE     ?   CREATE TABLE public.product_images (
    prim_id uuid NOT NULL,
    prim_file_name character varying(255),
    prim_path character varying(255),
    prim_prod_id integer NOT NULL
);
 "   DROP TABLE public.product_images;
       public         heap    postgres    false            ?            1259    16838    product_prod_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.product_prod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_prod_id_seq;
       public          postgres    false    211            5           0    0    product_prod_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_prod_id_seq OWNED BY public.product.prod_id;
          public          postgres    false    213            ?            1259    16840    province    TABLE     e   CREATE TABLE public.province (
    prov_id integer NOT NULL,
    prov_name character varying(100)
);
    DROP TABLE public.province;
       public         heap    postgres    false            ?            1259    16843    province_prov_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.province_prov_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.province_prov_id_seq;
       public          postgres    false    214            6           0    0    province_prov_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.province_prov_id_seq OWNED BY public.province.prov_id;
          public          postgres    false    215            ?            1259    16845    roles    TABLE     a   CREATE TABLE public.roles (
    role_id integer NOT NULL,
    role_name character varying(25)
);
    DROP TABLE public.roles;
       public         heap    postgres    false            ?            1259    16848    roles_role_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.roles_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.roles_role_id_seq;
       public          postgres    false    216            7           0    0    roles_role_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.roles_role_id_seq OWNED BY public.roles.role_id;
          public          postgres    false    217            ?            1259    16850 
   user_roles    TABLE     _   CREATE TABLE public.user_roles (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            ?            1259    16853    users    TABLE     ?   CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(55),
    user_email character varying(55),
    user_password character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16856    users_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    219            8           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    220            ?           2604    16858    address addr_id    DEFAULT     r   ALTER TABLE ONLY public.address ALTER COLUMN addr_id SET DEFAULT nextval('public.address_addr_id_seq'::regclass);
 >   ALTER TABLE public.address ALTER COLUMN addr_id DROP DEFAULT;
       public          postgres    false    202    201            ?           2604    16859    cart cart_id    DEFAULT     l   ALTER TABLE ONLY public.cart ALTER COLUMN cart_id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);
 ;   ALTER TABLE public.cart ALTER COLUMN cart_id DROP DEFAULT;
       public          postgres    false    204    203            ?           2604    16860    category cate_id    DEFAULT     t   ALTER TABLE ONLY public.category ALTER COLUMN cate_id SET DEFAULT nextval('public.category_cate_id_seq'::regclass);
 ?   ALTER TABLE public.category ALTER COLUMN cate_id DROP DEFAULT;
       public          postgres    false    206    205            ?           2604    16861    city city_id    DEFAULT     l   ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);
 ;   ALTER TABLE public.city ALTER COLUMN city_id DROP DEFAULT;
       public          postgres    false    208    207            ?           2604    16862    product prod_id    DEFAULT     r   ALTER TABLE ONLY public.product ALTER COLUMN prod_id SET DEFAULT nextval('public.product_prod_id_seq'::regclass);
 >   ALTER TABLE public.product ALTER COLUMN prod_id DROP DEFAULT;
       public          postgres    false    213    211            ?           2604    16863    province prov_id    DEFAULT     t   ALTER TABLE ONLY public.province ALTER COLUMN prov_id SET DEFAULT nextval('public.province_prov_id_seq'::regclass);
 ?   ALTER TABLE public.province ALTER COLUMN prov_id DROP DEFAULT;
       public          postgres    false    215    214            ?           2604    16864    roles role_id    DEFAULT     n   ALTER TABLE ONLY public.roles ALTER COLUMN role_id SET DEFAULT nextval('public.roles_role_id_seq'::regclass);
 <   ALTER TABLE public.roles ALTER COLUMN role_id DROP DEFAULT;
       public          postgres    false    217    216            ?           2604    16865    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    220    219            ?           2606    16867    address address_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (addr_id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    201            ?           2606    16869    cart cart_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (cart_id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    203            ?           2606    16871    category category_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (cate_id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    205            ?           2606    16873    city city_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    207            ?           2606    16875    orders orders_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_name);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    210            ?           2606    16877 "   product_images product_images_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (prim_id);
 L   ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_images_pkey;
       public            postgres    false    212            ?           2606    16879    product product_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (prod_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    211            ?           2606    16881    province province_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.province
    ADD CONSTRAINT province_pkey PRIMARY KEY (prov_id);
 @   ALTER TABLE ONLY public.province DROP CONSTRAINT province_pkey;
       public            postgres    false    214            ?           2606    16883    roles roles_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    216            ?           2606    16885    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    219            ?           2606    16886     address address_add_city_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_add_city_id_fkey FOREIGN KEY (add_city_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.address DROP CONSTRAINT address_add_city_id_fkey;
       public          postgres    false    2975    201    219            ?           2606    16891     address address_add_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_add_user_id_fkey FOREIGN KEY (add_user_id) REFERENCES public.city(city_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.address DROP CONSTRAINT address_add_user_id_fkey;
       public          postgres    false    2963    207    201            ?           2606    16896    cart cart_cart_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_cart_user_id_fkey FOREIGN KEY (cart_user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_cart_user_id_fkey;
       public          postgres    false    203    219    2975            ?           2606    16901    city city_city_prov_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_city_prov_id_fkey FOREIGN KEY (city_prov_id) REFERENCES public.province(prov_id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.city DROP CONSTRAINT city_city_prov_id_fkey;
       public          postgres    false    207    214    2971            ?           2606    16906 .   order_detail order_detail_ordi_order_name_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_ordi_order_name_fkey FOREIGN KEY (ordi_order_name) REFERENCES public.orders(order_name) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT order_detail_ordi_order_name_fkey;
       public          postgres    false    2965    210    209            ?           2606    16911     orders orders_order_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_user_id_fkey FOREIGN KEY (order_user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_order_user_id_fkey;
       public          postgres    false    2975    219    210            ?           2606    16916 !   product product_prod_cate_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_prod_cate_id_fkey FOREIGN KEY (prod_cate_id) REFERENCES public.category(cate_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.product DROP CONSTRAINT product_prod_cate_id_fkey;
       public          postgres    false    205    2961    211            ?           2606    16921 "   user_roles user_roles_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_user_id_fkey;
       public          postgres    false    219    2975    218           