PGDMP     /    )                w            Feria    11.2    11.2 $    &           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            '           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            (           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            )           1262    99893    Feria    DATABASE     �   CREATE DATABASE "Feria" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Latin America.1252' LC_CTYPE = 'Spanish_Latin America.1252';
    DROP DATABASE "Feria";
             postgres    false            �            1259    99918    centrocomercial    TABLE     �   CREATE TABLE public.centrocomercial (
    id_cc integer NOT NULL,
    nombre character varying NOT NULL,
    ubicacion character varying NOT NULL
);
 #   DROP TABLE public.centrocomercial;
       public         postgres    false            �            1259    99924    centrocomercial_id_cc_seq    SEQUENCE     �   CREATE SEQUENCE public.centrocomercial_id_cc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.centrocomercial_id_cc_seq;
       public       postgres    false    196            *           0    0    centrocomercial_id_cc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.centrocomercial_id_cc_seq OWNED BY public.centrocomercial.id_cc;
            public       postgres    false    197            �            1259    99939    estadisticas_mesa    TABLE     �   CREATE TABLE public.estadisticas_mesa (
    id_estadistica_mesa integer NOT NULL,
    vacia boolean NOT NULL,
    ultimo_uso timestamp without time zone NOT NULL,
    id_mesa integer NOT NULL,
    id_telf integer
);
 %   DROP TABLE public.estadisticas_mesa;
       public         postgres    false            �            1259    99942 )   estadisticas_mesa_id_estadistica_mesa_seq    SEQUENCE     �   CREATE SEQUENCE public.estadisticas_mesa_id_estadistica_mesa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.estadisticas_mesa_id_estadistica_mesa_seq;
       public       postgres    false    198            +           0    0 )   estadisticas_mesa_id_estadistica_mesa_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.estadisticas_mesa_id_estadistica_mesa_seq OWNED BY public.estadisticas_mesa.id_estadistica_mesa;
            public       postgres    false    199            �            1259    99949    mesa    TABLE     }   CREATE TABLE public.mesa (
    id_mesa integer NOT NULL,
    imagen_sponsor character varying,
    id_cc integer NOT NULL
);
    DROP TABLE public.mesa;
       public         postgres    false            �            1259    99955    mesa_id_mesa_seq    SEQUENCE     �   CREATE SEQUENCE public.mesa_id_mesa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.mesa_id_mesa_seq;
       public       postgres    false    200            ,           0    0    mesa_id_mesa_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.mesa_id_mesa_seq OWNED BY public.mesa.id_mesa;
            public       postgres    false    201            �            1259    99965    telf_inteligente    TABLE     k   CREATE TABLE public.telf_inteligente (
    id_telf integer NOT NULL,
    mac character varying NOT NULL
);
 $   DROP TABLE public.telf_inteligente;
       public         postgres    false            �            1259    99971    telf_inteligente_id_telf_seq    SEQUENCE     �   CREATE SEQUENCE public.telf_inteligente_id_telf_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.telf_inteligente_id_telf_seq;
       public       postgres    false    202            -           0    0    telf_inteligente_id_telf_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.telf_inteligente_id_telf_seq OWNED BY public.telf_inteligente.id_telf;
            public       postgres    false    203            �
           2604    99989    centrocomercial id_cc    DEFAULT     ~   ALTER TABLE ONLY public.centrocomercial ALTER COLUMN id_cc SET DEFAULT nextval('public.centrocomercial_id_cc_seq'::regclass);
 D   ALTER TABLE public.centrocomercial ALTER COLUMN id_cc DROP DEFAULT;
       public       postgres    false    197    196            �
           2604    99992 %   estadisticas_mesa id_estadistica_mesa    DEFAULT     �   ALTER TABLE ONLY public.estadisticas_mesa ALTER COLUMN id_estadistica_mesa SET DEFAULT nextval('public.estadisticas_mesa_id_estadistica_mesa_seq'::regclass);
 T   ALTER TABLE public.estadisticas_mesa ALTER COLUMN id_estadistica_mesa DROP DEFAULT;
       public       postgres    false    199    198            �
           2604    99994    mesa id_mesa    DEFAULT     l   ALTER TABLE ONLY public.mesa ALTER COLUMN id_mesa SET DEFAULT nextval('public.mesa_id_mesa_seq'::regclass);
 ;   ALTER TABLE public.mesa ALTER COLUMN id_mesa DROP DEFAULT;
       public       postgres    false    201    200            �
           2604    99996    telf_inteligente id_telf    DEFAULT     �   ALTER TABLE ONLY public.telf_inteligente ALTER COLUMN id_telf SET DEFAULT nextval('public.telf_inteligente_id_telf_seq'::regclass);
 G   ALTER TABLE public.telf_inteligente ALTER COLUMN id_telf DROP DEFAULT;
       public       postgres    false    203    202                      0    99918    centrocomercial 
   TABLE DATA               C   COPY public.centrocomercial (id_cc, nombre, ubicacion) FROM stdin;
    public       postgres    false    196   �(                 0    99939    estadisticas_mesa 
   TABLE DATA               e   COPY public.estadisticas_mesa (id_estadistica_mesa, vacia, ultimo_uso, id_mesa, id_telf) FROM stdin;
    public       postgres    false    198   �(                  0    99949    mesa 
   TABLE DATA               >   COPY public.mesa (id_mesa, imagen_sponsor, id_cc) FROM stdin;
    public       postgres    false    200   M0       "          0    99965    telf_inteligente 
   TABLE DATA               8   COPY public.telf_inteligente (id_telf, mac) FROM stdin;
    public       postgres    false    202   �0       .           0    0    centrocomercial_id_cc_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.centrocomercial_id_cc_seq', 1, true);
            public       postgres    false    197            /           0    0 )   estadisticas_mesa_id_estadistica_mesa_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.estadisticas_mesa_id_estadistica_mesa_seq', 245, true);
            public       postgres    false    199            0           0    0    mesa_id_mesa_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mesa_id_mesa_seq', 8, true);
            public       postgres    false    201            1           0    0    telf_inteligente_id_telf_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.telf_inteligente_id_telf_seq', 70, true);
            public       postgres    false    203            �
           2606    100008 $   centrocomercial centrocomercial_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.centrocomercial
    ADD CONSTRAINT centrocomercial_pkey PRIMARY KEY (id_cc);
 N   ALTER TABLE ONLY public.centrocomercial DROP CONSTRAINT centrocomercial_pkey;
       public         postgres    false    196            �
           2606    100014 (   estadisticas_mesa estadisticas_mesa_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.estadisticas_mesa
    ADD CONSTRAINT estadisticas_mesa_pkey PRIMARY KEY (id_estadistica_mesa);
 R   ALTER TABLE ONLY public.estadisticas_mesa DROP CONSTRAINT estadisticas_mesa_pkey;
       public         postgres    false    198            �
           2606    100018    telf_inteligente mac 
   CONSTRAINT     N   ALTER TABLE ONLY public.telf_inteligente
    ADD CONSTRAINT mac UNIQUE (mac);
 >   ALTER TABLE ONLY public.telf_inteligente DROP CONSTRAINT mac;
       public         postgres    false    202            �
           2606    100020    mesa mesa_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.mesa
    ADD CONSTRAINT mesa_pkey PRIMARY KEY (id_mesa);
 8   ALTER TABLE ONLY public.mesa DROP CONSTRAINT mesa_pkey;
       public         postgres    false    200            �
           2606    100024 &   telf_inteligente telf_inteligente_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.telf_inteligente
    ADD CONSTRAINT telf_inteligente_pkey PRIMARY KEY (id_telf);
 P   ALTER TABLE ONLY public.telf_inteligente DROP CONSTRAINT telf_inteligente_pkey;
       public         postgres    false    202            �
           2606    100051    mesa cc    FK CONSTRAINT     q   ALTER TABLE ONLY public.mesa
    ADD CONSTRAINT cc FOREIGN KEY (id_cc) REFERENCES public.centrocomercial(id_cc);
 1   ALTER TABLE ONLY public.mesa DROP CONSTRAINT cc;
       public       postgres    false    2711    200    196            �
           2606    100071    estadisticas_mesa mesa    FK CONSTRAINT     y   ALTER TABLE ONLY public.estadisticas_mesa
    ADD CONSTRAINT mesa FOREIGN KEY (id_mesa) REFERENCES public.mesa(id_mesa);
 @   ALTER TABLE ONLY public.estadisticas_mesa DROP CONSTRAINT mesa;
       public       postgres    false    198    200    2715            �
           2606    100091    estadisticas_mesa telf    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadisticas_mesa
    ADD CONSTRAINT telf FOREIGN KEY (id_telf) REFERENCES public.telf_inteligente(id_telf);
 @   ALTER TABLE ONLY public.estadisticas_mesa DROP CONSTRAINT telf;
       public       postgres    false    2719    198    202                  x�3�,N�M���LN,JLN,����� O�<         �  x�mXۑ9����	�K|�dq��"���@�4ޕ��_^�A���/n��[����-z+]�{�|���?��׿;(�F�Efg�H�َJF7�ř�Ҫ����
W{� �	�qr�uo����Nr3*��6AzTb|�^�-^}�쬄��J"�>�ԏJE�]���L��w�+�Y:(�wƉ���U�y�f �ŝ��Q�
w��#��E���vk\B����hL\al�_��D�V�Oe��A�qb�/�4v�
��(��I��g�����G)4���_�K
Uj�]oA)(�j�-ȓڮ��y���B��]�E�MО*e�Z�y�Ev����9�":Q�]"�u
�z�@�@a��dAr�2�)/%�@z�� �g�h[��
��_^DP�j�5�M������U��3�Ц�(�Z�Z\&�Y�<P���B,SμST�9�.,<%�t�.w�"��P;���{�n�o|���z����G����y�ߊZvqc��� >��,��q���'��5��M]s�N�͆�Don'*�#��a�Oy��ѝ�~����D٩��
#�p��A��އ$�Yh�^v�}4;/Р����N�W��]���@�R.+�,�w�Zv���J�1�kݾ��p"]��s��*A�쥪G8�˾�m&��P/;��e8]bn�v`j��S�(���z�.�z��-ԩy��%��,���aخ��BOͣ=�$��Q�N�i�Ũ���^:U���'������K���Su��N���|�O);%_l%�Ik���G�i��n1��Oa�ki��4�i�pT]�v��%�.�9[����o�%SJ�+��N���a1zӊ[�^~����p�2%�%�e]@� �M���<�#
s6��w�<	�wLb���w꣺H�3V�?���1d9K�\��w�c���#����&F�gS�3xb��j#�� ��&F�w�H;�Qc&����w��>F��"����ٿrOT(l)I8���+��PD�Zt�+9m�Z��\�7��p���X���tĈ\�v9j�zBPg1��i�뉲N��.�܎�W"�I����@�ANX��2O�e�l<E�|c�����^n�q�R���q��3[E�h;�Ym$�2�]����ZOh�����D�Q�Bc�zQo�0�U��h��X�wj��ȃ��aG؁�� �K�K�LD?P��+�+|u}����-;rt��16�!T���@�B-(:��И��h���b��#Zz"���5��0�A�%'jD�lFe�u��<�pVOO<}����<����	�ꚳ�T_O�-aه�w�i0�2�����5�%�C<��Νy�	ؒ�O�SO���zv�j�7�v�iЅ�'w�g8��ǵl$�p����f8`��Y��To�E#Yb^3r]~��G<C�D���A�����H���6I�S_Z.�����<�]���2�D�B[�S_��z5�o�v�(#\���g�3��s�����j=� nWSٹ+@'���*F}�5��|�p���6V�b��@����XT>��]�<ҺWtiPq�h�z������e$L;�2Q�2,a�	��n/��Ȗi>�1�N����	��~r�[(p��:m�s�0�[���>�̻�H�Z��x*�:QH-��C׉�DϿZ+W��b���V�o�?�^/��؍%g��(�������$�=e'��=c�����<Q�$���biǉ�0$	<���@щ� mhdNV���������);Q��ŕ� �ߞ�5^Tp�lk8�=eTi��`%ա�oOى�]:�b�/�����V묶���r�AE�U�>��Sv���^Ɋh?���c����DB��( �R� ��>~B(>n+���� ��]���w�"��Y�D��-9s�h�"NǽHh����~��l�f�          Z   x��;� ��z���_x��!A��ޥ����Pj��	NNkͰ�[R,M�r��M�AcC����h����q�����1���      "   *  x�Tǵ$!<K���0�^0M�!���fhdʑe\�s���0����8O��9�����&�c~Ze7̋r��F=�r*��^�exS�|�58k�K��VQn�H:d,l���8w`�R��[z÷�>�I�����lh�rx�Ġ5��i.��f�@o�M�I�hwl�0�$�I Xy���٥��_z�GV��&���˒�̞]�u4����JC��>(���|
G�3��֒d'��V`��I��,u���%�V��Rd��u|��-&�Dł�FB��*��"�\#�f-.�1*��ޱ��a�X�y��+�i�r)ي�!Y�ǛC�	��!X}�O˔|1<
)$𭖄Vy�a�A��,ܜdZ(�A�R+¹��i7w5�ma��D�YV�B�e���Q�kjN�ςv�a,o��oh
��Gs�Q��$��ፀiC�*�D].*��ѓ^-�b�:Z麉��
JL���5y{|�G]�Z�qD�;�^�j�5<�R�aZv�Z��������Z]���(
��ڄ�?��1��j��e�T�8�^�C�K�����JS�퉣2��ԓ|n�o4��g���>�Yئ^B8�f�?Gr�S7a	cJP�xU�
sJtl8Hr�W݅!gxN�{_��7�������.�%�?�򫫏0��0W"g�OY9����:��-	_1֦fx3�в��]�"ޤ�Ǵ!]4[>�)��i����Qw&.��ژ�����?�}�LB�<�ٚ0�3^�0���ڈ����P��ʛCV������m��Bu؍��nړ�E)W	���S�?iW     