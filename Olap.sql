PGDMP         *                w            Olap    11.2    11.2 E    _           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            `           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            a           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            b           1262    100117    Olap    DATABASE     �   CREATE DATABASE "Olap" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Latin America.1252' LC_CTYPE = 'Spanish_Latin America.1252';
    DROP DATABASE "Olap";
             postgres    false            �            1259    116556    dim_mesa    TABLE     ^   CREATE TABLE public.dim_mesa (
    id_mesa integer NOT NULL,
    sponsor character varying
);
    DROP TABLE public.dim_mesa;
       public         postgres    false            �            1259    116548 
   dim_tiempo    TABLE     �   CREATE TABLE public.dim_tiempo (
    id_tiempo integer NOT NULL,
    date date,
    year integer,
    month integer,
    day integer
);
    DROP TABLE public.dim_tiempo;
       public         postgres    false            �            1259    116546    dim_tiempo_id_tiempo_seq    SEQUENCE     �   CREATE SEQUENCE public.dim_tiempo_id_tiempo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.dim_tiempo_id_tiempo_seq;
       public       postgres    false    209            c           0    0    dim_tiempo_id_tiempo_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.dim_tiempo_id_tiempo_seq OWNED BY public.dim_tiempo.id_tiempo;
            public       postgres    false    208            �            1259    116554    dim_tienda_id_tienda_seq    SEQUENCE     �   CREATE SEQUENCE public.dim_tienda_id_tienda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.dim_tienda_id_tienda_seq;
       public       postgres    false    211            d           0    0    dim_tienda_id_tienda_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.dim_tienda_id_tienda_seq OWNED BY public.dim_mesa.id_mesa;
            public       postgres    false    210            �            1259    116514    dimen_tiempo    TABLE     �   CREATE TABLE public.dimen_tiempo (
    id_tiempo integer NOT NULL,
    date date,
    year integer,
    month integer,
    day integer
);
     DROP TABLE public.dimen_tiempo;
       public         postgres    false            �            1259    116512    dimen_tiempo_id_tiempo_seq    SEQUENCE     �   CREATE SEQUENCE public.dimen_tiempo_id_tiempo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.dimen_tiempo_id_tiempo_seq;
       public       postgres    false    204            e           0    0    dimen_tiempo_id_tiempo_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.dimen_tiempo_id_tiempo_seq OWNED BY public.dimen_tiempo.id_tiempo;
            public       postgres    false    203            �            1259    116522    dimen_tienda    TABLE     u   CREATE TABLE public.dimen_tienda (
    id_tienda integer NOT NULL,
    nombre character varying,
    piso integer
);
     DROP TABLE public.dimen_tienda;
       public         postgres    false            �            1259    116520    dimen_tienda_id_tienda_seq    SEQUENCE     �   CREATE SEQUENCE public.dimen_tienda_id_tienda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.dimen_tienda_id_tienda_seq;
       public       postgres    false    206            f           0    0    dimen_tienda_id_tienda_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.dimen_tienda_id_tienda_seq OWNED BY public.dimen_tienda.id_tienda;
            public       postgres    false    205            �            1259    100131    dimension_cliente    TABLE     �   CREATE TABLE public.dimension_cliente (
    id_cliente integer NOT NULL,
    nombre character varying,
    cedula integer,
    edad integer,
    sexo character varying
);
 %   DROP TABLE public.dimension_cliente;
       public         postgres    false            �            1259    100129     dimension_cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.dimension_cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.dimension_cliente_id_cliente_seq;
       public       postgres    false    199            g           0    0     dimension_cliente_id_cliente_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.dimension_cliente_id_cliente_seq OWNED BY public.dimension_cliente.id_cliente;
            public       postgres    false    198            �            1259    100142    dimension_tiempo    TABLE     �   CREATE TABLE public.dimension_tiempo (
    id_tiempo integer NOT NULL,
    date date,
    year integer,
    month integer,
    week integer,
    day integer
);
 $   DROP TABLE public.dimension_tiempo;
       public         postgres    false            �            1259    100140    dimension_tiempo_id_tiempo_seq    SEQUENCE     �   CREATE SEQUENCE public.dimension_tiempo_id_tiempo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.dimension_tiempo_id_tiempo_seq;
       public       postgres    false    201            h           0    0    dimension_tiempo_id_tiempo_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.dimension_tiempo_id_tiempo_seq OWNED BY public.dimension_tiempo.id_tiempo;
            public       postgres    false    200            �            1259    100120    dimension_tienda    TABLE     y   CREATE TABLE public.dimension_tienda (
    id_tienda integer NOT NULL,
    nombre character varying,
    piso integer
);
 $   DROP TABLE public.dimension_tienda;
       public         postgres    false            �            1259    100118    dimension_tienda_id_tienda_seq    SEQUENCE     �   CREATE SEQUENCE public.dimension_tienda_id_tienda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.dimension_tienda_id_tienda_seq;
       public       postgres    false    197            i           0    0    dimension_tienda_id_tienda_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.dimension_tienda_id_tienda_seq OWNED BY public.dimension_tienda.id_tienda;
            public       postgres    false    196            �            1259    116531    hecho_acceso_tienda    TABLE     �   CREATE TABLE public.hecho_acceso_tienda (
    id_tienda integer NOT NULL,
    id_tiempo integer NOT NULL,
    ingresos integer,
    ingresos_m integer,
    ingresos_f integer,
    prom_edad_m integer,
    prom_edad_f integer
);
 '   DROP TABLE public.hecho_acceso_tienda;
       public         postgres    false            �            1259    116565 
   hecho_mesa    TABLE     s   CREATE TABLE public.hecho_mesa (
    id_mesa integer NOT NULL,
    id_tiempo integer NOT NULL,
    usos integer
);
    DROP TABLE public.hecho_mesa;
       public         postgres    false            �            1259    100148    hecho_venta    TABLE     �   CREATE TABLE public.hecho_venta (
    idcliente integer NOT NULL,
    idtiempo integer NOT NULL,
    idtienda integer NOT NULL,
    monto integer
);
    DROP TABLE public.hecho_venta;
       public         postgres    false            �
           2604    116559    dim_mesa id_mesa    DEFAULT     x   ALTER TABLE ONLY public.dim_mesa ALTER COLUMN id_mesa SET DEFAULT nextval('public.dim_tienda_id_tienda_seq'::regclass);
 ?   ALTER TABLE public.dim_mesa ALTER COLUMN id_mesa DROP DEFAULT;
       public       postgres    false    210    211    211            �
           2604    116551    dim_tiempo id_tiempo    DEFAULT     |   ALTER TABLE ONLY public.dim_tiempo ALTER COLUMN id_tiempo SET DEFAULT nextval('public.dim_tiempo_id_tiempo_seq'::regclass);
 C   ALTER TABLE public.dim_tiempo ALTER COLUMN id_tiempo DROP DEFAULT;
       public       postgres    false    209    208    209            �
           2604    116517    dimen_tiempo id_tiempo    DEFAULT     �   ALTER TABLE ONLY public.dimen_tiempo ALTER COLUMN id_tiempo SET DEFAULT nextval('public.dimen_tiempo_id_tiempo_seq'::regclass);
 E   ALTER TABLE public.dimen_tiempo ALTER COLUMN id_tiempo DROP DEFAULT;
       public       postgres    false    203    204    204            �
           2604    116525    dimen_tienda id_tienda    DEFAULT     �   ALTER TABLE ONLY public.dimen_tienda ALTER COLUMN id_tienda SET DEFAULT nextval('public.dimen_tienda_id_tienda_seq'::regclass);
 E   ALTER TABLE public.dimen_tienda ALTER COLUMN id_tienda DROP DEFAULT;
       public       postgres    false    206    205    206            �
           2604    100134    dimension_cliente id_cliente    DEFAULT     �   ALTER TABLE ONLY public.dimension_cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.dimension_cliente_id_cliente_seq'::regclass);
 K   ALTER TABLE public.dimension_cliente ALTER COLUMN id_cliente DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    100145    dimension_tiempo id_tiempo    DEFAULT     �   ALTER TABLE ONLY public.dimension_tiempo ALTER COLUMN id_tiempo SET DEFAULT nextval('public.dimension_tiempo_id_tiempo_seq'::regclass);
 I   ALTER TABLE public.dimension_tiempo ALTER COLUMN id_tiempo DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    100123    dimension_tienda id_tienda    DEFAULT     �   ALTER TABLE ONLY public.dimension_tienda ALTER COLUMN id_tienda SET DEFAULT nextval('public.dimension_tienda_id_tienda_seq'::regclass);
 I   ALTER TABLE public.dimension_tienda ALTER COLUMN id_tienda DROP DEFAULT;
       public       postgres    false    196    197    197            [          0    116556    dim_mesa 
   TABLE DATA               4   COPY public.dim_mesa (id_mesa, sponsor) FROM stdin;
    public       postgres    false    211   �O       Y          0    116548 
   dim_tiempo 
   TABLE DATA               G   COPY public.dim_tiempo (id_tiempo, date, year, month, day) FROM stdin;
    public       postgres    false    209   EP       T          0    116514    dimen_tiempo 
   TABLE DATA               I   COPY public.dimen_tiempo (id_tiempo, date, year, month, day) FROM stdin;
    public       postgres    false    204   �P       V          0    116522    dimen_tienda 
   TABLE DATA               ?   COPY public.dimen_tienda (id_tienda, nombre, piso) FROM stdin;
    public       postgres    false    206   �P       O          0    100131    dimension_cliente 
   TABLE DATA               S   COPY public.dimension_cliente (id_cliente, nombre, cedula, edad, sexo) FROM stdin;
    public       postgres    false    199   cQ       Q          0    100142    dimension_tiempo 
   TABLE DATA               S   COPY public.dimension_tiempo (id_tiempo, date, year, month, week, day) FROM stdin;
    public       postgres    false    201   q]       M          0    100120    dimension_tienda 
   TABLE DATA               C   COPY public.dimension_tienda (id_tienda, nombre, piso) FROM stdin;
    public       postgres    false    197   �]       W          0    116531    hecho_acceso_tienda 
   TABLE DATA                  COPY public.hecho_acceso_tienda (id_tienda, id_tiempo, ingresos, ingresos_m, ingresos_f, prom_edad_m, prom_edad_f) FROM stdin;
    public       postgres    false    207   P^       \          0    116565 
   hecho_mesa 
   TABLE DATA               >   COPY public.hecho_mesa (id_mesa, id_tiempo, usos) FROM stdin;
    public       postgres    false    212   8_       R          0    100148    hecho_venta 
   TABLE DATA               K   COPY public.hecho_venta (idcliente, idtiempo, idtienda, monto) FROM stdin;
    public       postgres    false    202   �_       j           0    0    dim_tiempo_id_tiempo_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.dim_tiempo_id_tiempo_seq', 4, true);
            public       postgres    false    208            k           0    0    dim_tienda_id_tienda_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.dim_tienda_id_tienda_seq', 8, true);
            public       postgres    false    210            l           0    0    dimen_tiempo_id_tiempo_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.dimen_tiempo_id_tiempo_seq', 3, true);
            public       postgres    false    203            m           0    0    dimen_tienda_id_tienda_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.dimen_tienda_id_tienda_seq', 12, true);
            public       postgres    false    205            n           0    0     dimension_cliente_id_cliente_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.dimension_cliente_id_cliente_seq', 176, true);
            public       postgres    false    198            o           0    0    dimension_tiempo_id_tiempo_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.dimension_tiempo_id_tiempo_seq', 4, true);
            public       postgres    false    200            p           0    0    dimension_tienda_id_tienda_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.dimension_tienda_id_tienda_seq', 12, true);
            public       postgres    false    196            �
           2606    116553    dim_tiempo dim_tiempo_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.dim_tiempo
    ADD CONSTRAINT dim_tiempo_pkey PRIMARY KEY (id_tiempo);
 D   ALTER TABLE ONLY public.dim_tiempo DROP CONSTRAINT dim_tiempo_pkey;
       public         postgres    false    209            �
           2606    116564    dim_mesa dim_tienda_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.dim_mesa
    ADD CONSTRAINT dim_tienda_pkey PRIMARY KEY (id_mesa);
 B   ALTER TABLE ONLY public.dim_mesa DROP CONSTRAINT dim_tienda_pkey;
       public         postgres    false    211            �
           2606    116519    dimen_tiempo dimen_tiempo_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.dimen_tiempo
    ADD CONSTRAINT dimen_tiempo_pkey PRIMARY KEY (id_tiempo);
 H   ALTER TABLE ONLY public.dimen_tiempo DROP CONSTRAINT dimen_tiempo_pkey;
       public         postgres    false    204            �
           2606    116530    dimen_tienda dimen_tienda_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.dimen_tienda
    ADD CONSTRAINT dimen_tienda_pkey PRIMARY KEY (id_tienda);
 H   ALTER TABLE ONLY public.dimen_tienda DROP CONSTRAINT dimen_tienda_pkey;
       public         postgres    false    206            �
           2606    100139 (   dimension_cliente dimension_cliente_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.dimension_cliente
    ADD CONSTRAINT dimension_cliente_pkey PRIMARY KEY (id_cliente);
 R   ALTER TABLE ONLY public.dimension_cliente DROP CONSTRAINT dimension_cliente_pkey;
       public         postgres    false    199            �
           2606    100147 &   dimension_tiempo dimension_tiempo_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.dimension_tiempo
    ADD CONSTRAINT dimension_tiempo_pkey PRIMARY KEY (id_tiempo);
 P   ALTER TABLE ONLY public.dimension_tiempo DROP CONSTRAINT dimension_tiempo_pkey;
       public         postgres    false    201            �
           2606    100128 &   dimension_tienda dimension_tienda_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.dimension_tienda
    ADD CONSTRAINT dimension_tienda_pkey PRIMARY KEY (id_tienda);
 P   ALTER TABLE ONLY public.dimension_tienda DROP CONSTRAINT dimension_tienda_pkey;
       public         postgres    false    197            �
           2606    116535 ,   hecho_acceso_tienda hecho_acceso_tienda_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.hecho_acceso_tienda
    ADD CONSTRAINT hecho_acceso_tienda_pkey PRIMARY KEY (id_tienda, id_tiempo);
 V   ALTER TABLE ONLY public.hecho_acceso_tienda DROP CONSTRAINT hecho_acceso_tienda_pkey;
       public         postgres    false    207    207            �
           2606    116569    hecho_mesa hecho_mesa_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.hecho_mesa
    ADD CONSTRAINT hecho_mesa_pkey PRIMARY KEY (id_mesa, id_tiempo);
 D   ALTER TABLE ONLY public.hecho_mesa DROP CONSTRAINT hecho_mesa_pkey;
       public         postgres    false    212    212            �
           2606    100152    hecho_venta hecho_venta_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.hecho_venta
    ADD CONSTRAINT hecho_venta_pkey PRIMARY KEY (idcliente, idtiempo, idtienda);
 F   ALTER TABLE ONLY public.hecho_venta DROP CONSTRAINT hecho_venta_pkey;
       public         postgres    false    202    202    202            �
           2606    100153    hecho_venta cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.hecho_venta
    ADD CONSTRAINT cliente FOREIGN KEY (idcliente) REFERENCES public.dimension_cliente(id_cliente);
 =   ALTER TABLE ONLY public.hecho_venta DROP CONSTRAINT cliente;
       public       postgres    false    202    2747    199            �
           2606    116570    hecho_mesa mesa    FK CONSTRAINT     v   ALTER TABLE ONLY public.hecho_mesa
    ADD CONSTRAINT mesa FOREIGN KEY (id_mesa) REFERENCES public.dim_mesa(id_mesa);
 9   ALTER TABLE ONLY public.hecho_mesa DROP CONSTRAINT mesa;
       public       postgres    false    212    2761    211            �
           2606    100158    hecho_venta tiempo    FK CONSTRAINT     �   ALTER TABLE ONLY public.hecho_venta
    ADD CONSTRAINT tiempo FOREIGN KEY (idtiempo) REFERENCES public.dimension_tiempo(id_tiempo);
 <   ALTER TABLE ONLY public.hecho_venta DROP CONSTRAINT tiempo;
       public       postgres    false    2749    202    201            �
           2606    116541    hecho_acceso_tienda tiempo    FK CONSTRAINT     �   ALTER TABLE ONLY public.hecho_acceso_tienda
    ADD CONSTRAINT tiempo FOREIGN KEY (id_tiempo) REFERENCES public.dimen_tiempo(id_tiempo);
 D   ALTER TABLE ONLY public.hecho_acceso_tienda DROP CONSTRAINT tiempo;
       public       postgres    false    204    2753    207            �
           2606    116575    hecho_mesa tiempo    FK CONSTRAINT     ~   ALTER TABLE ONLY public.hecho_mesa
    ADD CONSTRAINT tiempo FOREIGN KEY (id_tiempo) REFERENCES public.dim_tiempo(id_tiempo);
 ;   ALTER TABLE ONLY public.hecho_mesa DROP CONSTRAINT tiempo;
       public       postgres    false    2759    209    212            �
           2606    100163    hecho_venta tienda    FK CONSTRAINT     �   ALTER TABLE ONLY public.hecho_venta
    ADD CONSTRAINT tienda FOREIGN KEY (idtienda) REFERENCES public.dimension_tienda(id_tienda);
 <   ALTER TABLE ONLY public.hecho_venta DROP CONSTRAINT tienda;
       public       postgres    false    202    2745    197            �
           2606    116536    hecho_acceso_tienda tienda    FK CONSTRAINT     �   ALTER TABLE ONLY public.hecho_acceso_tienda
    ADD CONSTRAINT tienda FOREIGN KEY (id_tienda) REFERENCES public.dimen_tienda(id_tienda);
 D   ALTER TABLE ONLY public.hecho_acceso_tienda DROP CONSTRAINT tienda;
       public       postgres    false    207    2755    206            [   Q   x��K� �u�)8��_<��
�!A�H]x{gF2�^0Q��!ie��kX�smX�bׇ�`�&݅�5�;ݥq=� ��X�      Y   9   x�3�420��50�5039�8�����0Qs.c���!L�А�!7�Ј+F��� �      T   1   x�3�420��50�5039�8͹��0Q.c���!L�А+F��� �.u      V   �   x��I� D�uq
� 
vƻd�`� �d�ӧ�{�J#J��T3�V�Ռ�o�� ^`䭖�7X��G
�sGt�Rj>`VP���'����o�n�aQ�
���ʴ����F�+'
k=sF�c���M�sQJ�(-�      O   �  x�]��r�8�����l ��v<��?���L�,�&��%�x��߯)����WF��9}Z=�>�!����C�tf�Q��Q��m�Jn��+��<��h�7����S�>W}=l�U�˾�n;6�]Q��]�����\�aP67�gǥ\}�>��>*gMZX����N����H��&6��M�ڥiz��WW]�u���#'7�v��V������-������w���.4�_u|k�b�՚k�u�~۽q��|}l���3Vg�����V����]����hS_ZU�	�j׌�F}m:қ��Z��M����,6����*<��0ȉ
�u�ȗ�Xu�['wd��ڠL���NWֹ�deM��l�ʘL�Ŕm�ԟa��m�\��(�ef���%c/��A�`lj
WN�I�n���M��(��M1Y��)P}R�5q���
k���T��m�Ͽ�=�Pƻ(L�z��ӏ�nm�$n*
�����>��*KK�曙L��4�M�6��@`f�͹R��rl�z&=��������r/�1�z�^b�M�W��_+k��b��ȩ��]@�M���X6;ȫ��W+�Q�M��L�|NG�Z0C6��JjeS\
�>T����t�s׭�g��'v��oc�-�6aO�r���e�pAP}��;r��ޔ��"ǽ��n�Ɨ&ʁ��3�7��Mh�x${�6��\�rgQ�y��bL>�q� �Ւ"�j�9�/��G܉�B�i2��ݶ�'���e����˼z��M~_�� {��g��"kw��8�z����ʩ�O�]�h����H��;�I=�V��l��)�>F\u�W^�v�5k� �C�b���O�c3�-��=Lx��,3)�_*�\V�>��A���:��$d��n�ujS=�S�#6�� �=)�v ��\ׯ��Q*�Ί��{��U���q#��5d��xq�R]������	M�3�OIB0��$�:��KXU�z�"�m�kj�}O�V�(��B��-�2#9��5v��<���S8�6y����̣�S˱��D$�^�]�B�T�x)�9��Ce�w�;1|��p�ĺk^��r/��� Ĩ�Xn��͈��n7��BKY���C7�Q�μ�E�$=T���RR�m�sa��������6y@l��Q9�J'J���h�jv��N����F��m��b�
ґ�0�ܞ6����Mr�q�^�
q�J�쑕u�5e�MYL-���߀:�h�T�-��r�,G��&���=�@��k��E#�����vT�6Y�8���=�Md�"�1�by���>�u���C���? IoC�-�H!��g`���#+����,p�!�S �o^�1�|���i�����:�~A�V������~%��3�$����،?��[�%*7�z�K�ynw� �����g�J�����:v?�����ͷ�9�;�� 9x���Wb22�8B��^�hD�B���;:����t4p� /H� �9n>�4�����]�62z�2*d����m&�fn����MDkha뎯� �����ӷrLHIߞ�s�'=�3���4`p�"����Y�`�}O@����OaO������H/W��EAs�W-@/Q茝H[`Scӭ�ԅTb�^f�+�T�2UC�Җ�r���j�?~�79�[�V��c󏿈C����!�w;�56Ax7��y:���tC��9����f��z����ﯯ;�X�.^
�@ذ�vb�	�@��M��ɨ_�R3�����ò֢��D�j:�|F���'/ �2,6�-yA-PE՚X��#�ti6�t��_�jǡ���l�)�e7Z\i�b0��i	>�?�R�.���=�'9ƍ��t�®�/@
���d�jC���o���(@�6-��g�r�n9F�}�9>�y�7��x�]�˭]� ��Z�A�=M�ú����m֩�T{��e�#P!}wޅ��*���Hgvo�cr%e���T��m���������rq���TZZ�:6{�s���gҰ��@-#��Ğ��)�=����#<%�%�q�2"����V9 ( �E����D��@�
:Wz�'�Ce4�܎�=|���VS� �4Hf�����/��5] �lg5M�!l�ީ��H3J� NZ=bAд���\��
T6+�FUf�q�:�0�sE����-�DkW��Z�X�Z��@*�44��hA�UO���K��/���T�B�����2o�b^v�Z3jɴ��;?��	�2��F4l+�`��t��k�,�@����n�yj��b�e��O/���5u>c�wj^�ǒ��c�"���ۅޒ��(oQB�{z�������/V�<���ȓ��N�q�d���O�[���_�5�Q���5 P��x|���~�����Ξ2p���aT`*a;�3�2y'�'�xYw���%`^+�'B��~�����dr4��h��u7e�xҲ���ס��ˋѱ�H���1�$$�ץLF��[A���L�}��`≬|����L�2�/����q �j�YiO��81H�{��?~���HAW��9u����Fh��ܞn�g#E�x���+��f��
��w�� �/)3%��g�)�y��?C�JuyzJOLx��kX���Yc��w� "U�VX.�/�\W$��b�xb���mp��9(���?����L� �Y6\p�m��Q���_�d%򱵄�j{��c��"=�nǗ7"��y)Xԏ)�8��q9��_���T#���b���"_��<�/��X��I�Xx�;.=�Q=!Ӊ�)2F햎�63>�U���^%a�ˋn0[�ؤ�f��ϝ���X�s{$?�v���\v_��D�/��Y �Zgn��'�}����_{" s��>��S%��y&h'J3��#%.���������l_����n-�b��S�azܽޭ�ËDЋ�bF�aV�v[y`V�;]� �5\�aM�d�i��Vbl陂̙���
�&e��'��,CLq�Eq�(ߺ�����g����`x���|�{�-�ˌ����(�c2%;�2<�#(�b~�����1n%��t���קO��2���      Q   ;   x�Mɻ	  �:�Ey��g��C�P���)Z�~�t���b�ܐnTH�o���2����      M   �   x��I� D�uq
� 
vƻd�`� �d�ӧ�{�J#J��T3�V�Ռ�o�� ^`䭖�7X��G
�sGt�Rj>`VP���'����o�n�aQ�
���ʴ����F�+'
k=sF�c���M�sQJ�(-�      W   �   x�U�ۭ�0C��a
�z8^�d�9.%ߦ(��B��J��%SRb�;�:��Đ0�h�U#���H����|�)3���F�oYA��K�$.66?/YVH�_��,�6�*u��1�j���H>Z���M���՚��&�1��+�l��(uzIZ��&�h� oi5�W!g�ިe}f��n�?��8��h^�n1Dd��C�݉��'��ِ�_ � ��@�      \   Q   x����@��PL$�%[L��#�?�5X���'<b{�WL�,�Ԥ���[�����,�V�ei��p���(��w�	�      R   n  x�5VY�A��:Lľ�%�?GL��(LƦ�?ş�ȓ�?�?.Fo~��;��}�է�T���_E�����*/?��3K�Ws@_X;��h	V���R�C� "[ʭ�u*��E��&�g�J�~p�E�86E	R��Dsnğ�?F�/?)�|B(ud���2� ��)��p�G�$v�<ɟI�$~A�ܹ�����ӓ��к<%��J�S��R3`��m�T�f�zj۬�#��E��4.'�sG�ztJ���ß
���3�~*�o9���,���VmB��v��p�o��FC��h�r�K泫A��dP@�.n�Ұ����(�}.ۆ�x��2�u[
{�͗u�:n?,1s����1��l��9k������`�nn���\ݘ�%��*�¶��vM	�ֆA��c$� quT�H$��!yI��<2���K�{����V'*��2[���%��� ��d�0u����qe���7��I���\ �w��/����
�+=ŗ�"��� �^��TS�^�� ���͡�XU�v����B@���{1',^vD0�Բ�J Ƣ2U`���b� y��6C�ؘ�b��.�˭�᤯_'I�:F�;�ɴ`���8��0���<�-����d��~T�d�=��7.��Y�c��\١�1w�)������J�Q�u���/2�s�tɻaA3c$�C�$q�b!�Y�l?ظ��7gcv�}w��bLsY� �$�ZL;5�WI�A`�,�|�>mB� ��Y��SOӂ�`���̀�ܪK�=;�)@�G#��R��z7;���<)G��
����@��w����1�OY�P[�Ҙ4��+u�X��㲞^Fsv<׆�a��M,\oǱ���i?�9�rک�!�魫���h*�R��d�#|����왇�ɓ�z-[�YywG�&�eX}c��+�>�%�z���٪(��H�k�$<�X����)��zr���c�m#��$�W�Q1��vC���{��÷ĸ�l�X��s�:T��e�c�V6@\W�A%�/�{FP��[&>Mš�4�%�o���U�p�}��KTI�'�[����A2=��z����(.��`��
�;2���������{�     