PGDMP     :    5                y            testAldeamo    12.3    12.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    35971    testAldeamo    DATABASE     �   CREATE DATABASE "testAldeamo" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "testAldeamo";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    35977    arrays_sequence    SEQUENCE     x   CREATE SEQUENCE public.arrays_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.arrays_sequence;
       public          postgres    false    3            �            1259    35972    arrays    TABLE     �   CREATE TABLE public.arrays (
    id integer DEFAULT nextval('public.arrays_sequence'::regclass) NOT NULL,
    input_array character varying(20) NOT NULL
);
    DROP TABLE public.arrays;
       public         heap    postgres    false    203    3            �            1259    35981    card_generator    SEQUENCE     w   CREATE SEQUENCE public.card_generator
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.card_generator;
       public          postgres    false    3                      0    35972    arrays 
   TABLE DATA                 public          postgres    false    202                       0    0    arrays_sequence    SEQUENCE SET     =   SELECT pg_catalog.setval('public.arrays_sequence', 6, true);
          public          postgres    false    203                       0    0    card_generator    SEQUENCE SET     =   SELECT pg_catalog.setval('public.card_generator', 1, false);
          public          postgres    false    204            �
           2606    35976    arrays arrays_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.arrays
    ADD CONSTRAINT arrays_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.arrays DROP CONSTRAINT arrays_pkey;
       public            postgres    false    202               �   x���v
Q���W((M��L�K,*J�,Vs�	uV�0�QP7�1�1�1�1ױP״��$��������Dǈ8M�@M�`M��:���i2j2١cD��i2j2�14 j �eI�.3pH����� ٘T�                     0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    35971    testAldeamo    DATABASE     �   CREATE DATABASE "testAldeamo" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "testAldeamo";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    35977    arrays_sequence    SEQUENCE     x   CREATE SEQUENCE public.arrays_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.arrays_sequence;
       public          postgres    false    3            �            1259    35972    arrays    TABLE     �   CREATE TABLE public.arrays (
    id integer DEFAULT nextval('public.arrays_sequence'::regclass) NOT NULL,
    input_array character varying(20) NOT NULL
);
    DROP TABLE public.arrays;
       public         heap    postgres    false    203    3            �            1259    35981    card_generator    SEQUENCE     w   CREATE SEQUENCE public.card_generator
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.card_generator;
       public          postgres    false    3                      0    35972    arrays 
   TABLE DATA                 public          postgres    false    202   �                  0    0    arrays_sequence    SEQUENCE SET     =   SELECT pg_catalog.setval('public.arrays_sequence', 6, true);
          public          postgres    false    203                       0    0    card_generator    SEQUENCE SET     =   SELECT pg_catalog.setval('public.card_generator', 1, false);
          public          postgres    false    204            �
           2606    35976    arrays arrays_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.arrays
    ADD CONSTRAINT arrays_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.arrays DROP CONSTRAINT arrays_pkey;
       public            postgres    false    202           