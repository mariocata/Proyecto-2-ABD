PGDMP     )    *                w            Ventas    11.2    11.2 $    &           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            '           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            (           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            )           1262    99669    Ventas    DATABASE     �   CREATE DATABASE "Ventas" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Latin America.1252' LC_CTYPE = 'Spanish_Latin America.1252';
    DROP DATABASE "Ventas";
             postgres    false            �            1259    99694    centrocomercial    TABLE     �   CREATE TABLE public.centrocomercial (
    id_cc integer NOT NULL,
    nombre character varying NOT NULL,
    ubicacion character varying NOT NULL
);
 #   DROP TABLE public.centrocomercial;
       public         postgres    false            �            1259    99700    centrocomercial_id_cc_seq    SEQUENCE     �   CREATE SEQUENCE public.centrocomercial_id_cc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.centrocomercial_id_cc_seq;
       public       postgres    false    196            *           0    0    centrocomercial_id_cc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.centrocomercial_id_cc_seq OWNED BY public.centrocomercial.id_cc;
            public       postgres    false    197            �            1259    99702    cliente    TABLE     s   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre character varying,
    cedula integer
);
    DROP TABLE public.cliente;
       public         postgres    false            �            1259    99708    cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_id_cliente_seq;
       public       postgres    false    198            +           0    0    cliente_id_cliente_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;
            public       postgres    false    199            �            1259    99749    tienda    TABLE     �   CREATE TABLE public.tienda (
    id_tienda integer NOT NULL,
    nombre character varying NOT NULL,
    piso integer NOT NULL,
    id_cc integer NOT NULL
);
    DROP TABLE public.tienda;
       public         postgres    false            �            1259    99755    tienda_id_tienda_seq    SEQUENCE     �   CREATE SEQUENCE public.tienda_id_tienda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tienda_id_tienda_seq;
       public       postgres    false    200            ,           0    0    tienda_id_tienda_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tienda_id_tienda_seq OWNED BY public.tienda.id_tienda;
            public       postgres    false    201            �            1259    99757    venta    TABLE     �   CREATE TABLE public.venta (
    id_venta integer NOT NULL,
    fecha_hora timestamp(0) without time zone NOT NULL,
    monto integer NOT NULL,
    id_tienda integer NOT NULL,
    cliente integer
);
    DROP TABLE public.venta;
       public         postgres    false            �            1259    99760    venta_id_venta_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.venta_id_venta_seq;
       public       postgres    false    202            -           0    0    venta_id_venta_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.venta_id_venta_seq OWNED BY public.venta.id_venta;
            public       postgres    false    203            �
           2604    99765    centrocomercial id_cc    DEFAULT     ~   ALTER TABLE ONLY public.centrocomercial ALTER COLUMN id_cc SET DEFAULT nextval('public.centrocomercial_id_cc_seq'::regclass);
 D   ALTER TABLE public.centrocomercial ALTER COLUMN id_cc DROP DEFAULT;
       public       postgres    false    197    196            �
           2604    99766    cliente id_cliente    DEFAULT     x   ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN id_cliente DROP DEFAULT;
       public       postgres    false    199    198            �
           2604    99773    tienda id_tienda    DEFAULT     t   ALTER TABLE ONLY public.tienda ALTER COLUMN id_tienda SET DEFAULT nextval('public.tienda_id_tienda_seq'::regclass);
 ?   ALTER TABLE public.tienda ALTER COLUMN id_tienda DROP DEFAULT;
       public       postgres    false    201    200            �
           2604    99774    venta id_venta    DEFAULT     p   ALTER TABLE ONLY public.venta ALTER COLUMN id_venta SET DEFAULT nextval('public.venta_id_venta_seq'::regclass);
 =   ALTER TABLE public.venta ALTER COLUMN id_venta DROP DEFAULT;
       public       postgres    false    203    202                      0    99694    centrocomercial 
   TABLE DATA               C   COPY public.centrocomercial (id_cc, nombre, ubicacion) FROM stdin;
    public       postgres    false    196   r&                 0    99702    cliente 
   TABLE DATA               =   COPY public.cliente (id_cliente, nombre, cedula) FROM stdin;
    public       postgres    false    198   �&                  0    99749    tienda 
   TABLE DATA               @   COPY public.tienda (id_tienda, nombre, piso, id_cc) FROM stdin;
    public       postgres    false    200   <2       "          0    99757    venta 
   TABLE DATA               P   COPY public.venta (id_venta, fecha_hora, monto, id_tienda, cliente) FROM stdin;
    public       postgres    false    202   �2       .           0    0    centrocomercial_id_cc_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.centrocomercial_id_cc_seq', 1, true);
            public       postgres    false    197            /           0    0    cliente_id_cliente_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 191, true);
            public       postgres    false    199            0           0    0    tienda_id_tienda_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tienda_id_tienda_seq', 12, true);
            public       postgres    false    201            1           0    0    venta_id_venta_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.venta_id_venta_seq', 214, true);
            public       postgres    false    203            �
           2606    99782    cliente cedula 
   CONSTRAINT     K   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cedula UNIQUE (cedula);
 8   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cedula;
       public         postgres    false    198            �
           2606    99784 $   centrocomercial centrocomercial_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.centrocomercial
    ADD CONSTRAINT centrocomercial_pkey PRIMARY KEY (id_cc);
 N   ALTER TABLE ONLY public.centrocomercial DROP CONSTRAINT centrocomercial_pkey;
       public         postgres    false    196            �
           2606    99786    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public         postgres    false    198            �
           2606    99804    tienda tienda_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.tienda
    ADD CONSTRAINT tienda_pkey PRIMARY KEY (id_tienda);
 <   ALTER TABLE ONLY public.tienda DROP CONSTRAINT tienda_pkey;
       public         postgres    false    200            �
           2606    99806    venta venta_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id_venta);
 :   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pkey;
       public         postgres    false    202            �
           2606    99832 	   tienda cc    FK CONSTRAINT     s   ALTER TABLE ONLY public.tienda
    ADD CONSTRAINT cc FOREIGN KEY (id_cc) REFERENCES public.centrocomercial(id_cc);
 3   ALTER TABLE ONLY public.tienda DROP CONSTRAINT cc;
       public       postgres    false    2711    200    196            �
           2606    99837    venta cliente    FK CONSTRAINT     v   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT cliente FOREIGN KEY (cliente) REFERENCES public.cliente(id_cliente);
 7   ALTER TABLE ONLY public.venta DROP CONSTRAINT cliente;
       public       postgres    false    202    198    2715            �
           2606    99887    venta tienda    FK CONSTRAINT     u   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT tienda FOREIGN KEY (id_tienda) REFERENCES public.tienda(id_tienda);
 6   ALTER TABLE ONLY public.venta DROP CONSTRAINT tienda;
       public       postgres    false    200    202    2717                  x�3�,N�M���LN,JLN,����� O�<         �  x�]��r�HEׅ��L�ި��Զ�vH�vt�l�dID< h5��s����
%��q�͛��S�2o�O�S��n�o\e��a�/}_?l�2�J'�S�me�Ǽ����P�q���8(�4&�`*�Χ.��<��2�6V�Xy����.�j�WG�\���*��e*�,ϟ�K�$�!��.��~�}}�w��j[ß�Z�e{�[��a�=��t�ଳURv]�oJ7��z��u���q�ʞ�7D��nu�=���:OG��SQ��n]�����Q?�i�èLl�����U��f����ؓbl���Tک��??>f�E
!h�{u�'��R��UT�M�A}��ԭ��Or`B}0���}�2?���,������u�'�����8J���.�yؔ�i�����beu�����l{��M&!��1]�>�ۡ����8ј��LS��vC��L#H ��΅�X)�s�0�����{�q�l�����
*�����'���P_&�n�sM�LP�� ���(5KP��G
�?��,�l���ڪ�|�h˸ە�;�~��$u߭�y���r?�#��&*ۨ}_��a��[A�5�Q��ju�=m���fS�  ���!��˱���Q�Ը#o�B�����,��uSY'����b��$o��a�W�}����hBױ�@c����di�pv	EX�����-�!T���wNݭ��q�v��``�I=prE���3����"�ƇnGT6UN��qx.�[j�]l�q��("�=�q�(�Zh+G)ơ���DJ:hW9�.�0�~w�,���W��Q�!�!��y��.ǉ�iw�j>�&$�"�9�f��"��<�u���wy__��Y�K� �%�G ��8%̴`�7����>��,�Z���g����H�ZD�V~����z�N�k�v2���8�w�������_J}���Hf>$���<������鎒��N.x�����d�W��� �G�˞���i'� 9K#|K������r� GU\�|�-e��q��h[]�	*�h͉j�9��
�iWAd!/%���M��Bޖ���Ѿ
V���5�ɫqR�B�8�5�˶��]t߷�Mxu����fM��U꾬�z-���PK
JHQ}C-���"8�	"�
���ݺ[�H:��!����d��EMΧ�E�N�*6�7PĴ�PVjE���U�o@�+o��nGs�ˁ��<�?�?�U��U]F�nƧ�P5j�6��>-h=χ�X̀�+z���A�^$����A�(R� ��q6R�����p`��Օ�^�%<-!��dK�D9ob$�tz*�f�!���6���m^��헠�� ��Z}B����o���њ�TN�d�8���-}}��HH�O1T��������#��#-���&��˔w�L�ᕰ�#��'D�{⫋`2oF�HN��;��٨}LF�~��c��o@�A���)ojN�[ތC�U@r��U�� Ἥ���i<�1�JF��$������L!o�F'����]��m��H-�u�J"c}�L��R�V�W���5�s�R��0,�(������w��b^�d���{���p2��1#��R\T&M��*�KY\TH06��A���(���ۀ/#~���Lܗ܁;-V"�>�E��-�ԗNUH����ƪ|�䵲Q /6M� �W���1�c��@.�I^-�����^� yxD�(A�d��ϣ:��1��9n*j�3 �&��;�8�"�%���e����\*m�@ؿ_��z���0��Y�]~*E o�U��nˤ/��E���`F�=�<�Fv�`��yGi��#yũɀ����s�".u�k1�e^'�,��ϕ�($�]��Q�[�����iQ&ɊbP�7b�p����4����/�Pw��D��v����r�聸�"�5֋�#l��L��q#y)�����b�NG�t^rք(����C��g1(6��7Pܭ�|x�Re=$����L�9y��	�����F��a>b�C!0��/}����-����˸#��n`��\2��7o�Չ��;쵓+�����l�a@$]�)2Y~HQ��L~�g���h��b��x4Fb�i#o9�V!����`������Fq�����Ų�Uƾt=q?	xS�[r��,q��?�Z�T�,��c���x�}؊d ��g�h6�/�ߧŌ�"N����'*�W}c����0�8C?EP7��a��W�LJ+��0
�|:ە^�7l9b�����g��,Zer%��hy\�}Y�:��d�DF�`��dK!9yi�J���&)��eٌ�Z Z����#��Č��JǨ1��������4dK����/��a�@����=w15V�M/��N���'qx�]VHl����o��<F4��/�E��OJ�H���Jz.dW�PpL�Tl�pٰ����$�!Z�$T�}��Z��)=�}(�?�a�x�H,�HL���6xZ'-[k󾶲K(�Ѹ Y�q������,��ʪ"����X7���F'�.~�昅���,��f���dߦ#�l��"F��ێ�_�T�V���� �b�ղ��ޞ�?$�x�gi�4"�H+*%	Q�nQ����������}q14�#���up_�2�u��Y~rY%���bw�t;��e%��V�E���u�b_,˪�5��a&�_di���{���<l?-."�G�e�9�(F�^�#�`^k�&(�D�8$>��;��y��<}k�ufab�,������}}٭VL��ೄ��i�X��WQ���G��Z6� �X�$`y�^=�BP�������hV�2��a��>MOB�2Y[��໎�({2[9������
�Q"q�y�}�S.u�2��Ő�����b�$J��#J��Y��囂<�=HF@�3X$J%�܇�|y����І�?����v�F          �   x�%�I� ��+xA��e��A�Ȋ_�oUխ�<E[I�Ĺ((1aq�������v��Z �w���<��Pbσ�8(������7J�;�0wQW�W����z&�`��r�	��o�#|.B�?tE0�      "   7
  x�mYm����:�^ �D�_�Y���x��3k�S�J�Ƙn	I��K��?3���G����W����v@��|��/�K�j ���Ujk]�Z���>_˯�Zvɼlx����pӫ.�?��Ǖso�b� q�׌�W! Gu@�$/ٮ��;�n���4���k<�<\&;�n�c��o�~Y]�f�
 j�6���}���'��!�#�E�2�L�b���`��%6�;���É�!�6_&�
�x�%1��iFM�E9O�C:��)�5���tF}�p�%kM��~S
Qɋ�p��_*�Gb;P�6�*ö-�]B�g7a��ZC��������0�-*C�!�C�C@Ǿ*r�9H����i�$�C�#���i�5^PCwC�0rZ���:��\��ų�9�7�8�|MFd#f���	�֜���Zc=r� �����]6�#�y!����$>V�T���\?�y$6�"q���t%"uq��O�Z1�#��*��dJ��Ho$/�A��V���������a�����Q�jsXOo$/+��M��{�7J)��p�a=����W�������F5%[��3l�#����x�`��"{q�U�(&��MZ�q�>#��%����Z��Y� ��Q*B�ҋe��p�"���#7���@`&_������H�	:u�:�d����6��5<:������a��2oi%O�ë!P�5s����E�хf���� ٕ[O���Iuhq��.��=�Te@���~�*VG@Cx:H�wj�u"�o��@�s�7� 4��h���2":�AJ�D�ƅtD6��C&o�$�N)2o��؈�!���>������6��b�dtbu��,��D�ȮV5��4D�c�C�Ŗ�b�	p�]�(N3�'MΑ�&�N�+�2���x�ET\ td�9��;�k�C��Q{'hO�Ŋ6�@�[F�k��C�vN
�t)��ڀ[�z�5X�!fzHt�Q]�9O+0D��ZE�Au�%��'���*�+��յ�J�:�����k�����+��XYiP4���t��԰N���{v�L/�h$��k�Ge=�۹�yU6�C�'|t
��U>�C�'z(��zU1�_��3�<�r�VO�v��	�����i,dW��b=��,&�c?�z����p����"VĮ$��81�_�ʨ�TV��=j��BRĻ,�|��D�v$c���磺nv��9��>�]��V��{�_$K���=�+�������l��(LP��q{��6��|�v��mE��}�C�v�^ntAX���ik�>�N1�$�:��`�ΰ��!��F��?�E�>���X �q�c�zc6;K�#�4���4E����9:&�Q�,d���� ¦�n���;T�1R�1A�����M��Tuc؂��� ���1F�b�g����h���ʮ��B�c��1lD �����1�����s.��a3���Y���v�ُ�{��r���3[��p��1E��i���$����1�m L'������a�T�{^���9`z͎1Ζ(K(�4A`zI���>�1`zi�@�\����y��Z�\�R��������t��L/��	w��^��eE�0hh�	�ME����6NJ����y��9R�j�N3�,���}�p-�y��`B�[�ž��cjA��1`�iǜE|���60m��X=�27�!���F��	���� �;$���Ɖ���b�0z��R�Ѹ�і��N�?�A�:��0&m����n���3@�#�����!�v�c.��R�i6=�e�W�8�i�`K���S41��w�}��K�٧a&�$����M��D�;�(⓶�(���\��fe�+�����\<;�#>ڗsD��j!�-���/�v9�YTq�v��c6���R�|�@��l����� 혺�p��̸�[Õ!�;J��� � Y;<�a�*o��Hp�M���jn�����Tsw�zM�}W���Cl���fq�N5w-(ǐC�C�kھ#4�*m=$�c�\�˝�]80�0ht��;�^!��1��+�������?[p|n��0'jP���/�mtP�=�o�sh�#�a`��4������q.6*T}8���A�B��,w@��:�\qbt�Le��T��KN�7͎�0�Ku������~�Ru����F��p�@8>�>����f)�6��c4�\���������+�Գ@4>&�#��0ٛ	w��1A/�e�o�����V���*�Ј��������`��k?&�7f�*�\��m�n�m��6!��)��IZE5X>۝h�E�6���؝h4��k$�.�A0v'�� E�Ǒ'�ՉFW��Pp��m�γ�b��;��Ͳ�&Bb�z:x��߁0�L�n���Z��F:��6R�{�˲��/��qp�2�7�w!�c�]�K�t���Xà9o��� ��w���ps��73
Lt��+P�N�L6�)0��\x]0�1y���Iq@v�,9ߊw��x��1Ngb��>�5T���|�p7ز� -�h4���4�^H��҉6~კ[ޅl�δ��q-Iul��o���D �     