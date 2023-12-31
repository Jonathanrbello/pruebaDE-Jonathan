PGDMP         %                {            coppel    15.4    15.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    coppel    DATABASE     �   CREATE DATABASE coppel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE coppel;
                postgres    false            �            1259    16409    divisas    TABLE       CREATE TABLE public.divisas (
    id integer NOT NULL,
    fecha_hora timestamp without time zone NOT NULL,
    divisa_codigo text,
    divisa_nombre text,
    divisa_simbolo text,
    divisa_decimal_digits integer,
    divisa_rounding integer,
    divisa_name_plural text
);
    DROP TABLE public.divisas;
       public         heap    postgres    false            �            1259    16408    divisas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.divisas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.divisas_id_seq;
       public          postgres    false    215                       0    0    divisas_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.divisas_id_seq OWNED BY public.divisas.id;
          public          postgres    false    214            �            1259    16446    registro_llamadas    TABLE     �   CREATE TABLE public.registro_llamadas (
    id integer NOT NULL,
    fecha_hora timestamp without time zone NOT NULL,
    motivo_error text,
    tiempo_respuesta numeric(10,2),
    exitoso boolean,
    timeout_configurado numeric(10,2)
);
 %   DROP TABLE public.registro_llamadas;
       public         heap    postgres    false            �            1259    16445    registro_llamadas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_llamadas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.registro_llamadas_id_seq;
       public          postgres    false    217            	           0    0    registro_llamadas_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.registro_llamadas_id_seq OWNED BY public.registro_llamadas.id;
          public          postgres    false    216            j           2604    16412 
   divisas id    DEFAULT     h   ALTER TABLE ONLY public.divisas ALTER COLUMN id SET DEFAULT nextval('public.divisas_id_seq'::regclass);
 9   ALTER TABLE public.divisas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            k           2604    16449    registro_llamadas id    DEFAULT     |   ALTER TABLE ONLY public.registro_llamadas ALTER COLUMN id SET DEFAULT nextval('public.registro_llamadas_id_seq'::regclass);
 C   ALTER TABLE public.registro_llamadas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �          0    16409    divisas 
   TABLE DATA           �   COPY public.divisas (id, fecha_hora, divisa_codigo, divisa_nombre, divisa_simbolo, divisa_decimal_digits, divisa_rounding, divisa_name_plural) FROM stdin;
    public          postgres    false    215                    0    16446    registro_llamadas 
   TABLE DATA           y   COPY public.registro_llamadas (id, fecha_hora, motivo_error, tiempo_respuesta, exitoso, timeout_configurado) FROM stdin;
    public          postgres    false    217   tM       
           0    0    divisas_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.divisas_id_seq', 4255, true);
          public          postgres    false    214                       0    0    registro_llamadas_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.registro_llamadas_id_seq', 14, true);
          public          postgres    false    216            m           2606    16416    divisas divisas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.divisas
    ADD CONSTRAINT divisas_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.divisas DROP CONSTRAINT divisas_pkey;
       public            postgres    false    215            o           2606    16453 (   registro_llamadas registro_llamadas_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.registro_llamadas
    ADD CONSTRAINT registro_llamadas_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.registro_llamadas DROP CONSTRAINT registro_llamadas_pkey;
       public            postgres    false    217            �      x����nI���9W��l�]���#E�R�Gl�R�o�b�T#��)�ґv��7� Ɓ��؀/p��/|�\�߈��(�W/+��z�-F2�J&߬ʬ�OE�4uVL��w����*�ߗ��O�wU�fۏw��������rz���j����n�v��w�+���&ً��[~��7E�4k�u�d�O���޾�^ou���K &����`�_���9�Sf����􃗳�?���X9�Ͷ�W3���K��`�S�ыe��B����^vt��}};���a�����b������f�6��9��v�}�vq�����_����z�Q���"�>9���v�Ǿ�m�n�mG�?`��LI1/p��nn��K����%F)n��[<�X�m���G���h���b9�Ư��S+ÎRq�k���ly>���������6��^�ʦ+�������E��lf;����t��2{��8��n=Z\�-o��3<��}���k���ʷ^�[����=��n�3�>^�ҝ����r���S�(���3L�~{9��ݼ�o�M�O����o1�Q�p���l����tٝV������.w����v�����r:������϶��~w��u;c�I�0Ϟ�a�w��P<YN��dOv����r��N�*��Y�3[^�]���p���$v.�tz68G�ӍƓ��� ��;������,��������q�l����<���ܟ�'��ev��T?�Ĩǰ� �S�k�^�f�O�W����d;gHѻ�����f�u����vyw��ug���p,���x�cr{�g<������u����a�[,���nͰ�w7����d�
)�z�v��u�:�Cap�X,�`�vἜ��uM?:D��������n�Gb�	��v��WH,� �>��̇��+�N;7�I�xڵ�2{��Iv�i~s�C�v�n,H�8x�=.�[ؓ^�oً�"6xIw�v�=z7�/������o�������1�^�o��}u7���?�������u�f�x��X,���Î<;���î�0�E���&��N�N�o0������w�7��/'�v������W�n�^<
9Z��qI�=�8�������$�%"��1��a��r��p���7o�.�O/�h�l��m�%�v���٣/�7��D��������ݸ��_��c~�����,�&���I�������v��������aH}�R��~�뮀�m�/׳l�}�$߻��c������.��R��?�'�/�1�Y�lONۗog���{)��������Y����q�����/���g���=�������r~�t��������Oݕ�0|��`i���g;���w���
<_.��8z�Q�a���I��n��i�������a���'��fO�\y�~�}���j�AX�����q�dz�w[�n��n�q}��O���nw\�&���K-����������r~�6�~k��ں	��%����l�|�*q�Gnŏ<�G�e����������f��{�~���i`��f{�Ü��}4���<���{���`�sX��y�ݙ����v��ߟ��=�� \��M�g��).c�YwO��  %K������0�E(>���'�~px�)Y�9�ߏ��������nv��n�;�æ?u�<�d�d{����}�!u/�!�{�������dO�w�����35�@O�;R�/oJq��܌�������0_N�`@u.�Ebm���	^J�����w/!ﯻW�~�}x�(I��l/{:��o�[��,��v�A!�v\=��whO��m��� �������X�"{�{�=���KL��œ���g�lX�F��`�ٳ���[G�O[��f�]���?���t�M7~���r�;<�p��7_��q�O'�6e����l��Ͳ��+�-ݘG�H��n�l9�Sc��GƏ���e�����ݥ�9N/7~���8�����~����=���%���3\&xΰ��p��-�Rl��g�ϖ�Iuu�X�A���ӫ���ggxM��iX�z�by��� ߽s��1f!���_�?tw��f�.�'~w��登L7,�U���4۟]�I
��_�����w��
�7a��K�2�H��o?��z�u���C�հð�����\�^�/���q���"�^λS�b����]-��:�ѓp�F��������������zv�/?.����u�x�b�C�07��ɏ�)�����W>u(�e�~����>�g���.>������W�V����t�o���wk�:(�v���>���_���u����ۙ�AX�r��]d�n�����`��^x�p��r��ʠ#�|��+���yw6t/;8�=��Sko��d��9.��ϫ��ue���Z��W���nv0?w�1?�-�wrpN�C�,n�-�p@���}u��'���3̟߾����vz�܆��/1�A$�8�^�4���]�ނ��~�r��
��#�������x�%:���I��8���������6n̿v��Cy��$�xR9�=��ˋ�G�t�:L�����D�!���}9};�������������y��a���}8ť��{��������aÅ��v�!1�����~v�z5���<��_�]����%B۰�pt����s�yv�v9��?�����b�깻�yN��-���~��`����^�$����9f�ᮭ��������4{q`b��D�{�nV����M�����aѮ�×uyѽ�}r�?��Oa�~���X��q���Ӽk�޼j�'�;�888�g�79�C8�a�ׄ��xe9|������o����7݆e���X�{�Z|q����g���evxv�5l��69�+�;4����<Ɇc�Wk���K���Qv4�Mݍ�_��:P?|=�Q��t�g�1��t9}{�n������|��wW6�	�<�e������̿�н�v�C����h�������Iv4�0�oywY�P�>�Qg����A�]���Կ'���N�ꦕc��n��'��+w��o!ܗ�E��o X����;�1n���Sgzy��f;��khV���-������x���g�����׳��i��7]�M7[7��aEd���c'>�M�]c���ܽK�p�F0Y-	��������>���/.���7+&q�r�K����yw���c�S`�0�5�u�#���w[�/���/���n���/n�3H�qt�j��OwE�w7u7����kءa��n��Ѓ���I�^[�!\?twa��#8y~��,���͸�1vW	��ą���nv:[���@\�|�����ʇ5��b';��Y)�܈ߕ0:4t��t��d'�pnwLn��K?:�1�����8��ӻwT?㰞v��Z�! ,+`��uDqcrnL�o�\gpa�f�߼�]^.�7�%�ɬC�r���DW���^v�
�xc�<���+,�!��~v�ɽ�� ��4<����	|�t�eP�p��2;��;��h��5�_���R]g�x�8�ίo���.qE��[�r�Ǳ�wp�=�-�S�"�������wr�#�������^��[�7��m�_y�²�����;ŕ^V޹G���R�P?��b�lq���m������~3����9.v�;�����՗�a^>¯����b����~9���`�h��W�M^Ʈ��U�3�C~Ys� ����4����9NƷ���6���N�6;{���������6���=�c�Mf������������=9�����M�� �ϲ���{��qݬ�﮺�0�lq8v w��I���-��˘a�����l�3�+����������N��.�a�Cv�y`N^���=��Kٳ�����$ ������3\��]�'�Y�Ok�%>�����g?vW�g������x���H���K�����xx�8;�.��g�j��b�i����.Lz�������ߺ�����x	=�_��!{�{i��Eط~�W{F��ċӯ�����Q"�ws_��^,���S�/:�0�-+.qo��ŗ�Yw    ��w�ݐ�a���{ز�����d/g׳/w��}�wc?���s���t�+[��V�k,�`�|9����8�����}[�X��ײ�1��/��������K��x�� �����3<S_-ܛ$����'�9 �����${�d��F��y��({���7�1�]����\�k�����r�������^��;��������b t��C~>�-�?��Oon����|�����x�VOe���?��Z���.�ݟ6���kϷ�nop�.H�nvX�p`�u�=�~��;�n�#���t�H�C3q��5�e�e�d��d�f�U��u	��­�e�% ��E���Z�7UN�l��#����`��t����u���;R��w���~��k-���1,���x���_�O�?͆�	?�~6���X�[��βc�����Uq���a�a1����;T<��|�ہ��$m��=�v�osw���YB���$�m��gOݟ�̖�������,w3�7����v�v��S�����C���<�S����d���G�?���}�f�p�9.�����៶�᛺�=,+ 1m���{;�=��o���{�����${���r���G����/����|����Ϟ=��7��y?�#��2�~C�m� �ۃ����r��_������a���v�'����ߵ����~&	T[�+\��\���7�����g>r������]vt#~6U��n?�v�s������~���v�ENޖ����JݠC�l�l�d'�^���_j�/�/9��g ��
�������������vE�r7���8�����ݟ=*�"+뿀���"+��I������+YYFd�\de(��.����^de%i�z��e`��c�"+�����EV����z��b�Y�^dewQ�z���aGQ�EV��E%YY �[dek@��-��.��[de[q�n��]a�:��ʲ0��n��Ua�)�"+���)�n��U�
J�YY�Q�EV��E�YYF��-�� �*Q.����]de%`u�]de�v��]`d��EVV�ӌ���l#�v��5�
w�]de=��#�"+��HmYYT�]TNd�X6�.���j�"pX��.��^%CB�r��!Y�j($ٸ!'j�8cN�ZI���W��%���E�D���B�(�j0$�U�Q��a�.Uj@,�e�Z�IV� ay6c�"�X֕nH,�V.�����E�D~�U'�E��`��v ,ֵ�.�%�Q�E��t7c�"�XЛ��Y��D���6�.���M���`)�Z����Ro`%�E �[�]�q����!���" Hnk�Z	l�+�"`Hp&]-���.j0$��R��"I�K�ZTNd�Q�j $�2R-�����"�X��4��J���]��"�X�k�[Ky�$��]��"�X��4����n0��" X��]r�h���*�"�X�[�]K�M��@`�J�(`����"QnF�E��@7J����Nr )�"�H\��C��8ij$���T� #o�1jx$��i�"�H�(]-�D�)G�E ���:�$�R��VV6f�ZK�IQ�0�����"�Xޫqj�,��h�P��J'�Ģ_+�"�X��T��f�\�}�$�VH�&��*�"`X��t��6].���&�E � ۇ�E�8[�\K���E��T��n $ʭR-*'��tاV��#�v�1j�$�8TjH$R��"�w�o��aș�W�FNKT� !g��$�E����lT�0��ߌP�ʜ���V��cg@�P��a��4n8,�U�\�z�-�"�Y�k�]Ky=�.����E���7Z�,v4��2g�%^���"`X�[�]�z;�.��ު�"�X�m�]K�M��  ��*�f��AlS�"L'��u�h���Y_騣�"`I�V��D����jf�,cv�Z �0���j`$����2mj0,�F����m4j8,�N-*sVb�t�Z��,���SY\�{�"LdI�ﱋ0�峾�.�4��f�]��,~M�]��,w��.���`a*�X{�]T�Oą��vf�L��vf�X��vf��S���>Y�&�3ׇ���+�4���Ms��6�+P�ݧ[�{E���EL�W��\�ӵ�2��� e�(R�y�U�Hg��[E���F��*M8Њt��HQ[E�����V�����ZE��S!�.Z;!L�UT�0��d�v(�"�ة�\�$v2(-��c-���E��ag�n�"�X��bp,ߪE��a��.ZT�((��E`��+-�E�ՉE ��+-��ܦ�E �d[�X�w��A�]�jE@�4
��e�⏰��\V��7�*���HY��I���1V�$ݎ8�*�$�(�VQ.���J��rY�j�"pXލ�*�eG8`4ZQ.k���yE�,	#'],�e90t�"�a�N_���Y.��C�,�%Z�f(,Ӛ5��a�V�Y˴ՉE���"(U,*d�!�bQ!��R��
Y�8�VT�ίi��B�����B}��j�ߋ�T����^�Z����ހR[E����e�拼�VQ!�8=�**d�&�**d�	�VQ!;��PZE�,��J��
��E��**d�A����^ �zE����N,*d�I�bQ!���iTbQ!���I�
Y�E�N,*d�P�V,*d�Q�bQ!��+��P;B,*d�7��ĢBz���
��u ���
��,�VTȺ/p�4����_���B6������"U+*d78 tZQ![�HJӊ
�D�Պ
�F�R+*d�YIZQ!��@0Z����bD鴢B6�5�+*d��V,*d%QZ�� E��)̢���৚E+'�~�"�X�G-ZT����2�
VSբEఴ�[�@��Vi��4�E� bQ�hx,�I�a>K��E�@cy�h�$��
VKj�����V+*X1Y%�YI�c�Њ
VN������R�,���!ҵ�������k��]�iE��ZQ���jĚE��D�VT��q����5��v�"�X��1bQ���j�E ��+�,��֊E�)�o�fQY���үY;!��,���5��a���5�0��̚E��3`̚E��3@�f0$���+*XEY'jE�&��UT�ʲ�fh$���5��#i�G�Y	}�^�,r��,�\�Z�f0$��n���G�Y&K�n�"�X��T��df��f ,Ժ5� bi6�^Q�:�:i�"�g�}��E��DW�JVb��5�@b!OX��Y��4��d�e�_��,Y[Yk�,�źшE%k.�k���Z��V)��Ǭ7�Y��,�v�XT���=�}bQ���>��d�ds�VT��ٸh��5I�a>I����t��duc�i�"L%	k6,Z��$Q�r��hE%���E�0���!�aKS�*��l6.ZT��l�_�E��~�G�E�l�������+�R��*�����d����_��]�H�ΈL֋JY�j�"pDv#G�����d���e`��Y��51�_E/*eP���A0��E@�SB�h(��5vQ)����JY �[T��0���B΀|̢Ex�!�B�Y�r
�E� "���,Z	w�Z���\�hP,��E��b!W,Z
K�r�"�Xĕ���b��h^Y�����]%�E�,#y�"0X�5���<j�"�X��h�,�)�a:��E�@d��E����-*e�X���2��^Tʲ�����UaO��E��
��-*eO0��-*e?1�-*e8�Iv�JY�H� ���M��}�[T��/b�ݢRV~������ݢE�l�"G�����T����_�(-*e�!#�R�~����J���~ѢR����ԋJ��EV�^Tʢ/@���݋�^T�jo@���Rv{6nѢR�}��Y/*e����E���"uѢR6z��������EF�z+M/2�����.2��8���fo�$�EFV{=@����j�"#ۻ�Q�EFvw���Y��z�"#뼈ҩEF�    y��Y���,2�؋P�Zdd�7���"#+�@0:���F/��n��%_�i�"#+� ���"#��P�EFց��$YB�*��\ddWIir��=a@4Z����0��r��Mbd%�EF6���j�"#�ň��EF��5F.2��@����,%#J+�uEeS�E���&�-2��4z�Ȱ�Ҍ2��*M�3�k(Ha�Q:��Ȱ��J�Ȱ�ґ4f�a]��0�++M�d�=b��,2�|t�Qf�a$�G�E�U��r��%I'VLbgS�"�:I�!�N��N���#H���""].2���aO��+ %Y.2�~%I.2�t���!r�a���"ÊHGS�E�ՐHg�\dX�(:�Ȱ.ҡ�r�amd5�-2����j�a�d�5��(qvC�Ȱ��=��,2��t�T�Ȱ��G
�Ȱ���f�a����7��$��8�,2��t�t�Ȱv�aj�a�$����"êIG�r�a����"êK�ƌ���5���E��������4�I.2��ts��"ÚK�I��k.�+�b�U\%�b:P�\dX�	D�\dX�K	�\dXq�Air�a��gl���)qE3^.2��t��r�a�ê�"�z��Ȱ�2Q-2����f�aE%��f�a���$�E����6�+0�BeVbz��,�X�Y̢�U��
�`U����{͢�ՓN^�jQ�JIL��-�X���MnQ�zG�Mq�*�7b��-�X߈��nQ��EL��-�X�X�ܢ�u�u��U�,���nQ�
A�?$�Ek���U���{ݢJ~ƻEnٚ1nQ%�?���-�d�g�O�Jv�*��EH�[T��/RƹE�lM�9W�nQ%��HQ�E��M��Tz����`�%�E��#E�U�4᳨~������xZ������҉E��M��U�bQ%+�HI7�*YF�J-�d]h�ϯҹE�l#)�-�d_h����U�/��t���ma�hܢJօ��̩nQ%�S�E��
#G�U�,4��XiݢJ����U�.(:���U��?�J�U�"��$���}��?�J�U�\���E��M�9R�nQ%���Hw�*YF�������?G�!nQ%k��F�����	�5N-�dS8 G�E�,{�V,�d�h�πJ�*YF�B,�dQ9�fQ%{B�r�F-�dS9
���5a䤻E��M�aM�-�d8�Iv�*��E�ܢJv������E���"6�-�d�)�nQ%k?�t��-�d�9���`��E�l�L��M�nQ%���U���<�[T�����ݤu�*YF��-�d�Y�nQ%{>�vS�[T�r/BtnQ%���v�*Y����ƸE���"o�[Tɚ/NOs�*Y���QijQ%���hU��J������?Y*M,�d�	����^iԢJ�z��ĩ4�����@��E�l�")].�d{1
���ݝ�?*J!U�ŋ�\T�B/�trQ%�<��V�\T�6/B��E���"T-U���*Q.�d�	����^i�Z�|V��Z�~�"ղ�� �\T�B0��D����`$��E���N.�eYHm�\Tˢ0"trQ-�ÈR�E��#+I.�e�V+ղ_�(�\T��1���E��!;`�u�jYJ$�ZT��W|��f���$�E5�&C+լ�t�vQ��J\ת좚u����j�R:���fu%.�uvQͪJG��E5k+h�]T��7)vQ��G���E5+ m�]T�"�}��E5�%[��E5�&[��E5�&qW�jլ�t�vQ���6�.�Y#�;�D��fm�C��E5�"[�]T�
7��vQ�
HP�좚Վ��좚U����E5�"Maլ�l5vQ�JH�\T�2r�[T�6Ҏt�jVMZ�[T�~��Z��f���rQͪK;B.�Y_i�t��f��U�E5�*m�\T�NҖc䢚��v�\T����\T���arQ�*J�*լ���7��jVZ:�Z.�Ywi��E5�5m=B.�Y��hJ��f���,լ��*��fեm4rQͪK`��E5�1�R.�Y����D��f%&IrQ�
L���j�\��4U.�Yg��墚���!rQ����'��u��C���z]��(��z]_���}��)E���2 �NQ����a�NQ�����B������v��u�e�i��z]}9p4NQ�����r�ST�k-��NQ����S��NQ����q��ued�v�ST�k���NQ��nsS��z]��+��z]��1��z]������Z�0�~��^W��)NQ��#��;E��0�Ht��uE�Glv��u�_�{�SԈ��*_���5���y�h��F�~=�Mw�Q���p�Q��P�9E�(�P(E���"Da5��1���5�
-�(jD�S�1FQ#����U��Ft���z����
L'5�/�QF!5�+\��KE��	{L���Q��TRQ#�T+��F�+�TԈ���5��%�
F#5�%\饢Ft�=�UIE�hW8:��a��j����
+Y*jDK):��a �J���`%)E�({@�W����Ҕ�F�=�HV�Q �0ҕ�F�~+�JQ#j��W>H)jD7��ݨ5�\�>�)jD?����F􅑪��Q����FԄ=�RYE�(W8�VQ#����XE�h{N�����pҭ�F�+b5����4�VQ#z����F���� ���_�mVQ#ھJ�UԈ�o���Q�����Q���R��FT~+�T��E_��[���_�˕RQ#*�H�JE�(�VXJ��E_�*ҥ�F�{+�T����
D'5���Q�^*jD��!5��[�m��Q���M�TԈjo�d5��[!$jE���zF���Q�EV�WԈ6o�������Z�5��[%yE�(�"A�5���I��+jDy��QxE���V8�^Q#���j��F�z+(�WԈNo��5���!v�WԈ~o�����EZ�WԈf/�ZQ#z���ZE�h�"K#5���9y�TԈ�o���������F��=�H���F�N*jD[�BJ�����R+5�9\A)��Ft�+�$���bO0Z���
J'5�y\A����C��Jk���\Ai���T�9�j4ZQ�J�IԊZVO:�V+jYM���1ZQ�
K�TZQ�jJRhE-k*q�7J+jYg�*��e}�#i���U������/E+jY��z��ed=�*jYY���Z�K�J��e�$��NQ˪I�Jt�ZVJ:���e�d]�9E-+$Ht�ZVF:D�SԲ*�.NQ�HGIv�Z�?�����utX� ��e�㪝��5���p�Z�C֕�)jY	�(:��eud]���ZVH:�(��e��#������u���ZVT:Է�Z�_���zE-+-�6�+jYu� �^Q����n��ZVK��z��eͤ�齢����F+jYE٨���U�M�TԲn�ɿ�TԲ����RQ˪KG!���O/���l
�TԲNӱ6HE-+.�R#���t�t��e�%0c�������IE-k1(M*jY�	D�TԲ���tRQ˚KJ��Z�Yz�f��e=eS?@*jYc��Ţ�u����ZVd6M�`Բ������� �����M��ZVZzL�`Բ��aԂQ�J�ƪ������ZVc�t�`Բ�������l�׋ZVO���E-�$��>��e�c�o��ZV:bn�]Բ��-4vQ��F`6�E-+�r�]Բ.3﷋ZV v37�E-k
[C좖����h����&��e �﵋Z���ߗ�דּx��E�,�:`���ZY�EL�]���/@Z�]���/R��E�l�*��V6�����ZYF��/je#��j�^��*p����Vւ=�W��Z�����rQ+����E���P�EVV���.YYF�J.��.�R)YYFR�\de[)z��ʲ0��F.��*��\deW@���ʦ0�r��=a���"+���r��-ad%�EVv���(�"+{�HR�EV����YYB�׋���&�EVv����Y�FF�^de�a�Qv�����{�\deI��"+��0;�Y�F�h����p�j�"++��*��"+���P�EV��Sj�"+{��q��l
#G�YY�ѸEVփC�"+�aN�[de� Ճ�"+���� ����/b��"+�@�5n���_�(�"+K��ѸEV�Ԥ�EV�~��YY�E�����/�Z�\de�7� ?	  �r��%`d)�"+����r��=_���EV�{����l�:Ԉ��l����ʲo�m6������<�,��ߋ�$���6/�"+���(�f�����J3����"AcYY�P�3����"(�,���:���6/���,�����Ydew9�f��%^�TZ���:/�tf��e^D��EVVyR�7��,�"TmYY��4���J/�Zde�AZ��ʒ/�4r���_ �ir���_��"+�HJ�������EVV�B'YYFR�\deQ�!��-��7HJ���"1��D���B1tj���bD��"+kǀ*ƩEV���S���$#J�Y�S�R�YVO:N�ZdY7�Z�Ȳ�ҚQj�em%x*�Ȳ�ҁj�e-��ƩE�Օ�R�,�*I�YVW�z�ZdYa���Ȳ�z�Ȳ��F�E���8R.2�Kb�Uv���jґTv���nҡ��"3a�$����LX?	^�]d&�� �.2��md�0��dm��[Ef��z�Ӎ"�9�`�b��ڪ1 �E஋p�j�"�֥8��A�0��Y���I5�@Y��@QE@�Kr�?�\o�6�n�Q�ڐwD�Q�ڰw��2��b�7��(2���ex�Q;!�d�vT
�vT�"Lf�GE��3�a�΀Z��b_k�"pX��"X֛o!��ڲ2�Rh,���<�V/��r�j�"��i`7IE��2oR0,�V!C���u��$��UJ8$�y�Qd&k�KGȓ�" H��E �({P�Q	0���"�'�u��E��8;�h�Xo\ĩ�"�X���Ff�0�IF ,�Fm��ڎ2���"`X���(����E��xW��Jg�Ģ]�oa&Ko�A)�T��^�YR�{�"Lc�l�dm��M� a.�_�"��ڞ���.��n��0�e��/a&˔�_*�L�)�Y*�l�b�S�	$NE�RI�[��~��L�V����"L�:[��17��s/�c�" ����U(E��c��"@��*E�T�)c�+���T���@r�PN�9Z�4KhE�Qd&�h ����"�H�m��8Ex@rX��E��S��S9!�b�"P�	Q)�"`�Y�\�$v*�:��LZv2(,2������L,;4��eg�n�"3�,����L,˷j�"3�,�V���e	W/Xd&��\�`�����uF�����u>�����'y�Od���T{��'2�d}�;X�O��X��D���Y��d���Q��P��<��}�Q��lw�MJ��P����H�=y�rE�����+2y�b_�*E`����+�%^�\0,��F)��^�\8,�劀a�n�Rd�%:}�"��,�Z���9�q� ���K�b�"�,Ӛ�L^�H[�Rd�eZ�\�����L^�D��F���|�Pd�$]�X����\�X����\�X��Kk�J�L^�T����$�ε���$�J+��$��G-Vd�<e�"��,ੋ��d�N\���%Ks�bE&/Y�Ջ�ܰ'.Vdr�"�[����X�X��q�bE&7,��ŊLnXf5��ܰ�+2�a�,Vdr�R�]��䆅Y�X��+���ŊL^�8�_������ŊL^�|'.Vd��۪�"�W$ޅ�(2yE2^��"�W$�E�Od򊄻P.Vd�d�H\���5��#$�D&�I��bE&�I���ŊL^��:�J(2yM2\�+2y�b��X��k�Ri��f��.Vd�Ey�bE&�Y���(2yâ�_��䤦��t��䤝��4��䤚t7XZ��䤢�0�QdrRV:��(29�(�}��(29�)=g�Qdr�Wz��(29�*���(29�+=Ho������`��ԏ��Xm���6�(29�!=q�Q��V7�:�('���|�������夐to,�щrRM:^�N��2�u����}�R���c������t�('ݣ�$�E9i=�jQN�G�ލ^-�YY�+���(Ԣ�u��v�"S�2ҡ�jQ��H����,����_kբ�Ք��Ԣ����~�"��	Ѥ�E+.$]-*X[Y��բ���n�^-*X/�pz��`ei5jQ�J�Q�E�('I-*X9i��YT��Ҍ�
�\�Q^Q�JM3b�"�H�M���t�^Q�jKSh���������4�+���15fQ�:LJS�
�`��Ŋ `�6:��`ť��E�,M�bE��r[=@-*Xc��բ�u�F�XH,�u�ZT����Ԣ���F�X`,ЍF-*Xii4��B=b�"�X�[�ZT�"�(+2�1͆Ŋ0����d�����
VOV�yE�$��+�4�j�bE�K�W%-V��$t�f�"`HڪM�a*	����K�6,V��,P	�a6UIĢ���U�bE@�lm\�sY�̽fѿ��7�����#M         �   x�m�=
�@�z�{��?��,�,,m�H���<�3	��%�0��x�+F�
c�l�%��|����j��Bp�E��C�i�i�v�u�y�1�Mr��XbI��>�a�R�Yc�׃��N��@ۉ~��R�I#o7��.����m�<��i�˦�r�����9��cʸ�6M�/�'�D��6������b/     