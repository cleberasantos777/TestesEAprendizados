PGDMP     1    5                y            ctrlepis    13.4    13.4 7    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    ctrlepis    DATABASE     h   CREATE DATABASE ctrlepis WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE ctrlepis;
                postgres    false            �            1259    16395 
   tbempresas    TABLE     l   CREATE TABLE public.tbempresas (
    codempresa integer NOT NULL,
    empresa character varying NOT NULL
);
    DROP TABLE public.tbempresas;
       public         heap    postgres    false            �            1259    16401    tbempresas_codempresa_seq    SEQUENCE     �   CREATE SEQUENCE public.tbempresas_codempresa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tbempresas_codempresa_seq;
       public          postgres    false    200            �           0    0    tbempresas_codempresa_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tbempresas_codempresa_seq OWNED BY public.tbempresas.codempresa;
          public          postgres    false    201            �            1259    16403 
   tbentregas    TABLE     �   CREATE TABLE public.tbentregas (
    numentrega integer NOT NULL,
    nummatric character varying NOT NULL,
    dataentrega date NOT NULL,
    situacao character varying
);
    DROP TABLE public.tbentregas;
       public         heap    postgres    false            �            1259    16409    tbentregas_numentrega_seq    SEQUENCE     �   CREATE SEQUENCE public.tbentregas_numentrega_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tbentregas_numentrega_seq;
       public          postgres    false    202            �           0    0    tbentregas_numentrega_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tbentregas_numentrega_seq OWNED BY public.tbentregas.numentrega;
          public          postgres    false    203            �            1259    16411    tbepis    TABLE     �   CREATE TABLE public.tbepis (
    codepi integer NOT NULL,
    numca character varying NOT NULL,
    descricao character varying NOT NULL,
    periodo character varying NOT NULL,
    qtdper integer NOT NULL,
    dias integer NOT NULL
);
    DROP TABLE public.tbepis;
       public         heap    postgres    false            �            1259    16417    tbepis_codepi_seq    SEQUENCE     �   CREATE SEQUENCE public.tbepis_codepi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tbepis_codepi_seq;
       public          postgres    false    204                        0    0    tbepis_codepi_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tbepis_codepi_seq OWNED BY public.tbepis.codepi;
          public          postgres    false    205            �            1259    16419 	   tbfuncoes    TABLE     i   CREATE TABLE public.tbfuncoes (
    codfuncao integer NOT NULL,
    funcao character varying NOT NULL
);
    DROP TABLE public.tbfuncoes;
       public         heap    postgres    false            �            1259    16425    tbfuncoes_codfuncao_seq    SEQUENCE     �   CREATE SEQUENCE public.tbfuncoes_codfuncao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbfuncoes_codfuncao_seq;
       public          postgres    false    206                       0    0    tbfuncoes_codfuncao_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbfuncoes_codfuncao_seq OWNED BY public.tbfuncoes.codfuncao;
          public          postgres    false    207            �            1259    16427    tblinhasentregas    TABLE     s  CREATE TABLE public.tblinhasentregas (
    numentrega integer NOT NULL,
    idlinha integer NOT NULL,
    nummatric character varying NOT NULL,
    numca character varying NOT NULL,
    descricao character varying NOT NULL,
    quantidade integer NOT NULL,
    dataprevdev date NOT NULL,
    baixa character varying NOT NULL,
    observacao character varying NOT NULL
);
 $   DROP TABLE public.tblinhasentregas;
       public         heap    postgres    false            �            1259    16433 	   tbsetores    TABLE     ^   CREATE TABLE public.tbsetores (
    codsetor integer NOT NULL,
    setor character varying
);
    DROP TABLE public.tbsetores;
       public         heap    postgres    false            �            1259    16439    tbsetores_codsetor_seq    SEQUENCE     �   CREATE SEQUENCE public.tbsetores_codsetor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tbsetores_codsetor_seq;
       public          postgres    false    209                       0    0    tbsetores_codsetor_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tbsetores_codsetor_seq OWNED BY public.tbsetores.codsetor;
          public          postgres    false    210            �            1259    16441    tbusers    TABLE     |   CREATE TABLE public.tbusers (
    idusuario integer NOT NULL,
    usuario character varying,
    senha character varying
);
    DROP TABLE public.tbusers;
       public         heap    postgres    false            �            1259    16447    tbusers_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.tbusers_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbusers_idusuario_seq;
       public          postgres    false    211                       0    0    tbusers_idusuario_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tbusers_idusuario_seq OWNED BY public.tbusers.idusuario;
          public          postgres    false    212            �            1259    16449 
   tbusuarios    TABLE     P  CREATE TABLE public.tbusuarios (
    nome character varying NOT NULL,
    setor character varying,
    funcao character varying,
    dtadm date,
    dtdem date,
    nummatric character varying,
    codusu integer NOT NULL,
    tipo character varying,
    empresa character varying,
    ime bytea,
    imd bytea,
    assinatura bytea
);
    DROP TABLE public.tbusuarios;
       public         heap    postgres    false            �            1259    16455    tbusuarios_codusu_seq    SEQUENCE     �   CREATE SEQUENCE public.tbusuarios_codusu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbusuarios_codusu_seq;
       public          postgres    false    213                       0    0    tbusuarios_codusu_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tbusuarios_codusu_seq OWNED BY public.tbusuarios.codusu;
          public          postgres    false    214            R           2604    16457    tbempresas codempresa    DEFAULT     ~   ALTER TABLE ONLY public.tbempresas ALTER COLUMN codempresa SET DEFAULT nextval('public.tbempresas_codempresa_seq'::regclass);
 D   ALTER TABLE public.tbempresas ALTER COLUMN codempresa DROP DEFAULT;
       public          postgres    false    201    200            S           2604    16458    tbentregas numentrega    DEFAULT     ~   ALTER TABLE ONLY public.tbentregas ALTER COLUMN numentrega SET DEFAULT nextval('public.tbentregas_numentrega_seq'::regclass);
 D   ALTER TABLE public.tbentregas ALTER COLUMN numentrega DROP DEFAULT;
       public          postgres    false    203    202            T           2604    16459    tbepis codepi    DEFAULT     n   ALTER TABLE ONLY public.tbepis ALTER COLUMN codepi SET DEFAULT nextval('public.tbepis_codepi_seq'::regclass);
 <   ALTER TABLE public.tbepis ALTER COLUMN codepi DROP DEFAULT;
       public          postgres    false    205    204            U           2604    16460    tbfuncoes codfuncao    DEFAULT     z   ALTER TABLE ONLY public.tbfuncoes ALTER COLUMN codfuncao SET DEFAULT nextval('public.tbfuncoes_codfuncao_seq'::regclass);
 B   ALTER TABLE public.tbfuncoes ALTER COLUMN codfuncao DROP DEFAULT;
       public          postgres    false    207    206            V           2604    16461    tbsetores codsetor    DEFAULT     x   ALTER TABLE ONLY public.tbsetores ALTER COLUMN codsetor SET DEFAULT nextval('public.tbsetores_codsetor_seq'::regclass);
 A   ALTER TABLE public.tbsetores ALTER COLUMN codsetor DROP DEFAULT;
       public          postgres    false    210    209            W           2604    16462    tbusers idusuario    DEFAULT     v   ALTER TABLE ONLY public.tbusers ALTER COLUMN idusuario SET DEFAULT nextval('public.tbusers_idusuario_seq'::regclass);
 @   ALTER TABLE public.tbusers ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    212    211            X           2604    16463    tbusuarios codusu    DEFAULT     v   ALTER TABLE ONLY public.tbusuarios ALTER COLUMN codusu SET DEFAULT nextval('public.tbusuarios_codusu_seq'::regclass);
 @   ALTER TABLE public.tbusuarios ALTER COLUMN codusu DROP DEFAULT;
       public          postgres    false    214    213            �          0    16395 
   tbempresas 
   TABLE DATA           9   COPY public.tbempresas (codempresa, empresa) FROM stdin;
    public          postgres    false    200   9=       �          0    16403 
   tbentregas 
   TABLE DATA           R   COPY public.tbentregas (numentrega, nummatric, dataentrega, situacao) FROM stdin;
    public          postgres    false    202   w=       �          0    16411    tbepis 
   TABLE DATA           Q   COPY public.tbepis (codepi, numca, descricao, periodo, qtdper, dias) FROM stdin;
    public          postgres    false    204   �=       �          0    16419 	   tbfuncoes 
   TABLE DATA           6   COPY public.tbfuncoes (codfuncao, funcao) FROM stdin;
    public          postgres    false    206   �=       �          0    16427    tblinhasentregas 
   TABLE DATA           �   COPY public.tblinhasentregas (numentrega, idlinha, nummatric, numca, descricao, quantidade, dataprevdev, baixa, observacao) FROM stdin;
    public          postgres    false    208   +>       �          0    16433 	   tbsetores 
   TABLE DATA           4   COPY public.tbsetores (codsetor, setor) FROM stdin;
    public          postgres    false    209   j>       �          0    16441    tbusers 
   TABLE DATA           <   COPY public.tbusers (idusuario, usuario, senha) FROM stdin;
    public          postgres    false    211   �>       �          0    16449 
   tbusuarios 
   TABLE DATA              COPY public.tbusuarios (nome, setor, funcao, dtadm, dtdem, nummatric, codusu, tipo, empresa, ime, imd, assinatura) FROM stdin;
    public          postgres    false    213   �>                  0    0    tbempresas_codempresa_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tbempresas_codempresa_seq', 5, true);
          public          postgres    false    201                       0    0    tbentregas_numentrega_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tbentregas_numentrega_seq', 1, true);
          public          postgres    false    203                       0    0    tbepis_codepi_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tbepis_codepi_seq', 5, true);
          public          postgres    false    205                       0    0    tbfuncoes_codfuncao_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tbfuncoes_codfuncao_seq', 3, true);
          public          postgres    false    207            	           0    0    tbsetores_codsetor_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tbsetores_codsetor_seq', 9, true);
          public          postgres    false    210            
           0    0    tbusers_idusuario_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tbusers_idusuario_seq', 1, true);
          public          postgres    false    212                       0    0    tbusuarios_codusu_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tbusuarios_codusu_seq', 3, true);
          public          postgres    false    214            Z           2606    16466    tbempresas tbempresas_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbempresas
    ADD CONSTRAINT tbempresas_pkey PRIMARY KEY (codempresa);
 D   ALTER TABLE ONLY public.tbempresas DROP CONSTRAINT tbempresas_pkey;
       public            postgres    false    200            \           2606    16468    tbentregas tbentregas_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbentregas
    ADD CONSTRAINT tbentregas_pkey PRIMARY KEY (numentrega);
 D   ALTER TABLE ONLY public.tbentregas DROP CONSTRAINT tbentregas_pkey;
       public            postgres    false    202            ^           2606    16470    tbepis tbepis_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tbepis
    ADD CONSTRAINT tbepis_pkey PRIMARY KEY (codepi);
 <   ALTER TABLE ONLY public.tbepis DROP CONSTRAINT tbepis_pkey;
       public            postgres    false    204            `           2606    16472    tbfuncoes tbfuncoes_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tbfuncoes
    ADD CONSTRAINT tbfuncoes_pkey PRIMARY KEY (codfuncao);
 B   ALTER TABLE ONLY public.tbfuncoes DROP CONSTRAINT tbfuncoes_pkey;
       public            postgres    false    206            b           2606    16474    tbsetores tbsetores_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbsetores
    ADD CONSTRAINT tbsetores_pkey PRIMARY KEY (codsetor);
 B   ALTER TABLE ONLY public.tbsetores DROP CONSTRAINT tbsetores_pkey;
       public            postgres    false    209            d           2606    16476    tbusers tbusers_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.tbusers
    ADD CONSTRAINT tbusers_pkey PRIMARY KEY (idusuario);
 >   ALTER TABLE ONLY public.tbusers DROP CONSTRAINT tbusers_pkey;
       public            postgres    false    211            f           2606    16478    tbusuarios tbusuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbusuarios
    ADD CONSTRAINT tbusuarios_pkey PRIMARY KEY (codusu);
 D   ALTER TABLE ONLY public.tbusuarios DROP CONSTRAINT tbusuarios_pkey;
       public            postgres    false    213            �   .   x�3�t�M*JLO��2�t�2�J�ɬJ�2�,I-.I����� ͔
      �   $   x�3�t6�4202�5��5��tLJ-*������ P�      �   5   x�3�1�I-.I5�t���4�463�2�1��q�^U�i�if����� -<�      �   +   x�3��/�Sp�-���HLI�,J�2�t�*MI�+I����� �0
0      �   /   x�3�4�t6����TC ����P��R�В����|�W� �
�      �   7   x�3�tL����,.)J,�,��2�t��K�KN�,��2�t��+9�0)3�+F��� �Rw      �      x�3��������� ��      �      x���[�9����=
M@B�N>
�d��/���/�a�ЪJ-��l4M��ǓYݐ,@��b(OVe��g��������yϟ���:��w�o~�g���������o~�����n^;��'�������?��_����u~�������������?�����w��������%?�*��?�>5�����'ݏd^�ߧ����/1���ʻK��=��'������9������/���5������;�S��O�_���g?��/�9�v����N��������������<������}{\�9'�{����}�B���c��7�{����md~��}��ߜ��{��wf>����{6��w���'���S����?������?�����Oc������1@��=�8�O�����e_ҏ����3\_������������V~�멾���_�>�ox�?����y�{9Ϗ��Þ��� ����s����O��ۼ���\�i?�!��.]��O�Z�?���<#�I3�g�����t?���_�u��a�����?������1@����ڳ��3���#��E�|��_��S�Ǐ�˸� ί�A�î��_���F8�|�{�޿����j=~~�눣�񣧷��:�l/��}�&z��>�=m�Z���'��6�N�]���)\����*��v,y����<Gn�_��6�}-���K�\����]�0� ����_�N@F��Z��r��$��<�l�����������څ�~ӗ�WJ[=���󞯧[�����Bcv��<lD���諾_�=�7�?W\#~����)�Gv�rv�jr��ow�|��x���܀E��}���x�X�أ��_>��f���}�<mo>����>K��_���b*%�k=m��Zo
oD>Xx�`���ofG&�%~�y_��J<fE��.�F����/_"�����޻���J�c�Vړ������7wyή��'���?��k~�>	�O�!�?�}�7�B����k�����XH�Ca����Zݽ|���:�l�'�^vgOf��-�����z'�s&>�_֛u-��G/^>�M��oE�o<��Q��O}7
O^;����	b�ؗ�s��G~óKoy�V��5�TQ���T��MVV�`Ҋ�-�k�L�c<u֐����^2��]و��α\�];��Y�+��8�qt��]qaR�2�T�����aJz�R
���0��/����\�ΓE����;��}F��[ƌ�AW_���Y�7����M�'�ѿ+����{:��b�6ب��ƶ�1a��aay���y���5��<;}�͑f���7�Թ+��W�����u�?9��h�jOa[Ч�C�<ыi�R�Q|�1WEqY��w<W���<�~�#T�YCȥAv&��� O�(�*�L�|9i�r�}Yd�b�7"ʮ�yhv�\���ꚧ�	�n��YY	�<;�]�̆��Q+��}��
O�tw���q!F���6,c �H1����-�O��Y��2�,���'f�c�J���m��tJU����ŭ�3l�9o��6V
��;Ҹ������g뭨��J�Oh�J-b_�ÌuŔ���!�Ok,�{�KL�X4ֹ�Os��,�	@�c�9ŸO >��kx�h�zAYr����(n�m�:V��{�U�EːV�5�\�-�j/�g�O+#|��Ku�H9t�S�/>�b��}RÅ�z1F�����/���#R0�����W���pL�`;&!aMT�S���rR{5l�1�����p�<b�_F�*�;��{vE��"�$�}Ñ #P�0،�k��`�^6:���i�1_=��?��� je1�����R��Ne`�w���j���2��d�AF!c���haV���o:������;�)�2X�~Q�XeoPW�U^Y=|s�%��� �-�o���7��fg�<hS���!Os��
���As���@O/�3�>T9�	$�~���1�a�l�3�<�þ7\w�Q�w 9�\1��P�<^B�wg%Q{��v��@��?�j1� ��9G=D�c��|��#���q06<s8&zк����:�C�T�n-F��;��Ð.��?~x>�[S�k���lB}�,�1m�߸�]ٟτ�k���5#S�+���fM�}��Zq�,��Gæcg0����;����\	�+�"�Ke����h�Q\����)�8;��OP[p�-ε���R,�Bl�P��������a5ۃ�n-�������S��=�/ll4�7�v³��(+���T��
V��m��sC�G��`3�\捂��� �̏���ձ��؞�����6mC����}�q���w�E��] �ЀP�jr
�0u!��e4a���,��= "�*c@��41�BV1�T����E�4��\v�LXXޯ� �7����q����6�Pn���0��W)���00Tl)�+^X��4"�����L���6��<����XL�/�%�������B~��zƔ������N��'��ޕu�N�~ �/�d��XSDmzG�6y/p�A��=6�}��Cw��oB�z�LpѮl<
9b��hT�t�����_ �VӟW��~c{Z���@չb��`)�H ���Fv��=����Ģ�|����D�.~��o�eB5�4p�0�f,�;�,���lO��!ԅ8a�ہ��־�>��o� s�G_o��-�)�����G���x{�J"J'R�"8��`����/A��L	{�BZ�n�Xo@�w/XQ��? G��I<�2���*�'U�&�C<ge��3kfDJx}�l^�ᴻ�Me�@ø�!
�t<�L�5V'���S���d���[A��8�,�[;��}���r����\
�X�\�P����
N��0�s��|��;Ʀcΰ�(�����b�"(�n=p_ ����6���pCu�2w;+�0h�����!8@�t@ ��Вڅa ׀i�|�u`�x�Gll܅=~F�G��2���?�T���U�a���&>�BY�0��S_��.&�a��C(3����X���Y�QQI#��
°��W<%[��B�bk���9P�e�@9�̥�:ܯ�^}��N<.h:�CD���i6 � @3��{1�o�:����^a�.Ibw��&Wީm{zQc,0�Qq�	�y�>�͞��T�[��� BP��Ћ�y1cf�0i� ���^,Fn��z�%,2B+�x3<��``"��	ny�W�FF���5�����ze>����>�q�c@����L)a��.�	��� �8[m���h�u�7���@��"fۀ?�#��c�b94���4�) X�L�����Y�ee�*n�A�?�*��v�uL�^��+`Y@G�7���\�����"�����1�*�8���F��/m�8��1\� ێ��UnI�����ͰЅl�f��X����V����a_xY ��$E����m��E7�m���7À�a��%�j�A8��)�?����3Vɺ[L_2oǂC�<�͚"с���Y ����1Ũ \S��v f����5�!�l^G �B|��߁�b� s�ҙ4������/���=�l(�+�D�Yo�)�mg����g]�e���Tlg�,E��D4��U�F	��v�1-8�!4����`/6p����Wn��D�E(8����26.�p��gk����-����}��A��B��t��#F�ល�@a 	�f�J��`���`ǁqvl�'Ѕ�� �@�R�E.։�D,�# ��_�i��rP�)D�p" �z�7�/��!H(���Yۍ9�Uj�uq�GYqEXu#�ժz!���2�p>�T���S�x�E�cgu�����wA���k� ���x!�� hF�X����QX@�O�����u�| F���N~��&0T��*��=�4�%+`�p� ���_��"��q�;���5&    ��\ȭ�X����+7�1��n�� �ha�:����d�7�0�+5����T�"��-yʼwݍA�V0��@��j��6�������3𭸠������&ˋ���;�j�6�/��b/zJ��~��M����~,��Bj2�7%c۞O�d0���j9~>Ī|Y�·Vv�L�L�FH2+Y�m����i�8P ر�x�)���G��mtG�:@���Pދ`�?2��u
xje�АC�*��/�< #xɍ4����'7��%�z���m0quT"BU���S��oX�n�nדP��X��T�� ��}U� D��8���O���$k^=b�&�Ы�+:��Dc���fd#���+�	�Tl�O��C�F��9�v�$,>J��0��2k���"k.Ń�0�x�&чQʆ�;Ɂ��s?X���J�X��`>2�Lf �c/ W%.W�EK�6��H@��2��5�CvS3����;�[�C͉!�\
��%?�Ƙi�rh*8`��}�Ѝ�+U٭�G^�>`E{3���P4�;+�.����Y��o5	�׉_Ԣ`his���_�@`���*�^���j����{�(��������ځ\��e��.ӂt��ԯ.��/����A$1�qD�o�C��Dc�P`��\�^8�+@��zH7<�ը��v
��y�glI�H|x��l0��|��G���%�YQ�n � �
!�(��h[���0��-Cn6�����Q�O�׀�Q�@Zq%�� �mLk��L%��N�Y�B��:�g
����:�Dk�[�)(4j���(aWY_�
����}��� �/�1�m`�{B���X!rB2HX�1���Xq����~7B�	�
�������R�]}��z$@ַ���+��(b�0�I��y*�/�8`c��&D34w%naHbY�� 6^N��c�^SGV2>< �? ��+c�<w�5���m|6���7#�d>��5
`'�%����/�~	f�y7���p`�����G���.�f���h7"�;�G8l"1�]�=F�A�;��LHh��DG�3�V �Y�3�u�i�O�	�G=���3�?�"`9X�n6�\kxJ��3�mRt���7bEB�:�tvt��R}���!��X]��#�y$�	*�1����?9=����įx�+,,��`�pU!�^�E�����C�2�K�i	�������hP8a����M�L���q}X�Ap@�����Q����&&!�������f�*���b�g@��qq��#y
@�T�᠀� ����X��X�o�5#�9o�dp;׃05|.�nhZN`��]������"*m���am���{��jc|&�=M�fy֚X�q:�����0��L��82�ŧ@��7Gp��@&��C�R,�`ϋ�����ʀ�����"��rZ�j�=1#��j�H`�����5l�9E9DѦv����%�u�#�Ks(D�p6�m4'���2�pl꫅��Qxk¥��U
���s�-d3i�Ξ���,�	�	ha�h�bO:Z��%j�_Lq��`�̞�f��N�}�_��%&�ೠB�>���� @=���":�$���y����$#.��;�1���B��q	)�x�Z��1����bB�n6�e�1�r�5]��G�ޠ^v	�Xe�H��mI�Y,y���2�1�5��hG�@�GΚ����*Ax�Q�\CxZ�#p��bw͈#�3;P�a�,fS�C�1h!��������[!f@��R����A�\���&x�((X���G�D���� ��z� �lƇ.���!�-��u���L�C��ِv��se��a1����U�=��=k.��]�
c�1�Ҿ�����<��M\�io^?עބn���=��AE��֋���,�|bQ��&���W�W����@Ǘ�%�G<�}��4�,���7��i
�X�2uZ0���,�l����9:�f��.w��ZF�3�G=�b�^"]F~N�2Ⴠb�&W�X�Ŏ�	@�7��4�54�
	����ܰ��}�X��0�&P�ae��*��v��D�5�a�p����k(���0����s��+V�Gx�sM�-�۵BHb0�O����٬��|�	������V�^f�O3�����E. *�F7����9u���Õަ��P�#�.W|-��1��2mA�d�@��O<��cFB@αV����ST�z�V/[�U���Gp��������e�%�L��@P����u\��6�}�$� M��{��猁{Wa��a@�Ҁ�p ���m�6��b
�vS@440^0^xH�g��<��{�����/R���6��`�ߚ��0���+�n^�iM;��J�c�~�|��k����i��	��!򥒳�37�x]4Z�SC��5�  ��_F��h5n	YG���� V����31]�l�[���,	�e֟�g��� ����b�Z0s���b~ >� �j ���~Qa�x�~�Jp�n�4t���d�&�0�H �A�U���K+�yo(�R,�YV���f K}�Vb6��iF�����Xf@��S,��;��3��E�)�D0g�	��3D�����|�c;��c�F�;�b��ű@`~ꑚk>�2�K~�aw�2�uрGO��EF�>s��^e���@wA�&��-ݛ5hO��m_�ްe[w�PG80V0i0��@<� Y��A�R2�?[��e�yT�81g���,;�	�+�sx�F��mn-R�S1V�s �$@ǔ���}�rG���z Ȉ�gM�+-=�E!���9�W��a[�`o��Q�l�;!����L��]�A��1V�!ɐ"����F7W5���P` hnւ2k����sA8�M[�[�d�J,k�^�J��*ŗc#�F>��Ъ�	Q�������f������bR�i�ͱ� !`_ƃ���^#�\?.���Y~�q� ��n(��Ü���v��ֶ�\�eat|�5��r�}�zp�/�E��Hf<�ȇVj�"�	?�Qi�˻l�U<���?��TM:K36�����Cq[Դ=��u��*�Ǜ@_�j�YIf�g�\�y�z�F���]6˔׆�G �x�+x���24�������@��m�o���u�R�أ�0*�f���7t=C4�`Zx���tL���V=0�S���NX��:cΠ�� 	�]r6C����p�y�n���ҝ�Zv���L���V�k0ϫY[���m�-X�*8(�\KD�L�+�q��y�#�g���űK[�jq�I�h��k}�Y�hO4EX5��:�0Y �5�@]��6 �� �r�2��\�m����9���Դ����	E�7�������Z�	�≺�N��[+�p*ƈ�{<3�OxF�I��4ƕ���7�c����o'�����̱ �6\�!lY�@[�'$#N� �2����^�oN�s���.pE^ D�Mc��zzر\�1';�q����X�!�tW
�9��g�V-e�*>��p���QEd#Y�9*����W&>���)�����R�C������T��_j�.&?�a��=i>& �@,fާ崰k��"p���[��h��s� i����zLCH-��а�����X��QD����.�i(���V0�6����q�d��
��za��	�����]��P�?$�������3-]Ev���!b�l���>~(Ւ�y m�h��b�
NÖNy��\Z<=&G��}#%\- �	+�\�y,��[ ����� �X�d������1J+V���7��#L��e�n

�����B�7�i��m��w�$\�Y�!���XMx��������j�'�J��f�K�6�c5GR��5�M��,�O<ϓ�q �u�
�5�Y����z+�zڶ������m=����    �:1c�6��;d� �M��I�°�5>F��X�Sz�ŭe}�f#%�b	!���"���^�2�`�A�Q��bBS2|Ts	3b�W�H�<��æ�����qp�7
'ᖠa&%�)�V�Ok4<�v`�l��1�a����Z�yvl�+��EZr����EAAX:����c�6e]1#b�[sh���E|�IyvQ�w`qVKA+�ܰ�c�t��}6-,}�[ %r�d0Yr�c'L¸�h�M�B�q)ZiuS�Ų�	3x��Қ�8��,��n_Je��'�75�V�ޫyۀ?c��푚����|�y�-jqߚ[)�a9h㚵<�9�XpL;x0#7�þay:0���õ�Y��d�|{{ԻX&Xܚ7V
Ұ.���vX�В �\WC������ʲ��?�;:M����҆���S��&��.f�x�=ٽ�G����B�AP!Wq��=�h"��ϸ��Ʋn�����PɆ����@g7��oiրD���<ca�+;�>���|�9Zg��6�W�c.6&2�!���=`�"C ּFD�]a�V��rW��'�5~��Py���,�ǒL�m|������{��]X�0!���3k� ξx����g���ۂ3�2p�&�1�C+��46�b6<���~f���5���`�Y'�=�������K�^�`O�^�7\�+7ڱ���%�"��.��fn���?4�XE��c� ��Ea��쐞����Ւ瀠�~��(ͳ�k 5�A�}��,�Z���IW��.�,d�d7G#ʱ|)�����9�cm��Vړ��VP�|N���iQ+����f��`�ih�g*`��쪵�=ۂ -^�eD���ٷ�<\�Ƹ�,跮[ �qV��O��@�0��7�� �|�I4�#��y<�nH�0��h�ӗ�`��Q�a��zu��0��`��a���+	�KZ���m1T��c"@Q����,�[zT��6�Z�?�m����iC�?�!M�b��*ZX*!p�8�Q-��Y �Ra[�+����fVM���E���c�*>�����@�ɶ��Z��X��-�Ą=o.�>��EM�԰{V�t��q92�'�2~�a�<��#W��L�a��{,w����'��[���;	��6d�8�3Mv�V�D��l"Nu��(�~�Z2p��;C�V�1؛ͷ�����2! qٍ�l�-e�
xW�9�mA}6���/��s�8�cϳ�X�?-��a�/�6��?��uL)b������8����@	�u�Ɏ��E�� $���"�F%�����}Q���}F���j�ƴ�Zn�6YC��(��?�D�$WSQH�X�~��^�c�0�?��`T�Q[c���0��b�4�.��z@W7��2�<wpz��^��J��'�F>q�����" Y�9��x ��&�+�=FËc�d��
�J��(l8��V/ ꧣQ��m��F)�	\�����̶OT�^��zs���>I˰��s2`<n���: ô"�/�I��%w0�p��6������ p< �;3+�־v��0�ԣ�����8F���l%��jw�5FY�ذ!\�W���C�����s�}Yc�����׬���1Y�^sZ�������3ȥ�/�ۼ��!��M�q5���c�ҍ�G6�<��\�q��P�F�-�l�yc��~�xN�	���|������x/���,@�i�!���|��#Nk��`��z9L����ذm�.l�v `1<��j��zMP����E�P�`�8�2�	4�Ec���ǚ�z�z@3r� ���h�L���~ۣ��q�Oݴ72k���b#�ϕ��L_�a���r9�3�!@��J��β⚳�?�! ��+�� J����,�J��}��BO7bF��b�e�<�}�l��5��3v���q��C�=k����a�>�~f�{�ۗ�����ţ�ҏ!�9`V`�}���XRd��s���	+4�Ė[�����H�D�?
>=�!V�pA�`��0b�q�m�Hi��������n�gn�;,��~Zy�D�8��o�Q���.٘=v�5Kt���
6hBf=��CY�e*�)��F�m�����c|�*~�F�
��b��O�(Z@��c�8ň�����Z��-&N	��#0C������`�T�ɾ]~\_�?�@�ݶޯ���m�Sq̻TT�lS`9.�j����l4aI#�jS�m��W�[XL�C�*&��$w��B�O��Ա<�v�#�kj�C�^����r�~�#��	"[P����5�+`#�/���-�ɀ!�6������A�Д
�_����5�^LxshFO���~2K�˃����\6Z����p���7�f;��j`�eWSaz�}�;�sD���Rbp3��K��Ր́����#BX����g��h��șMy�?�1��qw�&i��J�1VL�Y{�ngh�Z��Y�'�+3��~`�8-��>��:-��F���}���^,���lc5P"Gl��K�:`ԏi���3�%���!"���*�P����ݝՎS���][�?�`d�BR�J���%{T1�Ӿ�b�hpժ2�CKvr�%�m�\q�e⻔�W�7�l� �)��~��nߟ)l��1`�Jd�g��(�zԐ�%!�)RL�c��R�O��gu6O��I`<���ԃ�4a5�VmѪY%7�s y���Tr���oJ��ox�gM��^�G����e��C�X��mڷ���G{�-��!����%���(zJN)v������3n���@�V��x�m+/R;L�]ٸ�n!n�Cj1)@�c���WV��~�������-�dV�}H��f��dCc�h	�P-XDP��a�t����͝X�".bu��M�cna|u�xw���	"K�o�cZ�n���"��B/L�u0�m�����ՙؾk�n]��J�Ăl����\�㷢�ӱ�vK�p� �Yl�u��n�s���iZ<����
S�����E���N���p�}~z��_��'�fǱ̘�du�l""'��U��ޙec�كۣ��6�Cg��E���c��e�*!�Ƽ�P�}�Fq��o3�3ʴW~���e�Wi	F��ХذoP �
�y�h%ZR�o��>>D�o�I`�O�}Gc�-Cq��n�Dz`ׇ�4f��2p����y�P���ƾB��2�4��g�i�Gж\�c�m[��u|Z��|^>c4��yY��P<�E�~�8�qE+b�Kj~�E|^܄���ڢ3�]N�����P��EX=���6!�Y_�a�1Q�r���X�5W���7 u�"2v��k����� -
�$�R��#�u����,E��A�����{֏U�X��<�14����0g�v�b�˴�md��W�+Q��m�,�8��wl$*��ʿጣ��#7�����S���N\�r@���4��X>n��u!6܉M�`!��{M��1���ׁ���K��lwI���e�Y,H���X�.{f�/��j����*0�F��K��˺�nKOYp�m߷w��p	��HDv�f3HDqp�,b�s� 6v��FB�c:� ��蠕市ԍ�٩~�Xnٝ ���p&��r�jٹ���&��b�D��b�5���NĪ��>V�`���DkFo}����q��Y�m�q�f m�舒]�ъ'D	I�\�,u�ֺ���kZ�5�����隤ݚ$X��~�7j��k#�s2��>@>��d���͢�K,��7��Ћe�����9k����i��L30�c�
�5,��-�M�(@*S����6v ^�pځ��'�ӿ��O��3��@<�nÖ�j�1z��~+�h*�9C�o����bdOM�
���XB����+���������%W�Cx�u[Y�o�①�`s9��Όhwf�Yl���ZF�����Ĭu���g}�S��N�A7]�OX`rV;���>L#�:�d!�M�v\`{���<0��q�����h	��8�ǹ&ə[����Ti�E��f�eҦ����$k-�O��#���ޭ	0�    ��ϰ�@�d^��rh�H��_`�o�JUg�-2�;��˘+V?�� +f�F�Ve�OCy��5ǰ/��ᖝ#���D�L�Ywߺs�9��7@���s��� 1���؟��J|p&l��@���#�l.����ֺ���X�(��10�Cn���=�8+�M�d�ׯ�iy!�������j�D��׈�~w�h�8T ��b�MgY>�F?��}G��aئ�wD� |�M��c�5��x���Ő4k��gC^?���Y�U�W飱���(alV�8P��f9	�R�㝓��ſ�"�W?��' �xY��oW�A��g1�&�l�3e$�3���d�t�A9��kS����6�?��Ģ�|����R����.�~Jl��B�����(��u�Y;e�X��]m��mT�uH�u [@��ӎ�#0�B�]�R�$�����z2�c��"���J��5�W~�<Y�n�vH��e;��m�3���:��5��v{����;�p�d5��4��]���Ԛ�`w�t���̰e�ٍ�50�L(0�`Z��x(����M�jn�Ǚ���!"�#:���>,�]1���TɋL��Z �mj;-C=�Oq���@2�>n8���?C{�ӓ� K|�*U�� ����������#v��^�	q��"نJ�M1�u�c�d*���k��~n@$��i&�+�>k�K
^�1�?��ۘ���N:����Ʊ�T�/ڤkk�Ɯ#+��j���D��AT�cr����s���O�|�%B��E\�P.�L���)��ӓ,cC<���,�ӯ���oĵDH���,��]Ϛ%Fop
�w,�0���
�O�+�/�B������5�^Xhދ�� y�x�� +�V���~�i������5�t��_�����?Ͽ�����_���O��?�W��׿�?����y�v|��ǡ�����/+��������?F��1����?~����珟�&�덮���]�,�{-V�m���6Nt��6`�A��';m����u���ւC��U��K>ҎU�}ۋk����F]��Rr�y�Ŏ�s ���bU wl#K�X���uY��(���i��B$����hC�̹	��Ǩ�S2!ļ�P�̛~��o���1Ʋ�u~�@^��"�R��V����	����|�Xsr��X|�Ÿ&�?һ|� ��I�qf����0N�ӏ���qIK�Ƒ�4{>+:�r��ǴI~�9�u	Iⶫ�\��$�*�T��k��<���;`� ��˷F;:��5���$���^�W<NkHP��B�
�L���6r<�}9CX��ݸ\Al�t���=��xU�c#-Ռ�vH�T��1���@�w޿�?��ש_��v8W��~��8��5�6����w ��\�j(8*�ա��;�������J�>���m�E웵7��p�:�c٤ic�lP8'�YHy��G�z�5��5e��H`�0?�x�37���K��@�Ǫ},X���(3lSf��ϖLː�XTZ��F�ﬠ��$���s��]���4���UȻ]��Cm�໌v�%|�����g>�]uUI[��:�yyϝs�4AJ�J�N!~�܎�6A:�|V疾��b��$�M�b��4n�׿2��s̝�x�`��Y#�o?����0��uD;8�4�>��~�:�i؏��!�c�m�n�:�j��������b�7��d�Â��v����:� �����CMNJ�����|{�b}�'e'/�����,�hj�e.��ܝ#˚�
��NG��;�t�i�}�Z��\k�A��k��5v�p9���`鉡9��:�!/<+?�<I��!��[���RHw6��#ì�ӕ؜�5��`<�u���9D�s��L~$�6��n�2�K/��N[��+��;"��ys��޼AA��fc�:?V�X�;��e��]��V���8�N�3ZY-.#У�-��+U�dQ;jm#^�;n������c�n�jg�� ��ga�(��e�d��8��T�f�w���)W����|;�1Gv�9Y��$�=����GG���1�a�7&3���|v�T��x{��>fF�gܓH���x��m���Sn��A�_sy�IQ��6����˖����z�so�&Rb�0!���Q�i��6�����I�a,�1���]��
a-���iod�m������|�x�k�↚�k,�c�^��?v�����8i�hY��H��>�G8>��TS *9FŌF"�su{<�Ū{̅�,��&cޮ�E��[�o|ryc �_8��@g������ī�����Xz��d�s����v�̶_���[糳��,�c�>�O3N�?λ�~�+*Έ�E��v��S��ú�=���,���M�'���}�6ҖI�>*E�a9�p$K�0'_���8{[����e�4���\� ZE� x��Sޜ���V[~C)�� �g���>�|XZ���KA��eV�C�=���Ds���P 0k��͟y��kO�u�fH�cn��� �0�l�CM�󖭫7`ڷ��?��i*�V��n{t��QI,W���@�;�;;��*'g�K=�	��)?�,n8��px�E}̺b ۀI뷺�MFӞj��>�쉫0��0�ҝN�3�|� �s��'L�VXF��/��7^�V�:Y����F�?� �@��d@\���S�?���:E�E����,���?e�a��q��n��X)S���H��p����&������ߛՂ��&'�u���D*Wyy/�a�eB �yn>,�x��רz7���Q���4c�#9X):S��[�e4���! I>Z�6i�ǎ���;�;����p�u��#���+�&|�!؃W��d�{p��F
μe8=t�晎Y۹�{t��v���#�b[{��s�����M���:N=� v3�Z�s�=�Z]��,��Qú��>W>�����gкc��<+��ٲYGR04�`�Q��`���%Z�;Y,�j��T�c x��h��'�=���a���Jö�ѫ�j0?��\+6�*A��W�J�{�I���f�����Xzd�g�O��cR6�s/w�n�5*��-� �+'qB���N;~����AM-(sNUw���]�ۖc�V����T|�6ٟ/{m������s+�q��ˉ{�8�;y�3�Y�i�~��4�4f�N�,G��֏e�K�X�`��NV���(���;�E�`��
ij5W������J[�(�_Hsdp�M�/��%��&E���=o������]hםr��a��]&�����P�ueyA[���A@}��{��V�br�lm]������
�Y7ʯ�)���t$����@.��V𳝰|���X��a��b/�Q�,C�6���c孶꠺�:������{,;Eӆe ��9v1a�b�t��9RG8��k�/�ME��0����fA�4�����a�����Y�3���j��P�Q	�9���LY���d��@)Њ�k����1#�DkU[
V3M�s�;��C�W;�㼦���w�}����p `T���ao�XO皛:%w6�	�sÅ�%�w�],��5�t�ܗ!��,�u�,�y,�9�{�z�#X��c3 �G��c�(����}c̀S|Q�mĳ�0�r�y&�1�i��������y�9�=��gaZ\�t��Q �D�K^`I�Z�*��9q-�s�S>c!r��Vĥ��Q옾��m�GX�n��uh�k�/���c�Qo����0��K����3+�: +�ك���X�DZ�fU�j�ȁ�"�7��{��c�>�����`,t�`�x��R���P��OI�a����s�l�8���kQ��&>g�<8���x����_w�H�gua�Gt.[�����x9��a�ާ:r�a��}O��Rf$6ɏ��p{�� �:��㎂Ò���N8g�Y�i?F���r3N����+@t?�v'�I{�3�g]�b����_���\�	q;:���|c����z ��1���͡��~XFěEckl�+����rKw�s�T30    ������3*���t>l��ݥ�[i��)�$�Dp��l��^н���<�s�yy�Vs${�,�ɣ\~�#Wf�=�ĺ�ߢ h��Aɞg�S�~+��g@��<�#Y mq��8���(ޥ��P�	�j��⣡Cx��3����8h�!�>����/E�ҝ
����<��冊�*n|Զ�0��b��#@��������qu��}'V�p�y��^l�C�_g�9�]����]����r����[X4O��*}V뿷|��B��o ��W�k���u^����-�RZ���Oz0=A������tЊ�̬�/.6��?q���2yj�Zr#:r�7��Y�@59M4����@�C,�$A�k�Ú���Ys���?l�㾆��"�Enc���h'l��?ܩ��p�|��fmʱ��ϗd<-��|��J��N�zP!��݈D,�e]���^!��a�JS+ph2���{���*zY�zG�s� ��L��ը�aX��>!Ȅ-e�/����~8'O1<$����eFfe����p�,���6����]�oO� �j�+�d`�n�^�(�����=����Lv2���p����`�P��B��r~���D�%r����G߬�s�+䝞��G�n��2Hf���������[�:�Q0b�Z4
?������v�h���l��-�C���쾱��тsz�b�݂T�Cg�"�97�Y��]���MpO_s�eΐtrt{�� ��X���Ύ�z�� ����]4�
�|��� Uh,��u3��-j�]+>�F�b�^�~��O NUf�b�YG���{[����e������ʝa&-�pw�<
G �}��{�u*�"p2f�/V%a�Yq��-J��U����� ���XN�{��IX��B�s����;"4:��aN��E)�۬d���͞����e��j.v� C��Z噎i��2�غS�{8���yk���.F��T/�����D�6���9z:a<l�Co<�(]o$W��KrO� �b����ii,��-���GȆ���;2���t[ԇ*�7ޚ��a@�ތ�C�fJ�N�d	�����F*X��p��7g�CM�*ȱ�ً��	s��S<����&\C.��D�Y�#1�nב�,
�z���hmOW��Dv[�ka��n�O�cz0��;��Ȓ8�=:Α8��۶
��xZ��/Vx�+wgܸP��c=�t�g��h ��U���^{耀��3˶��3Q���LehH6h�IVp�Ŀ�S��,�ey�k������Xl'U�B;��ر� �����G��l�d�R���n꾆���y��o�[Z�l������h]Vsz���L�yJxq��a|%����k����4v���窞?�fL��!��R�C4n��1���cV{�:�)�'���=(ړ�?���o�\��w�#�=����DRv�3^�y�;�;�ՈJ0�`	�I�%M�����(�+��!�lͺ��;���lƈV��L��{�Z�h�? ���(;�g�'�����H~9�:m�^6~�����2G<z1<���Ѐ5bZ}�X���,Q� ��X���3#c�|�s�< �1^��]q�x���gF���<\D�O!vFQ�!�⣚!�Hvۇ^>������l`�
��4��s<�'�hǧ�{�O�Q��`�v�~ޮ`�vfؽ�Ѷ���a�Q�7s��*�Dk��=c^��v�r�noj��E���J6���c�0@G�;f�Z@���I�v�N�:������S�PU�Hx�W6s�s�Ϲߍ�?&@^ќ�xp�񵗼�u �f��;@���G1��hB;MU<�İ�~%�o@m�)�N�r��	a�Ӹ���LG-EM�'u!H�;�����zZ�����0m`�q<�³��x�C�<Gh{�������GB 'iZ��^L�r�n�1�ȃu�w����F7�0,8ȫڜ�g��q��A�c�v�`Y0�z��uck�FH6J<v!sQ��%���QE?������n�9�W�8��u��]ݒk9����v�ah��ڰ�p�lCR�Z�;tr{����b����qjnp��Po��;����`h�B�p�����-��|^��=�tۥ�x�QA��B]<�����@8����y�C���N�#<�D4\����mt<?�^�Ǳ��ŋ:�_����h$*`�c8Q���	��ӌN�]m߾FO�
&�e�ݩ`�ֻ9�F e�1������x[��#ɷx���؈��v��#�p�i��t�-+�=��Q<�|$+p�iȬ3����L� ��-��c��s�=��c��B��Ȭ�y��)X7�X=��9��!O���C�`��N�حs�b���h�v�k�;��'LGD:oJ%7*n#1��Pϣ��^QB����,��-���2F��מ��0/��҃�A��Sx�"�<:�j|�}}l��\����b�eq.�!����ù@ε�6�_�mNQ𘀰.XE��G$O�#�t�<񖝳�p|-.��x\>Z�	з�Ȅ�p*�W��49PygGP:���nqiϓG����̗	04E��Dk��k:��ɉ0{H���!�j������������v�m���_�F�J�u6AȬ�\�y�&������`|ΝǄm'E;N�� o�n~<���dg��2������V��#��&�1<�-�6����9��xKO�Q���p���xK�L"t���0�xO�
y��'�T�Ӏ��Z���	��o�u�Ӭ�:�G��p�X�8L�k���{��e<���jgg��A\����1= +V=�%ZG�O��Ag�Xuf!ރ�y��!�ɐ$�/����&6z�K�����$�Λ�4[�0)Nѹ��C����06�9_ωG�IυgfqE�bu��b���lb��������:<�|:��LM5Tlw��:�0EF�,�C��<mY|��!J�cG G�vX?�r��Cʌ��;���~sz�&�mp� ��즌�a��� [%�u�}�h�ԈӔ�M|�ӝ���66�<2D�1�np��
b�|�i5�9��S���G�L�8��܊�s�ÌK7S��:I�x$h�y��L�%R���9���ϙ4�
ёω��9��yHȷ$hH��n�뭎߁`ήr��s���S���lX����!�WjX٪�����r�Y`�֫�(�Z�t:8��b�8�9݈��<�G��x<��q�_����x��V�Y5���Ŷ�����;-}>��᭎@r����c~A?���Nx\d�I�qAf��i~\�z�5�0���A*C�A�(��3�o�vw�hÒ�k}<[����R.�`(2/#���('�WpE������ì�R���jȲ8`�+l4�h���=�	��,�C� o�����u{�L`�����X�帋�J>������܃n6�|.�(إ�81��oOALԦ�_�����๧ۓ�~�.�E0����J���n�������=(kI�`���60|Zf��ӥ:�a����C|��m�" >���[e�_ ^}�Aˠ%)��m�1�&��i�<hd��1v�'v��&\�a����G�KG�x=������v�b܆m�0�"2��U�8���P�y
$:ʷ�����=�μ�Z�Q�<=���+��|�Ō9�Z�՟6X`8(���J�Fr���j��� �F:�� y����sP%�,O��TO��b@�����.|�vx�|0p�=e[�`I/�-�ya$�m&�Dr����~v����<����9��h`��g��߸�m����Z_�hZ������[7��N�-m{�OOs~�D���c�{�d��T;��Ýp�62�/eⶍcx����u⩝Fbոt%�lCLS���zjm�� �� y��Ǹ-D�wQ՝��	,_��xr���`.���$H(�Y;����q,�'�[kW�*���1��| 8��2����W��5t��h��2p�6nj�����9a��V�~p��8��S4P�� Х3N���~jI���C�x�9��N7Z� �`% �  M�=�(L��V��(�ǬW���{���a~�Ax���.�Ԣ�;��S�n=wʞ������"�]S YϨ��K8d���J�L�%˲��C,�~���rh��9���g�#7�}�im��Jm���|ׯ6����o�1nm�Kϰ��n�G@�d?��ʴ����6�q�8/'�}ܥw��u��<fo��q^+.�f\��� aw�8�k��{�1����8O��/��-�{ξ#���U
t��,�ul�� ��xn��k����E�xn72��Ûu�o�5��v���,zC�~��U�N�mΎӼc)-H��V@+�������������+�Ǵ��,���®���-c�z�����g8�hΣ��=E�߷B�-?��[��m�o�l�w��'���템���܀'�0��&7��i�K�9F��8$Y\�-�����`<�k�
쓸u�o�|do��xY?������ѭ�T':�6*y\Ϛo��F�u��� ���p~xܟ����<É%�. ��������7���+�gq��W.��� ����L���f��wϓ T���8��!��*9CP��B�o�5��l�V7k����X�]�ܫ����7�<�9�dE/8�w������M����=f;�Y>ܮ��bV�C�Y�\J��̙�d)�`e��w/ă�Ϫ��޹$N"�x(�ӄ &�g���a�x>��"��V�<�"�J�^�i�9 �X�j��G�@tzCw��f�4����Ĥ$�D'P�?�H��\{�'H�n��T/;	����>�S�+߭���:�2���y��#���f!����ή;�koE���Ӫg�}k�V]∟C��&'��1����q)J���u��9Ҭ�TB|�n��{V���w�=�ّ@��hs����o<���@6�ȯ���C�~wֽ�e�>������]I�
�An��x��F+8�
���\}���[F:^���<�خM]N�6���M����";>q'`M�U�7
u�l���c�+��#cw25��* �4��~vdA�B/~�emG�����>��`�t����e E�-�������yПC�6��ǫ���~��br鎹��_�)�G�0��_�����_���������_��=��w�L�S/�.�.��~���O�׿�ӿ�w��o�_�����?�_�1�⏟?~����珟�f���������X��     