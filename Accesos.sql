PGDMP         )                w            Accesos    11.2    11.2 O    i           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            j           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            k           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            l           1262    99445    Accesos    DATABASE     �   CREATE DATABASE "Accesos" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Latin America.1252' LC_CTYPE = 'Spanish_Latin America.1252';
    DROP DATABASE "Accesos";
             postgres    false            �            1259    99446    acceso    TABLE     �   CREATE TABLE public.acceso (
    id_acc integer NOT NULL,
    nombre character varying NOT NULL,
    ubicacion character varying NOT NULL,
    cc integer NOT NULL
);
    DROP TABLE public.acceso;
       public         postgres    false            �            1259    99452    acceso_id_acc_seq    SEQUENCE     �   CREATE SEQUENCE public.acceso_id_acc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.acceso_id_acc_seq;
       public       postgres    false    196            m           0    0    acceso_id_acc_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.acceso_id_acc_seq OWNED BY public.acceso.id_acc;
            public       postgres    false    197            �            1259    99454 
   camara_acc    TABLE     �   CREATE TABLE public.camara_acc (
    id_camara_acc integer NOT NULL,
    marca character varying NOT NULL,
    fecha_instalacion date NOT NULL,
    id_acceso integer NOT NULL
);
    DROP TABLE public.camara_acc;
       public         postgres    false            �            1259    99460    camara_acc_id_camara_acc_seq    SEQUENCE     �   CREATE SEQUENCE public.camara_acc_id_camara_acc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.camara_acc_id_camara_acc_seq;
       public       postgres    false    198            n           0    0    camara_acc_id_camara_acc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.camara_acc_id_camara_acc_seq OWNED BY public.camara_acc.id_camara_acc;
            public       postgres    false    199            �            1259    99462    camara_tienda    TABLE     �   CREATE TABLE public.camara_tienda (
    id_camara_tien integer NOT NULL,
    marca character varying NOT NULL,
    fecha_instalado date NOT NULL,
    id_tienda integer NOT NULL
);
 !   DROP TABLE public.camara_tienda;
       public         postgres    false            �            1259    99468     camara_tienda_id_camara_tien_seq    SEQUENCE     �   CREATE SEQUENCE public.camara_tienda_id_camara_tien_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.camara_tienda_id_camara_tien_seq;
       public       postgres    false    200            o           0    0     camara_tienda_id_camara_tien_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.camara_tienda_id_camara_tien_seq OWNED BY public.camara_tienda.id_camara_tien;
            public       postgres    false    201            �            1259    99470    centrocomercial    TABLE     �   CREATE TABLE public.centrocomercial (
    id_cc integer NOT NULL,
    nombre character varying NOT NULL,
    ubicacion character varying NOT NULL
);
 #   DROP TABLE public.centrocomercial;
       public         postgres    false            �            1259    99476    centrocomercial_id_cc_seq    SEQUENCE     �   CREATE SEQUENCE public.centrocomercial_id_cc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.centrocomercial_id_cc_seq;
       public       postgres    false    202            p           0    0    centrocomercial_id_cc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.centrocomercial_id_cc_seq OWNED BY public.centrocomercial.id_cc;
            public       postgres    false    203            �            1259    99486    estadisticas_acceso    TABLE     �   CREATE TABLE public.estadisticas_acceso (
    id_estadi_acceso integer NOT NULL,
    ingreso boolean NOT NULL,
    fecha_hora timestamp without time zone NOT NULL,
    id_camara integer NOT NULL,
    id_persona integer NOT NULL,
    id_telf integer
);
 '   DROP TABLE public.estadisticas_acceso;
       public         postgres    false            �            1259    99489 (   estadisticas_acceso_id_estadi_acceso_seq    SEQUENCE     �   CREATE SEQUENCE public.estadisticas_acceso_id_estadi_acceso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.estadisticas_acceso_id_estadi_acceso_seq;
       public       postgres    false    204            q           0    0 (   estadisticas_acceso_id_estadi_acceso_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.estadisticas_acceso_id_estadi_acceso_seq OWNED BY public.estadisticas_acceso.id_estadi_acceso;
            public       postgres    false    205            �            1259    99496    estadisticas_tienda    TABLE     �   CREATE TABLE public.estadisticas_tienda (
    id_est_tienda integer NOT NULL,
    ingreso boolean NOT NULL,
    id_camara integer NOT NULL,
    fecha_hora timestamp without time zone NOT NULL,
    id_persona integer NOT NULL,
    id_telf integer
);
 '   DROP TABLE public.estadisticas_tienda;
       public         postgres    false            �            1259    99499 %   estadisticas_tienda_id_est_tienda_seq    SEQUENCE     �   CREATE SEQUENCE public.estadisticas_tienda_id_est_tienda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.estadisticas_tienda_id_est_tienda_seq;
       public       postgres    false    206            r           0    0 %   estadisticas_tienda_id_est_tienda_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.estadisticas_tienda_id_est_tienda_seq OWNED BY public.estadisticas_tienda.id_est_tienda;
            public       postgres    false    207            �            1259    99509    persona    TABLE     �   CREATE TABLE public.persona (
    id_persona integer NOT NULL,
    edad integer NOT NULL,
    sexo character varying NOT NULL
);
    DROP TABLE public.persona;
       public         postgres    false            �            1259    99515    persona_id_persona_seq    SEQUENCE     �   CREATE SEQUENCE public.persona_id_persona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.persona_id_persona_seq;
       public       postgres    false    208            s           0    0    persona_id_persona_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.persona_id_persona_seq OWNED BY public.persona.id_persona;
            public       postgres    false    209            �            1259    99517    telf_inteligente    TABLE     �   CREATE TABLE public.telf_inteligente (
    id_telf integer NOT NULL,
    mac character varying NOT NULL,
    id_persona integer NOT NULL
);
 $   DROP TABLE public.telf_inteligente;
       public         postgres    false            �            1259    99523    telf_inteligente_id_telf_seq    SEQUENCE     �   CREATE SEQUENCE public.telf_inteligente_id_telf_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.telf_inteligente_id_telf_seq;
       public       postgres    false    210            t           0    0    telf_inteligente_id_telf_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.telf_inteligente_id_telf_seq OWNED BY public.telf_inteligente.id_telf;
            public       postgres    false    211            �            1259    99525    tienda    TABLE     �   CREATE TABLE public.tienda (
    id_tienda integer NOT NULL,
    nombre character varying NOT NULL,
    piso integer NOT NULL,
    id_cc integer NOT NULL
);
    DROP TABLE public.tienda;
       public         postgres    false            �            1259    99531    tienda_id_tienda_seq    SEQUENCE     �   CREATE SEQUENCE public.tienda_id_tienda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tienda_id_tienda_seq;
       public       postgres    false    212            u           0    0    tienda_id_tienda_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tienda_id_tienda_seq OWNED BY public.tienda.id_tienda;
            public       postgres    false    213            �
           2604    99538    acceso id_acc    DEFAULT     n   ALTER TABLE ONLY public.acceso ALTER COLUMN id_acc SET DEFAULT nextval('public.acceso_id_acc_seq'::regclass);
 <   ALTER TABLE public.acceso ALTER COLUMN id_acc DROP DEFAULT;
       public       postgres    false    197    196            �
           2604    99539    camara_acc id_camara_acc    DEFAULT     �   ALTER TABLE ONLY public.camara_acc ALTER COLUMN id_camara_acc SET DEFAULT nextval('public.camara_acc_id_camara_acc_seq'::regclass);
 G   ALTER TABLE public.camara_acc ALTER COLUMN id_camara_acc DROP DEFAULT;
       public       postgres    false    199    198            �
           2604    99540    camara_tienda id_camara_tien    DEFAULT     �   ALTER TABLE ONLY public.camara_tienda ALTER COLUMN id_camara_tien SET DEFAULT nextval('public.camara_tienda_id_camara_tien_seq'::regclass);
 K   ALTER TABLE public.camara_tienda ALTER COLUMN id_camara_tien DROP DEFAULT;
       public       postgres    false    201    200            �
           2604    99541    centrocomercial id_cc    DEFAULT     ~   ALTER TABLE ONLY public.centrocomercial ALTER COLUMN id_cc SET DEFAULT nextval('public.centrocomercial_id_cc_seq'::regclass);
 D   ALTER TABLE public.centrocomercial ALTER COLUMN id_cc DROP DEFAULT;
       public       postgres    false    203    202            �
           2604    99543 $   estadisticas_acceso id_estadi_acceso    DEFAULT     �   ALTER TABLE ONLY public.estadisticas_acceso ALTER COLUMN id_estadi_acceso SET DEFAULT nextval('public.estadisticas_acceso_id_estadi_acceso_seq'::regclass);
 S   ALTER TABLE public.estadisticas_acceso ALTER COLUMN id_estadi_acceso DROP DEFAULT;
       public       postgres    false    205    204            �
           2604    99545 !   estadisticas_tienda id_est_tienda    DEFAULT     �   ALTER TABLE ONLY public.estadisticas_tienda ALTER COLUMN id_est_tienda SET DEFAULT nextval('public.estadisticas_tienda_id_est_tienda_seq'::regclass);
 P   ALTER TABLE public.estadisticas_tienda ALTER COLUMN id_est_tienda DROP DEFAULT;
       public       postgres    false    207    206            �
           2604    99547    persona id_persona    DEFAULT     x   ALTER TABLE ONLY public.persona ALTER COLUMN id_persona SET DEFAULT nextval('public.persona_id_persona_seq'::regclass);
 A   ALTER TABLE public.persona ALTER COLUMN id_persona DROP DEFAULT;
       public       postgres    false    209    208            �
           2604    99548    telf_inteligente id_telf    DEFAULT     �   ALTER TABLE ONLY public.telf_inteligente ALTER COLUMN id_telf SET DEFAULT nextval('public.telf_inteligente_id_telf_seq'::regclass);
 G   ALTER TABLE public.telf_inteligente ALTER COLUMN id_telf DROP DEFAULT;
       public       postgres    false    211    210            �
           2604    99549    tienda id_tienda    DEFAULT     t   ALTER TABLE ONLY public.tienda ALTER COLUMN id_tienda SET DEFAULT nextval('public.tienda_id_tienda_seq'::regclass);
 ?   ALTER TABLE public.tienda ALTER COLUMN id_tienda DROP DEFAULT;
       public       postgres    false    213    212            U          0    99446    acceso 
   TABLE DATA               ?   COPY public.acceso (id_acc, nombre, ubicacion, cc) FROM stdin;
    public       postgres    false    196   ^]       W          0    99454 
   camara_acc 
   TABLE DATA               X   COPY public.camara_acc (id_camara_acc, marca, fecha_instalacion, id_acceso) FROM stdin;
    public       postgres    false    198   �]       Y          0    99462    camara_tienda 
   TABLE DATA               Z   COPY public.camara_tienda (id_camara_tien, marca, fecha_instalado, id_tienda) FROM stdin;
    public       postgres    false    200   �]       [          0    99470    centrocomercial 
   TABLE DATA               C   COPY public.centrocomercial (id_cc, nombre, ubicacion) FROM stdin;
    public       postgres    false    202   @^       ]          0    99486    estadisticas_acceso 
   TABLE DATA               t   COPY public.estadisticas_acceso (id_estadi_acceso, ingreso, fecha_hora, id_camara, id_persona, id_telf) FROM stdin;
    public       postgres    false    204   n^       _          0    99496    estadisticas_tienda 
   TABLE DATA               q   COPY public.estadisticas_tienda (id_est_tienda, ingreso, id_camara, fecha_hora, id_persona, id_telf) FROM stdin;
    public       postgres    false    206   D       a          0    99509    persona 
   TABLE DATA               9   COPY public.persona (id_persona, edad, sexo) FROM stdin;
    public       postgres    false    208   |�       c          0    99517    telf_inteligente 
   TABLE DATA               D   COPY public.telf_inteligente (id_telf, mac, id_persona) FROM stdin;
    public       postgres    false    210   A�       e          0    99525    tienda 
   TABLE DATA               @   COPY public.tienda (id_tienda, nombre, piso, id_cc) FROM stdin;
    public       postgres    false    212   v�       v           0    0    acceso_id_acc_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.acceso_id_acc_seq', 3, true);
            public       postgres    false    197            w           0    0    camara_acc_id_camara_acc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.camara_acc_id_camara_acc_seq', 3, true);
            public       postgres    false    199            x           0    0     camara_tienda_id_camara_tien_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.camara_tienda_id_camara_tien_seq', 12, true);
            public       postgres    false    201            y           0    0    centrocomercial_id_cc_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.centrocomercial_id_cc_seq', 1, true);
            public       postgres    false    203            z           0    0 (   estadisticas_acceso_id_estadi_acceso_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.estadisticas_acceso_id_estadi_acceso_seq', 637, true);
            public       postgres    false    205            {           0    0 %   estadisticas_tienda_id_est_tienda_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.estadisticas_tienda_id_est_tienda_seq', 355, true);
            public       postgres    false    207            |           0    0    persona_id_persona_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.persona_id_persona_seq', 200, true);
            public       postgres    false    209            }           0    0    telf_inteligente_id_telf_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.telf_inteligente_id_telf_seq', 79, true);
            public       postgres    false    211            ~           0    0    tienda_id_tienda_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tienda_id_tienda_seq', 12, true);
            public       postgres    false    213            �
           2606    99552    acceso acceso_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.acceso
    ADD CONSTRAINT acceso_pkey PRIMARY KEY (id_acc);
 <   ALTER TABLE ONLY public.acceso DROP CONSTRAINT acceso_pkey;
       public         postgres    false    196            �
           2606    99554    camara_acc camara_acc_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.camara_acc
    ADD CONSTRAINT camara_acc_pkey PRIMARY KEY (id_camara_acc);
 D   ALTER TABLE ONLY public.camara_acc DROP CONSTRAINT camara_acc_pkey;
       public         postgres    false    198            �
           2606    99556     camara_tienda camara_tienda_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.camara_tienda
    ADD CONSTRAINT camara_tienda_pkey PRIMARY KEY (id_camara_tien);
 J   ALTER TABLE ONLY public.camara_tienda DROP CONSTRAINT camara_tienda_pkey;
       public         postgres    false    200            �
           2606    99560 $   centrocomercial centrocomercial_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.centrocomercial
    ADD CONSTRAINT centrocomercial_pkey PRIMARY KEY (id_cc);
 N   ALTER TABLE ONLY public.centrocomercial DROP CONSTRAINT centrocomercial_pkey;
       public         postgres    false    202            �
           2606    99564 ,   estadisticas_acceso estadisticas_acceso_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.estadisticas_acceso
    ADD CONSTRAINT estadisticas_acceso_pkey PRIMARY KEY (id_estadi_acceso);
 V   ALTER TABLE ONLY public.estadisticas_acceso DROP CONSTRAINT estadisticas_acceso_pkey;
       public         postgres    false    204            �
           2606    99568 ,   estadisticas_tienda estadisticas_tienda_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.estadisticas_tienda
    ADD CONSTRAINT estadisticas_tienda_pkey PRIMARY KEY (id_est_tienda);
 V   ALTER TABLE ONLY public.estadisticas_tienda DROP CONSTRAINT estadisticas_tienda_pkey;
       public         postgres    false    206            �
           2606    99570    telf_inteligente mac 
   CONSTRAINT     N   ALTER TABLE ONLY public.telf_inteligente
    ADD CONSTRAINT mac UNIQUE (mac);
 >   ALTER TABLE ONLY public.telf_inteligente DROP CONSTRAINT mac;
       public         postgres    false    210            �
           2606    99574    persona persona_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id_persona);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public         postgres    false    208            �
           2606    99576 &   telf_inteligente telf_inteligente_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.telf_inteligente
    ADD CONSTRAINT telf_inteligente_pkey PRIMARY KEY (id_telf);
 P   ALTER TABLE ONLY public.telf_inteligente DROP CONSTRAINT telf_inteligente_pkey;
       public         postgres    false    210            �
           2606    99580    tienda tienda_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.tienda
    ADD CONSTRAINT tienda_pkey PRIMARY KEY (id_tienda);
 <   ALTER TABLE ONLY public.tienda DROP CONSTRAINT tienda_pkey;
       public         postgres    false    212            �
           2606    99583    camara_acc acceso    FK CONSTRAINT     w   ALTER TABLE ONLY public.camara_acc
    ADD CONSTRAINT acceso FOREIGN KEY (id_acceso) REFERENCES public.acceso(id_acc);
 ;   ALTER TABLE ONLY public.camara_acc DROP CONSTRAINT acceso;
       public       postgres    false    198    196    2750            �
           2606    99588    estadisticas_tienda camara    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadisticas_tienda
    ADD CONSTRAINT camara FOREIGN KEY (id_camara) REFERENCES public.camara_tienda(id_camara_tien);
 D   ALTER TABLE ONLY public.estadisticas_tienda DROP CONSTRAINT camara;
       public       postgres    false    206    200    2754            �
           2606    99593    estadisticas_acceso camara    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadisticas_acceso
    ADD CONSTRAINT camara FOREIGN KEY (id_camara) REFERENCES public.camara_acc(id_camara_acc);
 D   ALTER TABLE ONLY public.estadisticas_acceso DROP CONSTRAINT camara;
       public       postgres    false    198    204    2752            �
           2606    99598 	   acceso cc    FK CONSTRAINT     p   ALTER TABLE ONLY public.acceso
    ADD CONSTRAINT cc FOREIGN KEY (cc) REFERENCES public.centrocomercial(id_cc);
 3   ALTER TABLE ONLY public.acceso DROP CONSTRAINT cc;
       public       postgres    false    2756    202    196            �
           2606    99608 	   tienda cc    FK CONSTRAINT     s   ALTER TABLE ONLY public.tienda
    ADD CONSTRAINT cc FOREIGN KEY (id_cc) REFERENCES public.centrocomercial(id_cc);
 3   ALTER TABLE ONLY public.tienda DROP CONSTRAINT cc;
       public       postgres    false    202    212    2756            �
           2606    99618    estadisticas_tienda mac    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadisticas_tienda
    ADD CONSTRAINT mac FOREIGN KEY (id_telf) REFERENCES public.telf_inteligente(id_telf);
 A   ALTER TABLE ONLY public.estadisticas_tienda DROP CONSTRAINT mac;
       public       postgres    false    206    2766    210            �
           2606    99628    telf_inteligente persona    FK CONSTRAINT     �   ALTER TABLE ONLY public.telf_inteligente
    ADD CONSTRAINT persona FOREIGN KEY (id_persona) REFERENCES public.persona(id_persona);
 B   ALTER TABLE ONLY public.telf_inteligente DROP CONSTRAINT persona;
       public       postgres    false    210    2762    208            �
           2606    99633    estadisticas_tienda persona    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadisticas_tienda
    ADD CONSTRAINT persona FOREIGN KEY (id_persona) REFERENCES public.persona(id_persona);
 E   ALTER TABLE ONLY public.estadisticas_tienda DROP CONSTRAINT persona;
       public       postgres    false    2762    206    208            �
           2606    99638    estadisticas_acceso persona    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadisticas_acceso
    ADD CONSTRAINT persona FOREIGN KEY (id_persona) REFERENCES public.persona(id_persona);
 E   ALTER TABLE ONLY public.estadisticas_acceso DROP CONSTRAINT persona;
       public       postgres    false    208    2762    204            �
           2606    99648    estadisticas_acceso telf    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadisticas_acceso
    ADD CONSTRAINT telf FOREIGN KEY (id_telf) REFERENCES public.telf_inteligente(id_telf);
 B   ALTER TABLE ONLY public.estadisticas_acceso DROP CONSTRAINT telf;
       public       postgres    false    210    2766    204            �
           2606    99658    camara_tienda tienda    FK CONSTRAINT     }   ALTER TABLE ONLY public.camara_tienda
    ADD CONSTRAINT tienda FOREIGN KEY (id_tienda) REFERENCES public.tienda(id_tienda);
 >   ALTER TABLE ONLY public.camara_tienda DROP CONSTRAINT tienda;
       public       postgres    false    200    212    2768            U   7   x�3�,�I�J���/*I�4�2�LL.M,���,.-�9�R�29S���1z\\\ �w      W   +   x�3�,�ϫ�4204�50�54�4�2�3�2�3����� �c      Y   P   x�eϹ�0D�د����z����!m:�(�����5�\7E�o�Y!̂jVif�n�f�i6YfeCe$W!Ϩp����4�      [      x�3�,N�M���LN,JLN,����� O�<      ]      x��]ɑ-9�<����g$pI!F�>����;��$�5�fu���}a�?��GZ?5�k���m��c�6g�#�8��?_�+n<Fg�� n���XG�P����ߣ=��i�g���q�+�?��g��Ya�[�c!�?����N�e}�x��:^�n�
�G��L,�z�6�o���ۯ@{�~޿���AM9}N㈻�
��>O[F`p�3O���������筇[�Be*��e]�"�9n�������!�~}�~��b¯�q.�W�y�v�}L��ǁ쵥.��Di�=�7�V@����+#�m�����#p�1Vs�0���pT*�ܯ�y@�d��+%���B�f����ԏ>�?�9Ò�C�mS\v��03����cxpSwξ[��)
6#��Pך�u.�'܄zPd�p�y~�;�#����C�!�G&d����y�ю.פ��l� 4JD�6ud���p���c�8�_b��L	��|�V꺼^��@���ݛPK$^�)���6ytص�J��3'(|���~j&@�Ԉ����LZI���x,�ۅu�'k�d}7�Xbk
��>͔ f�@會��63^k�
M��ʮ�������ؽ7?���\3%����1p����'����bh��~B��L,^�Ca���Ņ_3!����`�݋8�24�8���6}W��e>h�g�tٿ/�Je�<�t��:.V�L��9J�h��R�8��֠=Z�+#�i�S_m��·;�R�����3&E��R�WQ���sg�ȴ
�ov�����µ����8�7�LʦP#�X-�򣞙�M�V���A���̌ ��B���.�;#33�)҈��D㉮K3�)�
��~���/3 ^�_�:?��ř�M���8��MWvufB6eZ�C���2�L�x��m:s-ޜ	ٔj�~�V����VeR����㖵{p�*'���G��[⧸*+k��ϸL��W�rM�ط�\���J��_�^�崬J���$��w�����_βE?Ȫ�@��# ���%~b��P�a��#G�D�8�r(�0�{��3)<h�~خ�_?ogJ��h�3�\��dgF��_MT	xߛ9�k ��5�.u˵3#�r�o���ݜ��9l[|�T��ĥkgF�.ZK��x^&�P���f1��xWB ��hOԷ�ە����(�Mr�Oe�B}`�����էR�Q�c�;s�2����nj��~,����WX�C���TB����#*g"<:�#w]��ΜxmbC�kkmm�ea<Ϊ�I�o�4&�(���w<ADB2]v|�)@H4?��cn4R��*�F��)6O:Ұ�+�x��^��}�R�jE��af�d6��I�OYUF��5�i���I���� �Z�,"qwC�/�R3���8�x�W��\��&�>��V��d���BG_����t {!]���Wn �� ���(�w��7< <J��2��8|�E�:oU��c��]dy�Q$���N!�0�;J4�Ɯ�9Ý2,�Q��2*�C?0���ٹ��tHH�����o�s:O�/@x?���Gf����=��U�Hp{N聄��! �����I��P���#������D��	<t	�a�u"'� B��|�ۖ�Ja+D��ɺo��@���ޭ�Ǵ���DN�D㙲t��@��t�	]e�tY١�#�G�|���܋W��������3zN�ūs�x_�sW�x{N��<t6������s����8����µ���9�"�Geװ��@�j��Q��}b&�ՠ��Kt{��3?BQ��d�RR�	�:��R����<������l�Jt��}��'�AHؽ��3}"��#�u�hϩ>c�A?�hoD�j!p9��h����O(zd�=��Dz���q9�3N3g�tf��٪N�C���� eY������� e���
s��~Z����q�qz4�2��N��9�q���xN�	D���J!Ro�5�CQ��XC8/0�Cj�(�����e9�'�q$��c��&g����e����ə?��nb�p�=�#35��71�e�	��
:�lۉ��]d�fP��&T��X�Y��?��n�1b"�n.0�3(��fsx�-���'�70��vnQ��1������� p�8��2�Cr�@a�N��l�" ���!h�[W����l�GD�� D�omY������G`����Z���~ţ��1�
�cly��u�r�C�W�iH�G�	��YC��"{E:��@��VŻ?
/ः����x�"GA2E0@�(��jz}�.���`|�^Hւ�1���Y���C��m��n��*;cxIr	�@���9H���WWr���#����Q&ﻲ1g3iނ]�zWn�{��3��Vn��9 �3�C���rc��L'��Բ������Мȑ���t�s4�L��8�����hF��\���x��`�S� sd�S̻�Uis��ٙ�N)�w�c�.@O<���m��L����rx��3(Ł�	��"�0(�����x�ҋ�ɍ�J}`�����[��+�B��`��7�UH�D���sش1x��\$ �9�m��6:�	�ta���;U�e��}�<2����?Sr��H�Q�Po9�\' r��G��E��Gr���}��8<1��_t���z�#�Ar����>���׬��_:�N޸{Hg���t����'z���\& p�����;��\&`��{��Ef��/� oN2n�ȹ����>v�x�A��2��͝<��@���w�*B�)�����^��.I�������a�rM���ߔs�y��U!zcG��k.reDt�!i��)�t�̇����~i����rB�K.��2�ώ���������7�M�}.8�����8�6�+9c����<�S���b/��"��!��F@�p'���k{WqJ�@6J�(�]�q���@s/ߦy�I.���p/�,y�(/��c�^��B|�E��h��'����I `��n!�Y�@� E-G76~����0H������#���1�#eธFC<hYa	� �tc����_�ͽ<�
�����2p(�pH���9���2������RyO�F��0B��-ߡ�2���<���b�PZ�$����Ap0)N�>��
�Pd/�e�)ke�uz����wQ�4 Kl޳z.5l)� �r�Pm�+	_+e�P�m>Y�wH�� e ��=Ć���Ƣ �:�y\�縋x~�/}�A�7��B�Ju�a4=�
���zu�x�3�#�o)�Os�!���#<��J}�}{@�h���[�K}��x���ٹ4�� ��9{��[��g�:��c�ƻ����9�@��;qAw�P�!�-��6�������@٬��zR����C@���Km  e7�ݓܸ���������F!UJq��e���_|���&�ts���U^�V��]Q@�R�!|C����q�R R���a� 0����dcy�y����A��Nmk��'yH�HeG>˧;�K �')��%;yD@<�1|��1h�� � �Jװ���Ǔg�@���}M@�`��7� �[��_�K�@�'d����9"�� ��+Y�<'�. ��!��� yN�@e %�����I"]�������#yX�M����fE�P�s�Ѱ}���"���X�#�Ҿ�� ���Z����M R�΁,�0�JV�g�\>���2��ܷ��/h���z��{�c*�R����k=�� �$l���<8�.@�1�~��5.yt�@�{@�og?�$����r����'�^A�)/Cp��r�\ R}Ϋٌj��\ r���Z����)��`Q�!���	�2B�6�OzV3��w赒IW�}�c4#�1(c����'���Kc�#`k�'�&����f?�{���[b(�9t�K��U&�8W�D��2I0(��x��R.[ kQ�7    aCX�C�{�Kà3�oȈT^��(����/�oU��Ei| ���e��uf�ڪ�R��i��RDR=��2H�J&���~�x�F�#�t~�qb�=��F$��O~�;4^u��Sݓi��R"�V_��F�����K���� �G�S��~���V��@�T��g,��#����,@ٴ�ЂH
@�n���K��׸��5�.��y�|����v��x=�+��o$����꫽@��f����א^���g����D���J�K}�!�Q*/Q:n�y����HMO^�ao|�",Oa,0*��v� 2+��S8��"�c-���0��q:�o�1C��9������#S�IMO���{�}�͏� �kP�h{Ώ�UeX�*̽��*4�_���OV�g�n6s��=�Ҭ����@�3{�(m_L�����x�j�}���,��	��>�^G��4Oϧ�k����|=��Q��5����r��<�c���`�/�|�J�O��
���,u�#��L�HV�
K��m2�ғ��GV~�!�|M�'��cn��#�@�˩�����b&o 3=�I�Ɖd��OG�m�V��Pm;}Dɾ�ZfǸM7"HV�ݳ�-�S���Pv��l�1BA�̍q�AR�%3��7fn
���L�qC�qDg�Y[�|܏=A�O#\7kYu�7��� �w�x+5�<BNb��o���M��8�y5dr�
4��35�Z���1�"Y�B���\TO��LK[���{��ң�s5���hy���OF>�Y	R_�2nS}�<�����5�a�Ef�1�V�ū�e�ūL�t�D�m1���le���f�ĩ�X��u�7 _����V{���u�	���ZZg����x���xb/��m^/��������L�v���
�����n܄��^?3�S�w�le��56}�vV�+�o?���ܕ ��ݹ�s� xJ�2���gV�(pL֊��rd�����n[P�vw�r�q9}=ݔ����Q��q��l�g�s�`=����b,��B��;[�X�;8N��wB^`]wf����*��r�|w&� ou���:�
D�'f �M�'�|��?6�A�L�����Td���d~|��?�t%��������t0����:پ�5�'+��&DO�;�74 �'+PA>Y����ؗ���JOB�#�Uz��h�ר�c<����;Z����T��E��( �%���}��++'�O����u�!��1�s����#:��`���՟��h��5_ӗ��S��}���\�b��̶�kfM{�@_A]�+�j5��m�@7)b���/ë?�����9h����*�Q!��U.�"��V�y�gj���6��{�Q�n���0�v_�h��mk$;�~Ϊ��Yl���L��t�L!<a��=�L��tq'	�b�3Y��/�V��E�b&�������Q&���/�H�9>�##*�����N�ò$5�T*9�M�r|�Z�*�uCѐQΏu�Yޭ�F�P����-}����=R���W��U�*9�{��3�'����`��ʍ�9��<��ud�񕱆0u��[Ӑ��T'��8c�N���=�G����n�YQ�s��'�mimu���g�V�]�z�����_:fE����e�}7;�r�_�}�e�XV~>s�2<��S^�b�p lʸ��&P[E��(L��1]��"9��џض�YU)�r��(��.�^K��<������_�EX1��T�#i�@�Z�����J�'�q��u�3��R0�#�<�p6#�w��D_m�>�yUL+9�	^�����N	O�WFa"[L�ū�U�a�	o;b+�ʐ�BFKR-���z)~�wǮE��<>���-M�2��!��T�uPfy8D��~0*�zf���cT��H.rr|vZ�Z�=�L�����=�w �Q�_ocG�O��0XaE443?������$g����)�;����#�m
�3}$f�X5(�<4�����[K�Y��nj��7�fe���������$`���N,�ʖ)����:SFr;����g��'�bNW6l�YG���|��*�Uɉ%�crW�oش*9�"E@hl�D�OW�l�YǱ083w�x�"Y����Dj���p���̎�)�q�/w<��)���ʖ���?׎��&  wE��g�"�z����/�""�{�O�vf����tޛ�����u|��72��ͧk�w�F|�2i}xC"Z������������ ��ߕ���m�Le�'��5��_�lHP��k�v%��|����	��â����N�W�_�=�n�u_����='�M,�!������'Gk%z����o��X}�1�'+���8�r������Wy�3'����T~��
1��+�<٬���|׫as��ZE�ֆ�L�o	2��z�Q�y�P�:�%�br�W�E��Z��7�L#
\>Rd-��G���~ȵ�ֲ�d��Ӳ��6!gwa!�`����6!Gw�5����2ԱM��Ly_�g-�N�vNh�������.aG�֗*�{�������,���o앚��#�Yyb�7j�s�����[�6C(#��\'���ȹXWp���zV�X<�x���Vn̗-%�K|J\�Yo|��q+��_�Wn̗-e�����%�r�iz�������떃������T�U������/��~�1K����
J�xX�1h�HEN�����*�Q�����ey?R�9��,�sC��Yq�{�~�	乡�U��}�6���~V	乡�XZ掕�?6�L*;\PD�1q���a'M*9�3��+:�b��Gr$D(��q�_�c��}1sK��+޷!鋙c��C��GVv�����:�<�J#�������s�I���&��Q��<;lW{Dr��J w��1i�1�6�o�����7W�qU>۾8�Z��xH��|������9�vI���fn�]����.�k�4SS�7��%y.=�:�~|��T͊K��ޖG�13g���wQ�,n���m���T�{�b��w����79Aa70�������5��r�	���U�Վ�Y[F�_fٮ�Hp7^�#~U��V�I��b�,���;}�?D����Vv��7gN.�s�Ѭ�í���IƎ���r�v� �q�Y#`��q���kYϬ����9���Z4����1w�/��̈́��;~ˉ��mθ��#����Q��^Ǉ�����ͬ<>�,�-���ٮ��#����Sxo��+Ga�g��"7��uǧ�9�qo[��B�̺�����ˑ��+5>R�1u�$ L8ЙǇ�Y�F�׊B&���fM|��/�q��5B+k��c��E(��U�I��s8e]��.,���Е=��J
oM<�>
(��]�M9�t�A�ܨo�������Ί�S�0ӈWl���D�*;��r�����U�����IɄW�Ys| �w-��}���;k��X&�y�}�ו6��a�)hjE���Q=����t��G\�x�`ݙ O�`���/�ԋ���4�M�����P۝횏u"�7�
�Ý��OA��9�}�n�ꖋ�f���_#gQ=�=Yw|Nt >�my�)�=�.32<og�������ug�2#����+`��_fd�����X�S�Q߬c�·���?���:���pq��s:Yw�/zu�X�v����d�6|ӫs�c�X�M�O֝�^ޒ��}���:�^ܘ���1Dh���-����3�|�[�\�l��w�;�qo�]ܘ-ӣ�����Z�ЈGf��`4g��/��C���+!�5��W�{%�8�"l���|k��u5�G�יΏA =Fn�S۾[ګ͏"�9�/��� b������^<B�����1L�v��jm��7�������Q�.�' �TΏ�� c�`~�^@/���M��1J�D���%�z�P#�gv<L�HȜ��"���/�ׄd�H��?����'�0�y�����k�J��Ѐ��&��y*�{ȏ�-����|T	�@���@$�·�He'!�|4?�/��d�O�;���R�Q��k���_A���� �   ���C��Ӫ:�ʯ�� ɬ�Pܳ��;qMd���j~N�(���d"��q�=5b}M���v��K�'�밥���}��C��QuG����������#~A��wz��j٨ʓ��77?�/!�4�CẉĮ���᝕�V��p8vX�Q��YAD{���Q�ѸI��K}�G���q��___��	�      _   (  x�mZ�;��Gq8]E������`�P������ҋ$ ��Vy��U�KJ�J����U{��[�̣E}Yy��?jm@�oի�zUi� ����`ѫ����V�so �]�#��K�dB�����պ�W��� ꎳ���[���� 7^�g��nq��=��<cp�(��q�>�}D) �8ޥ^������X��ɻ��4�[n-�؁������ٞ�G����� �28�#��|�1��I�Fv�x^\��b����8k�UCk�ϽO�?������	�%��BNԷ�U��a��#Ә<��f}��cY�E+ǵ����K,��WǻW�7�	�{�p��Ν�C��*�ڮ��p�:��n����EǨn�~�g� ��륣��gG����b�p��I`?r@}�]fRy��4�@�o@�q,L�:�+�G���q�p���q�"��a,ËX����Ժ!�"��A⦯�׊��%�F�~���*璨��r�>|�gs�g�@e ���%�|! ��͚|�vF�!���w��F��] �F��z]���pH),FG�(a��x��(}t��� r?�Ļ�(�.�AZ9�r�X�m��+�� �C  ��F�@I��� _�H}[�TPZ�e��b"Q���Ru��гv@V��jo4^}����3(xcQm���ȭ?E�x���|�_̏+5����q�����Q�#��G�����W��^ľ{c��G
�*�BP��K�{=�:�z�7%�q�e]�'��r��u��N)�P��5�ٿ��!!{`V��/v{�v�r�aC��A�C,uϿ�~
b0%xϩ Hӝ2���H6ך�1���%A���^�҇Xj��ؖ��S���X�y��貯G�1�&�
v.8g��zF$�� k�/ju��dm�$��&T�D��FhZp�}��9 �W�5 ?ȶU���#�c��Y�>�:����s+jr���C�����/g�����{.�F�8L��vuԽt��!�x ���%�HgR���n�_�J�*m�ήD�� �
���#ó��f��~���T�!Л5��~p�8���0
�IF`�9����O�Svp渕o���i�K\e�T�y�(����8e	��G-�>yu:#t(BO�zH�R����{/(�UG�8Gt�e�> �D�7de�JYK�iM҂�qT
Ћ����Hi��A�;�D� >5�ާ=�Ӻ�v������߀�y��)�<�<P��h�d�����Y���i)E<+��%Q҆�ĵ#ڬ0�������h��q%PO|":R��BIXq$���?��H���\��:^}�駜�	$[��f�4o����k�U��x��
�s[���cև�q(��*�ٿ����AE�����WyZ\�����|�zzk'��jA�u�j����`��uZ]Rp���d�j�c|�gx�W�����?"��u�!�sy�]J�xv����J�4c+3�Y=@j�s�xU����� ���sE�;��ZK�3�ݹ�C�ó6OqvvS�(@���	�A�(��c�tZ���?�]gf��`#�i���d׫K��Z�1�~:XX։qԡ|�)�"g��!%��/_�9�'-8�}�-�y����%��%�hϡAP�ZN6���>��q#r�6CvҎM`;4N�!��~�L�t��!�`�W�6{�TD4�Q�?��`m!{���lw3%���i0�fJ�#7��y�h�s<��lp��Y�Xrh�� zU�����<$g{t z-su��N�Ǽ�^^�� �"��o$�EF(�%RY�k�ym�'�\���tR�c�������T`/(�d��~�i���3��\��(m�.tnK���WC�@E9s}��c"J`��
zC.�� 9ӁCP4
ߒ��KZ=2szp
�z�m�$G�U�%R��`{ZRs��,p�����ns�V�/��c�c9NS�5�z��4���{�V����9ӄs�=Z�/p�6�N6BuqZ3�3@��:r�8P���i�4�nhNnd=s�Ү���p�캤��>v
�7	�����U��FZ���#�+���8b��TҎ\�(|5�ֻ���i��?�{:�:1��N���"�
�md�����c�O1�dj7l"7~K$�C'�_lT�̩Aݑ_�K
w���A"/�r�7r��N���$�;o�s�ZS#y%v��jt"�	il��l"���� v`�",@������3N$G4�Eio�����ZȜD :Z��?�>��_]�)�=f<�9Gc�I�:��m"9�P���)f�,���x��=fNtG�Y����N���$�(HDo������8&�������ww������HDN�V����qi��P蜅�H��%s(�y_�8�>E"`V:� k	=g}r�}�\��D g;�s�`"?}�B�=�Dv2a !IG�5sr��D\�����1��>\�f�#w�c���
2D��(�_��ح	l�dCd�*f�E�_�@6��2$�����(ޙo%e*Z��Cj6J#�8��o~T�T��񤥑B'�O+��^P%{�`�'=8I�ߖ��h���a� n��"!k��,,�d{�6(K����+��ӝ�3%?e�SD}�U+�H^ʜCʁ�}�g��G��;���E����Ƭs(?J�^�wz����ە�X�Zۇ�j*��a'x�Y���wb7 ��"�m�~������� ���V�b��K+
��k�1{�����M�#�n@�)������R�R�����2��Vt[6�U�_gҖ�0���m��<s��,̢�g�k<���e���������5�7	�����_���-i̒�Gz�s�L�7�� �]��k��޶��T���2�Ǖ�9@8n�7w��]�Z�:�*l �����l`�aH��s�����D���9�n �A1�����_��3�=DF� X~r��WۆDf ��w�F�N�59.�} Dڡ�<x�n�T���� ����S��z>RvF���I���o8�1�@���Jk����	�k��d�p��"=;�(�Z�g������>�t��e�Y�3�C�f+`��b=��a�vE���<��i݉c�H�����)�Ԡ�
HU�z��,���KT�a���h�筪�C��зC�!�a�Q]�~Tge�IH_��mFR��-��q�I=C��W��������\��*�;5_�]|"9g��� �6.I��H?��I7$�����?#�Y�1��e�����<�g�J��8�X����"g���������`��a�C0�Ӄ�ޒ�,�Ϯ�����ן?��NST      a   �  x�U�;��`D�f1���?�B�� !1C��?�e	�_V�O��Ƿ?�������-P)����4ԡ�-MhkAqh����8�pP����)8*���b(8,���b)8.����Pp_���R�}y>1�˦��J�ˡ侜J�˥��J�C�}*�T=^h����w�}�U�WC�}5U�WK�}�U����P㾖j��J���55�k�W�}m�q_�j�ז����}�P����S��z�s_oꏟ��s_?���S���R羾չo��7B��Fjp�(�M��F�x��C�����r�X�7���C��fhr�LM�}�ir���7���LM��mᾹ5�o�ܷB��Vjq�*-�[M��V��5��oM���[Zܷ���}����ܷS��vis�n�ܷ�6����}{js�^ڏ㼵����Ϗ}�ً��_� _� _� _� _� _� _� _ݸ�n���n���n���n���n�������������������q���n���n���n���n���nܾ����������������n���n���n���n���n�������������������q���n���n���n���n���nܾ����������������n���n���n���n���n���畍��������R��      c   %  x�%�Iv� ��0y��%3��GH�Y6n4�_*�X\��=�4ڜ���$5Zj�I��9����k�z�<-U�W��Pd5��Ҷ��YV����b;�9ֻ=�^���\���5�n�JK�KW��r�4�4Q�h2[�\k3l&Q�aJz-f����>�P͈A����ngZ|-G�C4jP����~����ˇ4IO�,"X֛�&:K�,�X�V�-������']ڳM��d/�vRT)�)K����("59��m7y/��I�B��5�_;�b����-%+d>_�ć)ԣ����4/-�(+�v��FGD.��T�c�{i��V�!%���l��0Mv�V>d)׻N�o��	,���B<XDuю~ݥ*u�(XfkyuCep���I|�ME>�R� �� �*sjn�! ���Z?���c�j�%e�_�˶�rSzY��pa jt��ԁN����k��β�#پ̀N��B.niY����ɒk��q�jov�0�?o�߯�����c�t�Y��}��tn"5+ ����m���Hz�>^��\�P |Z_.�0d�f(*H��Xڝ���G(I^�FO�$��RC�R��Fo��]�	�����L�J�[|+`��d��gh�����;l�J���H(�V@�謮�{܎�VI�ibʮ�Z� �B��F��(�][�XDǍ�*��:^' 0�+���oVҭ+�,\f��wdJ��Xjaù��ux���E>a ��;o_=�'��e_�"��]���k1�C������7�"Ԇ�F�)��4Q���~I-
[�8Q�w�"]SIj+��\ ��=��}AZ���F��C�n�+��9�����Q�" Ǹ�������p"�oe� 4Pn~�_'�m:�L*������ܜ�.�І<�WK[~��dua)��������-Tԣ�\Ο��+�w�P�~+�5��@u�C���ѳC����r|�'*q��o��?�4�ӫ���9yo-� {��e��2F����Ұ1��e����'�g�\O�2��{�����p�y�w�B?֭m      e   �   x�%�I� ��+xA��e��A�Ȋ_�oUխ�<E[I�Ĺ((1aq�������v��Z �w���<��Pbσ�8(������7J�;�0wQW�W����z&�`��r�	��o�#|.B�?tE0�     