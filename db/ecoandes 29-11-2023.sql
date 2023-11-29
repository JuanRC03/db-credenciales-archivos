PGDMP     #    	            
    {            db_ecoandes    15.1    15.1 �    K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            N           1262    41794    db_ecoandes    DATABASE     ~   CREATE DATABASE db_ecoandes WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE db_ecoandes;
                postgres    false            �            1259    41796    acceso    TABLE     �   CREATE TABLE public.acceso (
    id_acceso integer NOT NULL,
    fecha_acceso timestamp without time zone,
    id_usuario integer
);
    DROP TABLE public.acceso;
       public         heap    postgres    false            �            1259    41795    acceso_id_acceso_seq    SEQUENCE     �   CREATE SEQUENCE public.acceso_id_acceso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.acceso_id_acceso_seq;
       public          postgres    false    215            O           0    0    acceso_id_acceso_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.acceso_id_acceso_seq OWNED BY public.acceso.id_acceso;
          public          postgres    false    214            �            1259    41803    area_investigacion    TABLE     �   CREATE TABLE public.area_investigacion (
    id_area_investigacion integer NOT NULL,
    descripcion character varying(255),
    nombre_area_investigacion character varying(255),
    vigencia boolean NOT NULL
);
 &   DROP TABLE public.area_investigacion;
       public         heap    postgres    false            �            1259    41802 ,   area_investigacion_id_area_investigacion_seq    SEQUENCE     �   CREATE SEQUENCE public.area_investigacion_id_area_investigacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.area_investigacion_id_area_investigacion_seq;
       public          postgres    false    217            P           0    0 ,   area_investigacion_id_area_investigacion_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.area_investigacion_id_area_investigacion_seq OWNED BY public.area_investigacion.id_area_investigacion;
          public          postgres    false    216            �            1259    41811    catalogo_espoch    TABLE     �   CREATE TABLE public.catalogo_espoch (
    codigo_variable_espoch character varying(255) NOT NULL,
    mombre_variable_espoch character varying(255),
    id_proyecto integer
);
 #   DROP TABLE public.catalogo_espoch;
       public         heap    postgres    false            �            1259    41818    catalogo_organizacion    TABLE     �   CREATE TABLE public.catalogo_organizacion (
    codigo_variable_organizacion character varying(255) NOT NULL,
    mombre_variable_organizacion character varying(255)
);
 )   DROP TABLE public.catalogo_organizacion;
       public         heap    postgres    false            �            1259    41826    conglomerado    TABLE     �   CREATE TABLE public.conglomerado (
    id_conglomerado integer NOT NULL,
    area character varying(255),
    nombre_conglomerado character varying(255),
    vigencia boolean NOT NULL
);
     DROP TABLE public.conglomerado;
       public         heap    postgres    false            �            1259    41825     conglomerado_id_conglomerado_seq    SEQUENCE     �   CREATE SEQUENCE public.conglomerado_id_conglomerado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.conglomerado_id_conglomerado_seq;
       public          postgres    false    221            Q           0    0     conglomerado_id_conglomerado_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.conglomerado_id_conglomerado_seq OWNED BY public.conglomerado.id_conglomerado;
          public          postgres    false    220            �            1259    41835    conglomerado_muestra    TABLE     �   CREATE TABLE public.conglomerado_muestra (
    id_conglomerado_muestra integer NOT NULL,
    area character varying(255),
    fecha_muestra timestamp without time zone,
    nombre_conglomerado_muestra character varying(255)
);
 (   DROP TABLE public.conglomerado_muestra;
       public         heap    postgres    false            �            1259    41834 0   conglomerado_muestra_id_conglomerado_muestra_seq    SEQUENCE     �   CREATE SEQUENCE public.conglomerado_muestra_id_conglomerado_muestra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.conglomerado_muestra_id_conglomerado_muestra_seq;
       public          postgres    false    223            R           0    0 0   conglomerado_muestra_id_conglomerado_muestra_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.conglomerado_muestra_id_conglomerado_muestra_seq OWNED BY public.conglomerado_muestra.id_conglomerado_muestra;
          public          postgres    false    222            �            1259    41844    dataset    TABLE     H  CREATE TABLE public.dataset (
    id_dataset integer NOT NULL,
    descripcion character varying(255),
    fecha_fin timestamp without time zone,
    fecha_inicio timestamp without time zone,
    vigencia boolean NOT NULL,
    id_parcela integer,
    id_profundidad integer,
    id_proyecto integer,
    id_ubicacion integer
);
    DROP TABLE public.dataset;
       public         heap    postgres    false            �            1259    41843    dataset_id_dataset_seq    SEQUENCE     �   CREATE SEQUENCE public.dataset_id_dataset_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.dataset_id_dataset_seq;
       public          postgres    false    225            S           0    0    dataset_id_dataset_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.dataset_id_dataset_seq OWNED BY public.dataset.id_dataset;
          public          postgres    false    224            �            1259    41851    dato_recolectado    TABLE     �   CREATE TABLE public.dato_recolectado (
    id_dato_recolectado integer NOT NULL,
    valor real NOT NULL,
    vigencia boolean NOT NULL,
    id_dataset integer,
    id_variable integer
);
 $   DROP TABLE public.dato_recolectado;
       public         heap    postgres    false            �            1259    41850 (   dato_recolectado_id_dato_recolectado_seq    SEQUENCE     �   CREATE SEQUENCE public.dato_recolectado_id_dato_recolectado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.dato_recolectado_id_dato_recolectado_seq;
       public          postgres    false    227            T           0    0 (   dato_recolectado_id_dato_recolectado_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.dato_recolectado_id_dato_recolectado_seq OWNED BY public.dato_recolectado.id_dato_recolectado;
          public          postgres    false    226            �            1259    41857    director_area_investigacion    TABLE       CREATE TABLE public.director_area_investigacion (
    id_area_investigacion integer NOT NULL,
    id_usuario integer NOT NULL,
    fecha_actualizacion timestamp without time zone,
    fecha_creacion timestamp without time zone,
    vigencia boolean NOT NULL
);
 /   DROP TABLE public.director_area_investigacion;
       public         heap    postgres    false            �            1259    41862    equivalencia_variable    TABLE     �   CREATE TABLE public.equivalencia_variable (
    codigo_variable_espoch character varying(255) NOT NULL,
    codigo_variable_organizacion character varying(255) NOT NULL,
    id_variable integer NOT NULL
);
 )   DROP TABLE public.equivalencia_variable;
       public         heap    postgres    false            �            1259    41870    estado_muestra    TABLE     �   CREATE TABLE public.estado_muestra (
    id_estado_muestra integer NOT NULL,
    nombre_estado_muestra character varying(255)
);
 "   DROP TABLE public.estado_muestra;
       public         heap    postgres    false            �            1259    41869 $   estado_muestra_id_estado_muestra_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_muestra_id_estado_muestra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.estado_muestra_id_estado_muestra_seq;
       public          postgres    false    231            U           0    0 $   estado_muestra_id_estado_muestra_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.estado_muestra_id_estado_muestra_seq OWNED BY public.estado_muestra.id_estado_muestra;
          public          postgres    false    230            �            1259    41877    estado_proyecto_investigacion    TABLE     �   CREATE TABLE public.estado_proyecto_investigacion (
    id_estado_proyecto integer NOT NULL,
    nombre_estado_proyecto character varying(255)
);
 1   DROP TABLE public.estado_proyecto_investigacion;
       public         heap    postgres    false            �            1259    41876 4   estado_proyecto_investigacion_id_estado_proyecto_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_proyecto_investigacion_id_estado_proyecto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.estado_proyecto_investigacion_id_estado_proyecto_seq;
       public          postgres    false    233            V           0    0 4   estado_proyecto_investigacion_id_estado_proyecto_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.estado_proyecto_investigacion_id_estado_proyecto_seq OWNED BY public.estado_proyecto_investigacion.id_estado_proyecto;
          public          postgres    false    232            �            1259    41884    estado_solicitud_actualizar    TABLE     �   CREATE TABLE public.estado_solicitud_actualizar (
    id_estado_solicitud integer NOT NULL,
    nombre_estado_solicitud character varying(255)
);
 /   DROP TABLE public.estado_solicitud_actualizar;
       public         heap    postgres    false            �            1259    41883 3   estado_solicitud_actualizar_id_estado_solicitud_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_solicitud_actualizar_id_estado_solicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.estado_solicitud_actualizar_id_estado_solicitud_seq;
       public          postgres    false    235            W           0    0 3   estado_solicitud_actualizar_id_estado_solicitud_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.estado_solicitud_actualizar_id_estado_solicitud_seq OWNED BY public.estado_solicitud_actualizar.id_estado_solicitud;
          public          postgres    false    234            �            1259    41891    estado_solicitud_descarga    TABLE     �   CREATE TABLE public.estado_solicitud_descarga (
    id_estado_descarga integer NOT NULL,
    nombre_estado_descarga character varying(255)
);
 -   DROP TABLE public.estado_solicitud_descarga;
       public         heap    postgres    false            �            1259    41890 0   estado_solicitud_descarga_id_estado_descarga_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_solicitud_descarga_id_estado_descarga_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.estado_solicitud_descarga_id_estado_descarga_seq;
       public          postgres    false    237            X           0    0 0   estado_solicitud_descarga_id_estado_descarga_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.estado_solicitud_descarga_id_estado_descarga_seq OWNED BY public.estado_solicitud_descarga.id_estado_descarga;
          public          postgres    false    236            �            1259    41897    grupo_investigacion    TABLE     �   CREATE TABLE public.grupo_investigacion (
    id_proyecto integer NOT NULL,
    id_usuario integer NOT NULL,
    fecha_actualizacion timestamp without time zone,
    fecha_creacion timestamp without time zone,
    vigencia boolean NOT NULL
);
 '   DROP TABLE public.grupo_investigacion;
       public         heap    postgres    false            �            1259    41903    informacion_ecoandes    TABLE     p  CREATE TABLE public.informacion_ecoandes (
    id_informacion_eco_andes integer NOT NULL,
    condiciones_uso character varying(255),
    derechos_reservados character varying(255),
    descripcion character varying(255),
    fecha_creacion timestamp without time zone,
    licencia_uso character varying(255),
    vigencia boolean NOT NULL,
    id_usuario integer
);
 (   DROP TABLE public.informacion_ecoandes;
       public         heap    postgres    false            �            1259    41902 1   informacion_ecoandes_id_informacion_eco_andes_seq    SEQUENCE     �   CREATE SEQUENCE public.informacion_ecoandes_id_informacion_eco_andes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.informacion_ecoandes_id_informacion_eco_andes_seq;
       public          postgres    false    240            Y           0    0 1   informacion_ecoandes_id_informacion_eco_andes_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.informacion_ecoandes_id_informacion_eco_andes_seq OWNED BY public.informacion_ecoandes.id_informacion_eco_andes;
          public          postgres    false    239            �            1259    41912    medida    TABLE     �   CREATE TABLE public.medida (
    id_medida integer NOT NULL,
    descripcion character varying(255),
    unidad character varying(255),
    vigencia boolean NOT NULL
);
    DROP TABLE public.medida;
       public         heap    postgres    false            �            1259    41911    medida_id_medida_seq    SEQUENCE     �   CREATE SEQUENCE public.medida_id_medida_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.medida_id_medida_seq;
       public          postgres    false    242            Z           0    0    medida_id_medida_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.medida_id_medida_seq OWNED BY public.medida.id_medida;
          public          postgres    false    241            �            1259    41921    muestra    TABLE     [  CREATE TABLE public.muestra (
    id_muestra integer NOT NULL,
    carbono real,
    ce30 real,
    mo30 real,
    mo60 real,
    p30 real,
    ph30 real,
    estado_muestra_id_estado_muestra integer,
    parcela_muestra_id_parcela_muestra integer,
    profundidad_muestra_id_profundidad integer,
    proyecto_investigacion_id_proyecto integer
);
    DROP TABLE public.muestra;
       public         heap    postgres    false            �            1259    41920    muestra_id_muestra_seq    SEQUENCE     �   CREATE SEQUENCE public.muestra_id_muestra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.muestra_id_muestra_seq;
       public          postgres    false    244            [           0    0    muestra_id_muestra_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.muestra_id_muestra_seq OWNED BY public.muestra.id_muestra;
          public          postgres    false    243            �            1259    41928    parcela    TABLE     �   CREATE TABLE public.parcela (
    id_parcela integer NOT NULL,
    coordenadax real NOT NULL,
    coordenaday real NOT NULL,
    sistema_coordenada character varying(255),
    vigencia boolean NOT NULL,
    id_conglomerado integer
);
    DROP TABLE public.parcela;
       public         heap    postgres    false            �            1259    41927    parcela_id_parcela_seq    SEQUENCE     �   CREATE SEQUENCE public.parcela_id_parcela_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.parcela_id_parcela_seq;
       public          postgres    false    246            \           0    0    parcela_id_parcela_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.parcela_id_parcela_seq OWNED BY public.parcela.id_parcela;
          public          postgres    false    245            �            1259    41935    parcela_muestra    TABLE     �   CREATE TABLE public.parcela_muestra (
    id_parcela_muestra integer NOT NULL,
    altitud character varying(255),
    latitud character varying(255),
    longitud character varying(255),
    conglomerado_muestra_id_conglomerado_muestra integer
);
 #   DROP TABLE public.parcela_muestra;
       public         heap    postgres    false            �            1259    41934 &   parcela_muestra_id_parcela_muestra_seq    SEQUENCE     �   CREATE SEQUENCE public.parcela_muestra_id_parcela_muestra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.parcela_muestra_id_parcela_muestra_seq;
       public          postgres    false    248            ]           0    0 &   parcela_muestra_id_parcela_muestra_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.parcela_muestra_id_parcela_muestra_seq OWNED BY public.parcela_muestra.id_parcela_muestra;
          public          postgres    false    247            �            1259    41944    profundidad    TABLE     �   CREATE TABLE public.profundidad (
    id_profundidad integer NOT NULL,
    produnidad_inicial real NOT NULL,
    profunidad_final real NOT NULL,
    vigencia boolean NOT NULL,
    id_medida integer
);
    DROP TABLE public.profundidad;
       public         heap    postgres    false            �            1259    41943    profundidad_id_profundidad_seq    SEQUENCE     �   CREATE SEQUENCE public.profundidad_id_profundidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.profundidad_id_profundidad_seq;
       public          postgres    false    250            ^           0    0    profundidad_id_profundidad_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.profundidad_id_profundidad_seq OWNED BY public.profundidad.id_profundidad;
          public          postgres    false    249            �            1259    41950    profundidad_parcela    TABLE     r   CREATE TABLE public.profundidad_parcela (
    id_parcela integer NOT NULL,
    id_profundidad integer NOT NULL
);
 '   DROP TABLE public.profundidad_parcela;
       public         heap    postgres    false            �            1259    41956    proyecto_investigacion    TABLE     �  CREATE TABLE public.proyecto_investigacion (
    id_proyecto integer NOT NULL,
    descripcion character varying(255),
    fecha_actualizacion timestamp without time zone,
    fecha_creacion timestamp without time zone,
    fecha_fin timestamp without time zone,
    fecha_inicio timestamp without time zone,
    nombre_proyecto character varying(255),
    vigencia boolean NOT NULL,
    id_area_investigacion integer,
    id_estado_proyecto integer
);
 *   DROP TABLE public.proyecto_investigacion;
       public         heap    postgres    false            �            1259    41955 &   proyecto_investigacion_id_proyecto_seq    SEQUENCE     �   CREATE SEQUENCE public.proyecto_investigacion_id_proyecto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.proyecto_investigacion_id_proyecto_seq;
       public          postgres    false    253            _           0    0 &   proyecto_investigacion_id_proyecto_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.proyecto_investigacion_id_proyecto_seq OWNED BY public.proyecto_investigacion.id_proyecto;
          public          postgres    false    252            �            1259    41965    respuesta_solicitud_actualizar    TABLE     �   CREATE TABLE public.respuesta_solicitud_actualizar (
    id_respuesta_actualizar integer NOT NULL,
    fecha_respuesta timestamp without time zone,
    respuesta character varying(255),
    id_solicitud_actualizar integer
);
 2   DROP TABLE public.respuesta_solicitud_actualizar;
       public         heap    postgres    false            �            1259    41964 :   respuesta_solicitud_actualizar_id_respuesta_actualizar_seq    SEQUENCE     �   CREATE SEQUENCE public.respuesta_solicitud_actualizar_id_respuesta_actualizar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 Q   DROP SEQUENCE public.respuesta_solicitud_actualizar_id_respuesta_actualizar_seq;
       public          postgres    false    255            `           0    0 :   respuesta_solicitud_actualizar_id_respuesta_actualizar_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.respuesta_solicitud_actualizar_id_respuesta_actualizar_seq OWNED BY public.respuesta_solicitud_actualizar.id_respuesta_actualizar;
          public          postgres    false    254                       1259    41972    respuesta_solicitud_descarga    TABLE     �   CREATE TABLE public.respuesta_solicitud_descarga (
    id_respuesta_descarga integer NOT NULL,
    fecha_respuesta timestamp without time zone,
    respuesta character varying(255),
    id_solicitud_descarga integer
);
 0   DROP TABLE public.respuesta_solicitud_descarga;
       public         heap    postgres    false                        1259    41971 6   respuesta_solicitud_descarga_id_respuesta_descarga_seq    SEQUENCE     �   CREATE SEQUENCE public.respuesta_solicitud_descarga_id_respuesta_descarga_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.respuesta_solicitud_descarga_id_respuesta_descarga_seq;
       public          postgres    false    257            a           0    0 6   respuesta_solicitud_descarga_id_respuesta_descarga_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.respuesta_solicitud_descarga_id_respuesta_descarga_seq OWNED BY public.respuesta_solicitud_descarga.id_respuesta_descarga;
          public          postgres    false    256                       1259    41979    rol    TABLE     `   CREATE TABLE public.rol (
    id_rol integer NOT NULL,
    nombre_rol character varying(255)
);
    DROP TABLE public.rol;
       public         heap    postgres    false                       1259    41978    rol_id_rol_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.rol_id_rol_seq;
       public          postgres    false    259            b           0    0    rol_id_rol_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.rol_id_rol_seq OWNED BY public.rol.id_rol;
          public          postgres    false    258                       1259    41986    solicitud_actualizar_dato    TABLE     x  CREATE TABLE public.solicitud_actualizar_dato (
    id_solicitud_actualizar integer NOT NULL,
    apellido character varying(255),
    fecha_envio_solicitud timestamp without time zone,
    investigacion character varying(255),
    motivo character varying(255),
    nombre character varying(255),
    id_dato_recolectado integer,
    id_estado_solictud_actualizar integer
);
 -   DROP TABLE public.solicitud_actualizar_dato;
       public         heap    postgres    false                       1259    41985 5   solicitud_actualizar_dato_id_solicitud_actualizar_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_actualizar_dato_id_solicitud_actualizar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.solicitud_actualizar_dato_id_solicitud_actualizar_seq;
       public          postgres    false    261            c           0    0 5   solicitud_actualizar_dato_id_solicitud_actualizar_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.solicitud_actualizar_dato_id_solicitud_actualizar_seq OWNED BY public.solicitud_actualizar_dato.id_solicitud_actualizar;
          public          postgres    false    260                       1259    41995    solicitud_actualizar_muestra    TABLE     �  CREATE TABLE public.solicitud_actualizar_muestra (
    id_solicitud_actualizar integer NOT NULL,
    apellido character varying(255),
    fecha timestamp without time zone,
    investigacion character varying(255),
    motivo character varying(255),
    nombre character varying(255),
    respuesta character varying(255),
    estado_solicitud_actualizar_id_estado_solicitud integer,
    muestra_id_muestra integer
);
 0   DROP TABLE public.solicitud_actualizar_muestra;
       public         heap    postgres    false                       1259    41994 8   solicitud_actualizar_muestra_id_solicitud_actualizar_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_actualizar_muestra_id_solicitud_actualizar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 O   DROP SEQUENCE public.solicitud_actualizar_muestra_id_solicitud_actualizar_seq;
       public          postgres    false    263            d           0    0 8   solicitud_actualizar_muestra_id_solicitud_actualizar_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.solicitud_actualizar_muestra_id_solicitud_actualizar_seq OWNED BY public.solicitud_actualizar_muestra.id_solicitud_actualizar;
          public          postgres    false    262            	           1259    42004    solicitud_descarga    TABLE     |  CREATE TABLE public.solicitud_descarga (
    id_solicitud_descarga integer NOT NULL,
    apellido character varying(255),
    emial character varying(255),
    fecha_envio_solicitud timestamp without time zone,
    institucion character varying(255),
    motivo character varying(255),
    nombre character varying(255),
    id_estado_descarga integer,
    id_proyecto integer
);
 &   DROP TABLE public.solicitud_descarga;
       public         heap    postgres    false                       1259    42003 ,   solicitud_descarga_id_solicitud_descarga_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_descarga_id_solicitud_descarga_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.solicitud_descarga_id_solicitud_descarga_seq;
       public          postgres    false    265            e           0    0 ,   solicitud_descarga_id_solicitud_descarga_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.solicitud_descarga_id_solicitud_descarga_seq OWNED BY public.solicitud_descarga.id_solicitud_descarga;
          public          postgres    false    264                       1259    42013 	   ubicacion    TABLE     �  CREATE TABLE public.ubicacion (
    id_ubicacion integer NOT NULL,
    codigo_canton character varying(255),
    codigo_pais character varying(255),
    codigo_parroquia character varying(255),
    codigo_provincia character varying(255),
    nombre_canton character varying(255),
    nombre_pais character varying(255),
    nombre_parroquia character varying(255),
    nombre_provincia character varying(255)
);
    DROP TABLE public.ubicacion;
       public         heap    postgres    false            
           1259    42012    ubicacion_id_ubicacion_seq    SEQUENCE     �   CREATE SEQUENCE public.ubicacion_id_ubicacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ubicacion_id_ubicacion_seq;
       public          postgres    false    267            f           0    0    ubicacion_id_ubicacion_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ubicacion_id_ubicacion_seq OWNED BY public.ubicacion.id_ubicacion;
          public          postgres    false    266                       1259    42022    usuario    TABLE     �  CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    apellido_usuario character varying(255),
    cedula character varying(255),
    contrasenia character varying(255),
    email character varying(255),
    fecha_actualizacion timestamp without time zone,
    fecha_creacion timestamp without time zone,
    imagen_perfil oid,
    nombre_usuario character varying(255),
    telefono character varying(255),
    vigencia boolean NOT NULL,
    id_rol integer
);
    DROP TABLE public.usuario;
       public         heap    postgres    false                       1259    42021    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public          postgres    false    269            g           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
          public          postgres    false    268                       1259    42031    variable    TABLE     o   CREATE TABLE public.variable (
    id_variable integer NOT NULL,
    mombre_variable character varying(255)
);
    DROP TABLE public.variable;
       public         heap    postgres    false                       1259    42030    variable_id_variable_seq    SEQUENCE     �   CREATE SEQUENCE public.variable_id_variable_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.variable_id_variable_seq;
       public          postgres    false    271            h           0    0    variable_id_variable_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.variable_id_variable_seq OWNED BY public.variable.id_variable;
          public          postgres    false    270                       1259    42038 	   visitante    TABLE     �   CREATE TABLE public.visitante (
    id integer NOT NULL,
    fecha timestamp without time zone,
    ip character varying(255)
);
    DROP TABLE public.visitante;
       public         heap    postgres    false                       1259    42037    visitante_id_seq    SEQUENCE     �   CREATE SEQUENCE public.visitante_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.visitante_id_seq;
       public          postgres    false    273            i           0    0    visitante_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.visitante_id_seq OWNED BY public.visitante.id;
          public          postgres    false    272            �           2604    41799    acceso id_acceso    DEFAULT     t   ALTER TABLE ONLY public.acceso ALTER COLUMN id_acceso SET DEFAULT nextval('public.acceso_id_acceso_seq'::regclass);
 ?   ALTER TABLE public.acceso ALTER COLUMN id_acceso DROP DEFAULT;
       public          postgres    false    214    215    215                        2604    41806 (   area_investigacion id_area_investigacion    DEFAULT     �   ALTER TABLE ONLY public.area_investigacion ALTER COLUMN id_area_investigacion SET DEFAULT nextval('public.area_investigacion_id_area_investigacion_seq'::regclass);
 W   ALTER TABLE public.area_investigacion ALTER COLUMN id_area_investigacion DROP DEFAULT;
       public          postgres    false    217    216    217                       2604    41829    conglomerado id_conglomerado    DEFAULT     �   ALTER TABLE ONLY public.conglomerado ALTER COLUMN id_conglomerado SET DEFAULT nextval('public.conglomerado_id_conglomerado_seq'::regclass);
 K   ALTER TABLE public.conglomerado ALTER COLUMN id_conglomerado DROP DEFAULT;
       public          postgres    false    220    221    221                       2604    41838 ,   conglomerado_muestra id_conglomerado_muestra    DEFAULT     �   ALTER TABLE ONLY public.conglomerado_muestra ALTER COLUMN id_conglomerado_muestra SET DEFAULT nextval('public.conglomerado_muestra_id_conglomerado_muestra_seq'::regclass);
 [   ALTER TABLE public.conglomerado_muestra ALTER COLUMN id_conglomerado_muestra DROP DEFAULT;
       public          postgres    false    222    223    223                       2604    41847    dataset id_dataset    DEFAULT     x   ALTER TABLE ONLY public.dataset ALTER COLUMN id_dataset SET DEFAULT nextval('public.dataset_id_dataset_seq'::regclass);
 A   ALTER TABLE public.dataset ALTER COLUMN id_dataset DROP DEFAULT;
       public          postgres    false    225    224    225                       2604    41854 $   dato_recolectado id_dato_recolectado    DEFAULT     �   ALTER TABLE ONLY public.dato_recolectado ALTER COLUMN id_dato_recolectado SET DEFAULT nextval('public.dato_recolectado_id_dato_recolectado_seq'::regclass);
 S   ALTER TABLE public.dato_recolectado ALTER COLUMN id_dato_recolectado DROP DEFAULT;
       public          postgres    false    227    226    227                       2604    41873     estado_muestra id_estado_muestra    DEFAULT     �   ALTER TABLE ONLY public.estado_muestra ALTER COLUMN id_estado_muestra SET DEFAULT nextval('public.estado_muestra_id_estado_muestra_seq'::regclass);
 O   ALTER TABLE public.estado_muestra ALTER COLUMN id_estado_muestra DROP DEFAULT;
       public          postgres    false    230    231    231                       2604    41880 0   estado_proyecto_investigacion id_estado_proyecto    DEFAULT     �   ALTER TABLE ONLY public.estado_proyecto_investigacion ALTER COLUMN id_estado_proyecto SET DEFAULT nextval('public.estado_proyecto_investigacion_id_estado_proyecto_seq'::regclass);
 _   ALTER TABLE public.estado_proyecto_investigacion ALTER COLUMN id_estado_proyecto DROP DEFAULT;
       public          postgres    false    233    232    233                       2604    41887 /   estado_solicitud_actualizar id_estado_solicitud    DEFAULT     �   ALTER TABLE ONLY public.estado_solicitud_actualizar ALTER COLUMN id_estado_solicitud SET DEFAULT nextval('public.estado_solicitud_actualizar_id_estado_solicitud_seq'::regclass);
 ^   ALTER TABLE public.estado_solicitud_actualizar ALTER COLUMN id_estado_solicitud DROP DEFAULT;
       public          postgres    false    235    234    235                       2604    41894 ,   estado_solicitud_descarga id_estado_descarga    DEFAULT     �   ALTER TABLE ONLY public.estado_solicitud_descarga ALTER COLUMN id_estado_descarga SET DEFAULT nextval('public.estado_solicitud_descarga_id_estado_descarga_seq'::regclass);
 [   ALTER TABLE public.estado_solicitud_descarga ALTER COLUMN id_estado_descarga DROP DEFAULT;
       public          postgres    false    236    237    237            	           2604    41906 -   informacion_ecoandes id_informacion_eco_andes    DEFAULT     �   ALTER TABLE ONLY public.informacion_ecoandes ALTER COLUMN id_informacion_eco_andes SET DEFAULT nextval('public.informacion_ecoandes_id_informacion_eco_andes_seq'::regclass);
 \   ALTER TABLE public.informacion_ecoandes ALTER COLUMN id_informacion_eco_andes DROP DEFAULT;
       public          postgres    false    239    240    240            
           2604    41915    medida id_medida    DEFAULT     t   ALTER TABLE ONLY public.medida ALTER COLUMN id_medida SET DEFAULT nextval('public.medida_id_medida_seq'::regclass);
 ?   ALTER TABLE public.medida ALTER COLUMN id_medida DROP DEFAULT;
       public          postgres    false    241    242    242                       2604    41924    muestra id_muestra    DEFAULT     x   ALTER TABLE ONLY public.muestra ALTER COLUMN id_muestra SET DEFAULT nextval('public.muestra_id_muestra_seq'::regclass);
 A   ALTER TABLE public.muestra ALTER COLUMN id_muestra DROP DEFAULT;
       public          postgres    false    243    244    244                       2604    41931    parcela id_parcela    DEFAULT     x   ALTER TABLE ONLY public.parcela ALTER COLUMN id_parcela SET DEFAULT nextval('public.parcela_id_parcela_seq'::regclass);
 A   ALTER TABLE public.parcela ALTER COLUMN id_parcela DROP DEFAULT;
       public          postgres    false    245    246    246                       2604    41938 "   parcela_muestra id_parcela_muestra    DEFAULT     �   ALTER TABLE ONLY public.parcela_muestra ALTER COLUMN id_parcela_muestra SET DEFAULT nextval('public.parcela_muestra_id_parcela_muestra_seq'::regclass);
 Q   ALTER TABLE public.parcela_muestra ALTER COLUMN id_parcela_muestra DROP DEFAULT;
       public          postgres    false    247    248    248                       2604    41947    profundidad id_profundidad    DEFAULT     �   ALTER TABLE ONLY public.profundidad ALTER COLUMN id_profundidad SET DEFAULT nextval('public.profundidad_id_profundidad_seq'::regclass);
 I   ALTER TABLE public.profundidad ALTER COLUMN id_profundidad DROP DEFAULT;
       public          postgres    false    250    249    250                       2604    41959 "   proyecto_investigacion id_proyecto    DEFAULT     �   ALTER TABLE ONLY public.proyecto_investigacion ALTER COLUMN id_proyecto SET DEFAULT nextval('public.proyecto_investigacion_id_proyecto_seq'::regclass);
 Q   ALTER TABLE public.proyecto_investigacion ALTER COLUMN id_proyecto DROP DEFAULT;
       public          postgres    false    252    253    253                       2604    41968 6   respuesta_solicitud_actualizar id_respuesta_actualizar    DEFAULT     �   ALTER TABLE ONLY public.respuesta_solicitud_actualizar ALTER COLUMN id_respuesta_actualizar SET DEFAULT nextval('public.respuesta_solicitud_actualizar_id_respuesta_actualizar_seq'::regclass);
 e   ALTER TABLE public.respuesta_solicitud_actualizar ALTER COLUMN id_respuesta_actualizar DROP DEFAULT;
       public          postgres    false    255    254    255                       2604    41975 2   respuesta_solicitud_descarga id_respuesta_descarga    DEFAULT     �   ALTER TABLE ONLY public.respuesta_solicitud_descarga ALTER COLUMN id_respuesta_descarga SET DEFAULT nextval('public.respuesta_solicitud_descarga_id_respuesta_descarga_seq'::regclass);
 a   ALTER TABLE public.respuesta_solicitud_descarga ALTER COLUMN id_respuesta_descarga DROP DEFAULT;
       public          postgres    false    256    257    257                       2604    41982 
   rol id_rol    DEFAULT     h   ALTER TABLE ONLY public.rol ALTER COLUMN id_rol SET DEFAULT nextval('public.rol_id_rol_seq'::regclass);
 9   ALTER TABLE public.rol ALTER COLUMN id_rol DROP DEFAULT;
       public          postgres    false    258    259    259                       2604    41989 1   solicitud_actualizar_dato id_solicitud_actualizar    DEFAULT     �   ALTER TABLE ONLY public.solicitud_actualizar_dato ALTER COLUMN id_solicitud_actualizar SET DEFAULT nextval('public.solicitud_actualizar_dato_id_solicitud_actualizar_seq'::regclass);
 `   ALTER TABLE public.solicitud_actualizar_dato ALTER COLUMN id_solicitud_actualizar DROP DEFAULT;
       public          postgres    false    261    260    261                       2604    41998 4   solicitud_actualizar_muestra id_solicitud_actualizar    DEFAULT     �   ALTER TABLE ONLY public.solicitud_actualizar_muestra ALTER COLUMN id_solicitud_actualizar SET DEFAULT nextval('public.solicitud_actualizar_muestra_id_solicitud_actualizar_seq'::regclass);
 c   ALTER TABLE public.solicitud_actualizar_muestra ALTER COLUMN id_solicitud_actualizar DROP DEFAULT;
       public          postgres    false    262    263    263                       2604    42007 (   solicitud_descarga id_solicitud_descarga    DEFAULT     �   ALTER TABLE ONLY public.solicitud_descarga ALTER COLUMN id_solicitud_descarga SET DEFAULT nextval('public.solicitud_descarga_id_solicitud_descarga_seq'::regclass);
 W   ALTER TABLE public.solicitud_descarga ALTER COLUMN id_solicitud_descarga DROP DEFAULT;
       public          postgres    false    265    264    265                       2604    42016    ubicacion id_ubicacion    DEFAULT     �   ALTER TABLE ONLY public.ubicacion ALTER COLUMN id_ubicacion SET DEFAULT nextval('public.ubicacion_id_ubicacion_seq'::regclass);
 E   ALTER TABLE public.ubicacion ALTER COLUMN id_ubicacion DROP DEFAULT;
       public          postgres    false    266    267    267                       2604    42025    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    268    269    269                       2604    42034    variable id_variable    DEFAULT     |   ALTER TABLE ONLY public.variable ALTER COLUMN id_variable SET DEFAULT nextval('public.variable_id_variable_seq'::regclass);
 C   ALTER TABLE public.variable ALTER COLUMN id_variable DROP DEFAULT;
       public          postgres    false    270    271    271                       2604    42041    visitante id    DEFAULT     l   ALTER TABLE ONLY public.visitante ALTER COLUMN id SET DEFAULT nextval('public.visitante_id_seq'::regclass);
 ;   ALTER TABLE public.visitante ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    272    273                      0    41796    acceso 
   TABLE DATA           E   COPY public.acceso (id_acceso, fecha_acceso, id_usuario) FROM stdin;
    public          postgres    false    215   dW                0    41803    area_investigacion 
   TABLE DATA           u   COPY public.area_investigacion (id_area_investigacion, descripcion, nombre_area_investigacion, vigencia) FROM stdin;
    public          postgres    false    217   �W                0    41811    catalogo_espoch 
   TABLE DATA           f   COPY public.catalogo_espoch (codigo_variable_espoch, mombre_variable_espoch, id_proyecto) FROM stdin;
    public          postgres    false    218   �W                0    41818    catalogo_organizacion 
   TABLE DATA           k   COPY public.catalogo_organizacion (codigo_variable_organizacion, mombre_variable_organizacion) FROM stdin;
    public          postgres    false    219   �W                0    41826    conglomerado 
   TABLE DATA           \   COPY public.conglomerado (id_conglomerado, area, nombre_conglomerado, vigencia) FROM stdin;
    public          postgres    false    221   �W                0    41835    conglomerado_muestra 
   TABLE DATA           y   COPY public.conglomerado_muestra (id_conglomerado_muestra, area, fecha_muestra, nombre_conglomerado_muestra) FROM stdin;
    public          postgres    false    223   �W                0    41844    dataset 
   TABLE DATA           �   COPY public.dataset (id_dataset, descripcion, fecha_fin, fecha_inicio, vigencia, id_parcela, id_profundidad, id_proyecto, id_ubicacion) FROM stdin;
    public          postgres    false    225   X                0    41851    dato_recolectado 
   TABLE DATA           i   COPY public.dato_recolectado (id_dato_recolectado, valor, vigencia, id_dataset, id_variable) FROM stdin;
    public          postgres    false    227   /X                0    41857    director_area_investigacion 
   TABLE DATA           �   COPY public.director_area_investigacion (id_area_investigacion, id_usuario, fecha_actualizacion, fecha_creacion, vigencia) FROM stdin;
    public          postgres    false    228   LX                0    41862    equivalencia_variable 
   TABLE DATA           r   COPY public.equivalencia_variable (codigo_variable_espoch, codigo_variable_organizacion, id_variable) FROM stdin;
    public          postgres    false    229   iX                0    41870    estado_muestra 
   TABLE DATA           R   COPY public.estado_muestra (id_estado_muestra, nombre_estado_muestra) FROM stdin;
    public          postgres    false    231   �X                 0    41877    estado_proyecto_investigacion 
   TABLE DATA           c   COPY public.estado_proyecto_investigacion (id_estado_proyecto, nombre_estado_proyecto) FROM stdin;
    public          postgres    false    233   �X      "          0    41884    estado_solicitud_actualizar 
   TABLE DATA           c   COPY public.estado_solicitud_actualizar (id_estado_solicitud, nombre_estado_solicitud) FROM stdin;
    public          postgres    false    235   �X      $          0    41891    estado_solicitud_descarga 
   TABLE DATA           _   COPY public.estado_solicitud_descarga (id_estado_descarga, nombre_estado_descarga) FROM stdin;
    public          postgres    false    237   �X      %          0    41897    grupo_investigacion 
   TABLE DATA           u   COPY public.grupo_investigacion (id_proyecto, id_usuario, fecha_actualizacion, fecha_creacion, vigencia) FROM stdin;
    public          postgres    false    238   �X      '          0    41903    informacion_ecoandes 
   TABLE DATA           �   COPY public.informacion_ecoandes (id_informacion_eco_andes, condiciones_uso, derechos_reservados, descripcion, fecha_creacion, licencia_uso, vigencia, id_usuario) FROM stdin;
    public          postgres    false    240   Y      )          0    41912    medida 
   TABLE DATA           J   COPY public.medida (id_medida, descripcion, unidad, vigencia) FROM stdin;
    public          postgres    false    242   4Y      +          0    41921    muestra 
   TABLE DATA           �   COPY public.muestra (id_muestra, carbono, ce30, mo30, mo60, p30, ph30, estado_muestra_id_estado_muestra, parcela_muestra_id_parcela_muestra, profundidad_muestra_id_profundidad, proyecto_investigacion_id_proyecto) FROM stdin;
    public          postgres    false    244   QY      -          0    41928    parcela 
   TABLE DATA           v   COPY public.parcela (id_parcela, coordenadax, coordenaday, sistema_coordenada, vigencia, id_conglomerado) FROM stdin;
    public          postgres    false    246   nY      /          0    41935    parcela_muestra 
   TABLE DATA           �   COPY public.parcela_muestra (id_parcela_muestra, altitud, latitud, longitud, conglomerado_muestra_id_conglomerado_muestra) FROM stdin;
    public          postgres    false    248   �Y      1          0    41944    profundidad 
   TABLE DATA           p   COPY public.profundidad (id_profundidad, produnidad_inicial, profunidad_final, vigencia, id_medida) FROM stdin;
    public          postgres    false    250   �Y      2          0    41950    profundidad_parcela 
   TABLE DATA           I   COPY public.profundidad_parcela (id_parcela, id_profundidad) FROM stdin;
    public          postgres    false    251   �Y      4          0    41956    proyecto_investigacion 
   TABLE DATA           �   COPY public.proyecto_investigacion (id_proyecto, descripcion, fecha_actualizacion, fecha_creacion, fecha_fin, fecha_inicio, nombre_proyecto, vigencia, id_area_investigacion, id_estado_proyecto) FROM stdin;
    public          postgres    false    253   �Y      6          0    41965    respuesta_solicitud_actualizar 
   TABLE DATA           �   COPY public.respuesta_solicitud_actualizar (id_respuesta_actualizar, fecha_respuesta, respuesta, id_solicitud_actualizar) FROM stdin;
    public          postgres    false    255   �Y      8          0    41972    respuesta_solicitud_descarga 
   TABLE DATA           �   COPY public.respuesta_solicitud_descarga (id_respuesta_descarga, fecha_respuesta, respuesta, id_solicitud_descarga) FROM stdin;
    public          postgres    false    257   Z      :          0    41979    rol 
   TABLE DATA           1   COPY public.rol (id_rol, nombre_rol) FROM stdin;
    public          postgres    false    259   9Z      <          0    41986    solicitud_actualizar_dato 
   TABLE DATA           �   COPY public.solicitud_actualizar_dato (id_solicitud_actualizar, apellido, fecha_envio_solicitud, investigacion, motivo, nombre, id_dato_recolectado, id_estado_solictud_actualizar) FROM stdin;
    public          postgres    false    261   VZ      >          0    41995    solicitud_actualizar_muestra 
   TABLE DATA           �   COPY public.solicitud_actualizar_muestra (id_solicitud_actualizar, apellido, fecha, investigacion, motivo, nombre, respuesta, estado_solicitud_actualizar_id_estado_solicitud, muestra_id_muestra) FROM stdin;
    public          postgres    false    263   sZ      @          0    42004    solicitud_descarga 
   TABLE DATA           �   COPY public.solicitud_descarga (id_solicitud_descarga, apellido, emial, fecha_envio_solicitud, institucion, motivo, nombre, id_estado_descarga, id_proyecto) FROM stdin;
    public          postgres    false    265   �Z      B          0    42013 	   ubicacion 
   TABLE DATA           �   COPY public.ubicacion (id_ubicacion, codigo_canton, codigo_pais, codigo_parroquia, codigo_provincia, nombre_canton, nombre_pais, nombre_parroquia, nombre_provincia) FROM stdin;
    public          postgres    false    267   �Z      D          0    42022    usuario 
   TABLE DATA           �   COPY public.usuario (id_usuario, apellido_usuario, cedula, contrasenia, email, fecha_actualizacion, fecha_creacion, imagen_perfil, nombre_usuario, telefono, vigencia, id_rol) FROM stdin;
    public          postgres    false    269   �Z      F          0    42031    variable 
   TABLE DATA           @   COPY public.variable (id_variable, mombre_variable) FROM stdin;
    public          postgres    false    271   �Z      H          0    42038 	   visitante 
   TABLE DATA           2   COPY public.visitante (id, fecha, ip) FROM stdin;
    public          postgres    false    273   [      j           0    0    acceso_id_acceso_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.acceso_id_acceso_seq', 1, false);
          public          postgres    false    214            k           0    0 ,   area_investigacion_id_area_investigacion_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.area_investigacion_id_area_investigacion_seq', 1, false);
          public          postgres    false    216            l           0    0     conglomerado_id_conglomerado_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.conglomerado_id_conglomerado_seq', 1, false);
          public          postgres    false    220            m           0    0 0   conglomerado_muestra_id_conglomerado_muestra_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.conglomerado_muestra_id_conglomerado_muestra_seq', 1, false);
          public          postgres    false    222            n           0    0    dataset_id_dataset_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.dataset_id_dataset_seq', 1, false);
          public          postgres    false    224            o           0    0 (   dato_recolectado_id_dato_recolectado_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.dato_recolectado_id_dato_recolectado_seq', 1, false);
          public          postgres    false    226            p           0    0 $   estado_muestra_id_estado_muestra_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.estado_muestra_id_estado_muestra_seq', 1, false);
          public          postgres    false    230            q           0    0 4   estado_proyecto_investigacion_id_estado_proyecto_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.estado_proyecto_investigacion_id_estado_proyecto_seq', 1, false);
          public          postgres    false    232            r           0    0 3   estado_solicitud_actualizar_id_estado_solicitud_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.estado_solicitud_actualizar_id_estado_solicitud_seq', 1, false);
          public          postgres    false    234            s           0    0 0   estado_solicitud_descarga_id_estado_descarga_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.estado_solicitud_descarga_id_estado_descarga_seq', 1, false);
          public          postgres    false    236            t           0    0 1   informacion_ecoandes_id_informacion_eco_andes_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.informacion_ecoandes_id_informacion_eco_andes_seq', 1, false);
          public          postgres    false    239            u           0    0    medida_id_medida_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.medida_id_medida_seq', 1, false);
          public          postgres    false    241            v           0    0    muestra_id_muestra_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.muestra_id_muestra_seq', 1, false);
          public          postgres    false    243            w           0    0    parcela_id_parcela_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.parcela_id_parcela_seq', 1, false);
          public          postgres    false    245            x           0    0 &   parcela_muestra_id_parcela_muestra_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.parcela_muestra_id_parcela_muestra_seq', 1, false);
          public          postgres    false    247            y           0    0    profundidad_id_profundidad_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.profundidad_id_profundidad_seq', 1, false);
          public          postgres    false    249            z           0    0 &   proyecto_investigacion_id_proyecto_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.proyecto_investigacion_id_proyecto_seq', 1, false);
          public          postgres    false    252            {           0    0 :   respuesta_solicitud_actualizar_id_respuesta_actualizar_seq    SEQUENCE SET     i   SELECT pg_catalog.setval('public.respuesta_solicitud_actualizar_id_respuesta_actualizar_seq', 1, false);
          public          postgres    false    254            |           0    0 6   respuesta_solicitud_descarga_id_respuesta_descarga_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('public.respuesta_solicitud_descarga_id_respuesta_descarga_seq', 1, false);
          public          postgres    false    256            }           0    0    rol_id_rol_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.rol_id_rol_seq', 1, false);
          public          postgres    false    258            ~           0    0 5   solicitud_actualizar_dato_id_solicitud_actualizar_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.solicitud_actualizar_dato_id_solicitud_actualizar_seq', 1, false);
          public          postgres    false    260                       0    0 8   solicitud_actualizar_muestra_id_solicitud_actualizar_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('public.solicitud_actualizar_muestra_id_solicitud_actualizar_seq', 1, false);
          public          postgres    false    262            �           0    0 ,   solicitud_descarga_id_solicitud_descarga_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.solicitud_descarga_id_solicitud_descarga_seq', 1, false);
          public          postgres    false    264            �           0    0    ubicacion_id_ubicacion_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.ubicacion_id_ubicacion_seq', 1, false);
          public          postgres    false    266            �           0    0    usuario_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, false);
          public          postgres    false    268            �           0    0    variable_id_variable_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.variable_id_variable_seq', 1, false);
          public          postgres    false    270            �           0    0    visitante_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.visitante_id_seq', 1, false);
          public          postgres    false    272                       2606    41801    acceso acceso_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.acceso
    ADD CONSTRAINT acceso_pkey PRIMARY KEY (id_acceso);
 <   ALTER TABLE ONLY public.acceso DROP CONSTRAINT acceso_pkey;
       public            postgres    false    215                       2606    41810 *   area_investigacion area_investigacion_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.area_investigacion
    ADD CONSTRAINT area_investigacion_pkey PRIMARY KEY (id_area_investigacion);
 T   ALTER TABLE ONLY public.area_investigacion DROP CONSTRAINT area_investigacion_pkey;
       public            postgres    false    217                       2606    41817 $   catalogo_espoch catalogo_espoch_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.catalogo_espoch
    ADD CONSTRAINT catalogo_espoch_pkey PRIMARY KEY (codigo_variable_espoch);
 N   ALTER TABLE ONLY public.catalogo_espoch DROP CONSTRAINT catalogo_espoch_pkey;
       public            postgres    false    218            !           2606    41824 0   catalogo_organizacion catalogo_organizacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalogo_organizacion
    ADD CONSTRAINT catalogo_organizacion_pkey PRIMARY KEY (codigo_variable_organizacion);
 Z   ALTER TABLE ONLY public.catalogo_organizacion DROP CONSTRAINT catalogo_organizacion_pkey;
       public            postgres    false    219            %           2606    41842 .   conglomerado_muestra conglomerado_muestra_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.conglomerado_muestra
    ADD CONSTRAINT conglomerado_muestra_pkey PRIMARY KEY (id_conglomerado_muestra);
 X   ALTER TABLE ONLY public.conglomerado_muestra DROP CONSTRAINT conglomerado_muestra_pkey;
       public            postgres    false    223            #           2606    41833    conglomerado conglomerado_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.conglomerado
    ADD CONSTRAINT conglomerado_pkey PRIMARY KEY (id_conglomerado);
 H   ALTER TABLE ONLY public.conglomerado DROP CONSTRAINT conglomerado_pkey;
       public            postgres    false    221            '           2606    41849    dataset dataset_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT dataset_pkey PRIMARY KEY (id_dataset);
 >   ALTER TABLE ONLY public.dataset DROP CONSTRAINT dataset_pkey;
       public            postgres    false    225            )           2606    41856 &   dato_recolectado dato_recolectado_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.dato_recolectado
    ADD CONSTRAINT dato_recolectado_pkey PRIMARY KEY (id_dato_recolectado);
 P   ALTER TABLE ONLY public.dato_recolectado DROP CONSTRAINT dato_recolectado_pkey;
       public            postgres    false    227            +           2606    41861 <   director_area_investigacion director_area_investigacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.director_area_investigacion
    ADD CONSTRAINT director_area_investigacion_pkey PRIMARY KEY (id_area_investigacion, id_usuario);
 f   ALTER TABLE ONLY public.director_area_investigacion DROP CONSTRAINT director_area_investigacion_pkey;
       public            postgres    false    228    228            -           2606    41868 0   equivalencia_variable equivalencia_variable_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.equivalencia_variable
    ADD CONSTRAINT equivalencia_variable_pkey PRIMARY KEY (codigo_variable_espoch, codigo_variable_organizacion, id_variable);
 Z   ALTER TABLE ONLY public.equivalencia_variable DROP CONSTRAINT equivalencia_variable_pkey;
       public            postgres    false    229    229    229            /           2606    41875 "   estado_muestra estado_muestra_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.estado_muestra
    ADD CONSTRAINT estado_muestra_pkey PRIMARY KEY (id_estado_muestra);
 L   ALTER TABLE ONLY public.estado_muestra DROP CONSTRAINT estado_muestra_pkey;
       public            postgres    false    231            1           2606    41882 @   estado_proyecto_investigacion estado_proyecto_investigacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.estado_proyecto_investigacion
    ADD CONSTRAINT estado_proyecto_investigacion_pkey PRIMARY KEY (id_estado_proyecto);
 j   ALTER TABLE ONLY public.estado_proyecto_investigacion DROP CONSTRAINT estado_proyecto_investigacion_pkey;
       public            postgres    false    233            3           2606    41889 <   estado_solicitud_actualizar estado_solicitud_actualizar_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.estado_solicitud_actualizar
    ADD CONSTRAINT estado_solicitud_actualizar_pkey PRIMARY KEY (id_estado_solicitud);
 f   ALTER TABLE ONLY public.estado_solicitud_actualizar DROP CONSTRAINT estado_solicitud_actualizar_pkey;
       public            postgres    false    235            5           2606    41896 8   estado_solicitud_descarga estado_solicitud_descarga_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.estado_solicitud_descarga
    ADD CONSTRAINT estado_solicitud_descarga_pkey PRIMARY KEY (id_estado_descarga);
 b   ALTER TABLE ONLY public.estado_solicitud_descarga DROP CONSTRAINT estado_solicitud_descarga_pkey;
       public            postgres    false    237            7           2606    41901 ,   grupo_investigacion grupo_investigacion_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.grupo_investigacion
    ADD CONSTRAINT grupo_investigacion_pkey PRIMARY KEY (id_proyecto, id_usuario);
 V   ALTER TABLE ONLY public.grupo_investigacion DROP CONSTRAINT grupo_investigacion_pkey;
       public            postgres    false    238    238            9           2606    41910 .   informacion_ecoandes informacion_ecoandes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.informacion_ecoandes
    ADD CONSTRAINT informacion_ecoandes_pkey PRIMARY KEY (id_informacion_eco_andes);
 X   ALTER TABLE ONLY public.informacion_ecoandes DROP CONSTRAINT informacion_ecoandes_pkey;
       public            postgres    false    240            ;           2606    41919    medida medida_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.medida
    ADD CONSTRAINT medida_pkey PRIMARY KEY (id_medida);
 <   ALTER TABLE ONLY public.medida DROP CONSTRAINT medida_pkey;
       public            postgres    false    242            =           2606    41926    muestra muestra_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.muestra
    ADD CONSTRAINT muestra_pkey PRIMARY KEY (id_muestra);
 >   ALTER TABLE ONLY public.muestra DROP CONSTRAINT muestra_pkey;
       public            postgres    false    244            A           2606    41942 $   parcela_muestra parcela_muestra_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.parcela_muestra
    ADD CONSTRAINT parcela_muestra_pkey PRIMARY KEY (id_parcela_muestra);
 N   ALTER TABLE ONLY public.parcela_muestra DROP CONSTRAINT parcela_muestra_pkey;
       public            postgres    false    248            ?           2606    41933    parcela parcela_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.parcela
    ADD CONSTRAINT parcela_pkey PRIMARY KEY (id_parcela);
 >   ALTER TABLE ONLY public.parcela DROP CONSTRAINT parcela_pkey;
       public            postgres    false    246            E           2606    41954 ,   profundidad_parcela profundidad_parcela_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.profundidad_parcela
    ADD CONSTRAINT profundidad_parcela_pkey PRIMARY KEY (id_parcela, id_profundidad);
 V   ALTER TABLE ONLY public.profundidad_parcela DROP CONSTRAINT profundidad_parcela_pkey;
       public            postgres    false    251    251            C           2606    41949    profundidad profundidad_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.profundidad
    ADD CONSTRAINT profundidad_pkey PRIMARY KEY (id_profundidad);
 F   ALTER TABLE ONLY public.profundidad DROP CONSTRAINT profundidad_pkey;
       public            postgres    false    250            G           2606    41963 2   proyecto_investigacion proyecto_investigacion_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.proyecto_investigacion
    ADD CONSTRAINT proyecto_investigacion_pkey PRIMARY KEY (id_proyecto);
 \   ALTER TABLE ONLY public.proyecto_investigacion DROP CONSTRAINT proyecto_investigacion_pkey;
       public            postgres    false    253            I           2606    41970 B   respuesta_solicitud_actualizar respuesta_solicitud_actualizar_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.respuesta_solicitud_actualizar
    ADD CONSTRAINT respuesta_solicitud_actualizar_pkey PRIMARY KEY (id_respuesta_actualizar);
 l   ALTER TABLE ONLY public.respuesta_solicitud_actualizar DROP CONSTRAINT respuesta_solicitud_actualizar_pkey;
       public            postgres    false    255            K           2606    41977 >   respuesta_solicitud_descarga respuesta_solicitud_descarga_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.respuesta_solicitud_descarga
    ADD CONSTRAINT respuesta_solicitud_descarga_pkey PRIMARY KEY (id_respuesta_descarga);
 h   ALTER TABLE ONLY public.respuesta_solicitud_descarga DROP CONSTRAINT respuesta_solicitud_descarga_pkey;
       public            postgres    false    257            M           2606    41984    rol rol_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id_rol);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    259            O           2606    41993 8   solicitud_actualizar_dato solicitud_actualizar_dato_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_actualizar_dato
    ADD CONSTRAINT solicitud_actualizar_dato_pkey PRIMARY KEY (id_solicitud_actualizar);
 b   ALTER TABLE ONLY public.solicitud_actualizar_dato DROP CONSTRAINT solicitud_actualizar_dato_pkey;
       public            postgres    false    261            Q           2606    42002 >   solicitud_actualizar_muestra solicitud_actualizar_muestra_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_actualizar_muestra
    ADD CONSTRAINT solicitud_actualizar_muestra_pkey PRIMARY KEY (id_solicitud_actualizar);
 h   ALTER TABLE ONLY public.solicitud_actualizar_muestra DROP CONSTRAINT solicitud_actualizar_muestra_pkey;
       public            postgres    false    263            S           2606    42011 *   solicitud_descarga solicitud_descarga_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.solicitud_descarga
    ADD CONSTRAINT solicitud_descarga_pkey PRIMARY KEY (id_solicitud_descarga);
 T   ALTER TABLE ONLY public.solicitud_descarga DROP CONSTRAINT solicitud_descarga_pkey;
       public            postgres    false    265            U           2606    42020    ubicacion ubicacion_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ubicacion
    ADD CONSTRAINT ubicacion_pkey PRIMARY KEY (id_ubicacion);
 B   ALTER TABLE ONLY public.ubicacion DROP CONSTRAINT ubicacion_pkey;
       public            postgres    false    267            W           2606    42029    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    269            Y           2606    42036    variable variable_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.variable
    ADD CONSTRAINT variable_pkey PRIMARY KEY (id_variable);
 @   ALTER TABLE ONLY public.variable DROP CONSTRAINT variable_pkey;
       public            postgres    false    271            [           2606    42043    visitante visitante_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.visitante
    ADD CONSTRAINT visitante_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.visitante DROP CONSTRAINT visitante_pkey;
       public            postgres    false    273            k           2606    42129 #   muestra fk328p22ylo0wlvrd6ta7buyx75    FK CONSTRAINT     �   ALTER TABLE ONLY public.muestra
    ADD CONSTRAINT fk328p22ylo0wlvrd6ta7buyx75 FOREIGN KEY (profundidad_muestra_id_profundidad) REFERENCES public.profundidad(id_profundidad);
 M   ALTER TABLE ONLY public.muestra DROP CONSTRAINT fk328p22ylo0wlvrd6ta7buyx75;
       public          postgres    false    244    250    3395            o           2606    42139 #   parcela fk3sxtv88itopms57bw4h88u3dk    FK CONSTRAINT     �   ALTER TABLE ONLY public.parcela
    ADD CONSTRAINT fk3sxtv88itopms57bw4h88u3dk FOREIGN KEY (id_conglomerado) REFERENCES public.conglomerado(id_conglomerado);
 M   ALTER TABLE ONLY public.parcela DROP CONSTRAINT fk3sxtv88itopms57bw4h88u3dk;
       public          postgres    false    221    246    3363            ]           2606    42049 +   catalogo_espoch fk49ygh9yfcp2jm5mnruw6m70ta    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogo_espoch
    ADD CONSTRAINT fk49ygh9yfcp2jm5mnruw6m70ta FOREIGN KEY (id_proyecto) REFERENCES public.proyecto_investigacion(id_proyecto);
 U   ALTER TABLE ONLY public.catalogo_espoch DROP CONSTRAINT fk49ygh9yfcp2jm5mnruw6m70ta;
       public          postgres    false    218    3399    253            r           2606    42154 /   profundidad_parcela fk58c776i9u8pvpvjk3uvpn1e1t    FK CONSTRAINT     �   ALTER TABLE ONLY public.profundidad_parcela
    ADD CONSTRAINT fk58c776i9u8pvpvjk3uvpn1e1t FOREIGN KEY (id_parcela) REFERENCES public.parcela(id_parcela);
 Y   ALTER TABLE ONLY public.profundidad_parcela DROP CONSTRAINT fk58c776i9u8pvpvjk3uvpn1e1t;
       public          postgres    false    3391    251    246            x           2606    42184 5   solicitud_actualizar_dato fk6msp3iwmorr0jixd8uktceuml    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_actualizar_dato
    ADD CONSTRAINT fk6msp3iwmorr0jixd8uktceuml FOREIGN KEY (id_dato_recolectado) REFERENCES public.dato_recolectado(id_dato_recolectado);
 _   ALTER TABLE ONLY public.solicitud_actualizar_dato DROP CONSTRAINT fk6msp3iwmorr0jixd8uktceuml;
       public          postgres    false    3369    227    261            e           2606    42094 1   equivalencia_variable fk6t9av6oppa5ay6l58klv8ax4a    FK CONSTRAINT     �   ALTER TABLE ONLY public.equivalencia_variable
    ADD CONSTRAINT fk6t9av6oppa5ay6l58klv8ax4a FOREIGN KEY (codigo_variable_organizacion) REFERENCES public.catalogo_organizacion(codigo_variable_organizacion);
 [   ALTER TABLE ONLY public.equivalencia_variable DROP CONSTRAINT fk6t9av6oppa5ay6l58klv8ax4a;
       public          postgres    false    219    3361    229            a           2606    42069 ,   dato_recolectado fk6w901w54nmcuw1yvxv2kqcjb9    FK CONSTRAINT     �   ALTER TABLE ONLY public.dato_recolectado
    ADD CONSTRAINT fk6w901w54nmcuw1yvxv2kqcjb9 FOREIGN KEY (id_dataset) REFERENCES public.dataset(id_dataset);
 V   ALTER TABLE ONLY public.dato_recolectado DROP CONSTRAINT fk6w901w54nmcuw1yvxv2kqcjb9;
       public          postgres    false    3367    227    225            ^           2606    42064 #   dataset fk9kufeir04etwdggsgp2ub44wg    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fk9kufeir04etwdggsgp2ub44wg FOREIGN KEY (id_ubicacion) REFERENCES public.ubicacion(id_ubicacion);
 M   ALTER TABLE ONLY public.dataset DROP CONSTRAINT fk9kufeir04etwdggsgp2ub44wg;
       public          postgres    false    267    225    3413            |           2606    42209 .   solicitud_descarga fka7jr2q5pks6a98qhl8kgwtfcd    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_descarga
    ADD CONSTRAINT fka7jr2q5pks6a98qhl8kgwtfcd FOREIGN KEY (id_proyecto) REFERENCES public.proyecto_investigacion(id_proyecto);
 X   ALTER TABLE ONLY public.solicitud_descarga DROP CONSTRAINT fka7jr2q5pks6a98qhl8kgwtfcd;
       public          postgres    false    253    3399    265            t           2606    42169 2   proyecto_investigacion fkaaedc8johj43ghkynyytetxch    FK CONSTRAINT     �   ALTER TABLE ONLY public.proyecto_investigacion
    ADD CONSTRAINT fkaaedc8johj43ghkynyytetxch FOREIGN KEY (id_estado_proyecto) REFERENCES public.estado_proyecto_investigacion(id_estado_proyecto);
 \   ALTER TABLE ONLY public.proyecto_investigacion DROP CONSTRAINT fkaaedc8johj43ghkynyytetxch;
       public          postgres    false    233    253    3377            _           2606    42054 "   dataset fkaem3hlqto13d5jk1h5lci61q    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fkaem3hlqto13d5jk1h5lci61q FOREIGN KEY (id_parcela, id_profundidad) REFERENCES public.profundidad_parcela(id_parcela, id_profundidad);
 L   ALTER TABLE ONLY public.dataset DROP CONSTRAINT fkaem3hlqto13d5jk1h5lci61q;
       public          postgres    false    225    3397    251    251    225            f           2606    42099 1   equivalencia_variable fkblv2cxr6okie9r18ifi3m6t25    FK CONSTRAINT     �   ALTER TABLE ONLY public.equivalencia_variable
    ADD CONSTRAINT fkblv2cxr6okie9r18ifi3m6t25 FOREIGN KEY (id_variable) REFERENCES public.variable(id_variable);
 [   ALTER TABLE ONLY public.equivalencia_variable DROP CONSTRAINT fkblv2cxr6okie9r18ifi3m6t25;
       public          postgres    false    229    3417    271            z           2606    42194 8   solicitud_actualizar_muestra fkcbltujwdfxq9iun2dgu17qq72    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_actualizar_muestra
    ADD CONSTRAINT fkcbltujwdfxq9iun2dgu17qq72 FOREIGN KEY (estado_solicitud_actualizar_id_estado_solicitud) REFERENCES public.estado_solicitud_actualizar(id_estado_solicitud);
 b   ALTER TABLE ONLY public.solicitud_actualizar_muestra DROP CONSTRAINT fkcbltujwdfxq9iun2dgu17qq72;
       public          postgres    false    3379    263    235            h           2606    42104 .   grupo_investigacion fkd4e2cjq8vffof7in15e08bi0    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupo_investigacion
    ADD CONSTRAINT fkd4e2cjq8vffof7in15e08bi0 FOREIGN KEY (id_proyecto) REFERENCES public.proyecto_investigacion(id_proyecto);
 X   ALTER TABLE ONLY public.grupo_investigacion DROP CONSTRAINT fkd4e2cjq8vffof7in15e08bi0;
       public          postgres    false    3399    253    238            \           2606    42044 "   acceso fkeanl452s8sc81h20b187ldn00    FK CONSTRAINT     �   ALTER TABLE ONLY public.acceso
    ADD CONSTRAINT fkeanl452s8sc81h20b187ldn00 FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 L   ALTER TABLE ONLY public.acceso DROP CONSTRAINT fkeanl452s8sc81h20b187ldn00;
       public          postgres    false    269    215    3415            l           2606    42134 #   muestra fkesmjswv9wl152a6cktb5b512c    FK CONSTRAINT     �   ALTER TABLE ONLY public.muestra
    ADD CONSTRAINT fkesmjswv9wl152a6cktb5b512c FOREIGN KEY (proyecto_investigacion_id_proyecto) REFERENCES public.proyecto_investigacion(id_proyecto);
 M   ALTER TABLE ONLY public.muestra DROP CONSTRAINT fkesmjswv9wl152a6cktb5b512c;
       public          postgres    false    3399    244    253            }           2606    42204 .   solicitud_descarga fkewb0cu2heidbd4bfmsljkamqu    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_descarga
    ADD CONSTRAINT fkewb0cu2heidbd4bfmsljkamqu FOREIGN KEY (id_estado_descarga) REFERENCES public.estado_solicitud_descarga(id_estado_descarga);
 X   ALTER TABLE ONLY public.solicitud_descarga DROP CONSTRAINT fkewb0cu2heidbd4bfmsljkamqu;
       public          postgres    false    3381    265    237            y           2606    42189 5   solicitud_actualizar_dato fkfeucq19ksrcf6b0833fno2wn1    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_actualizar_dato
    ADD CONSTRAINT fkfeucq19ksrcf6b0833fno2wn1 FOREIGN KEY (id_estado_solictud_actualizar) REFERENCES public.estado_solicitud_actualizar(id_estado_solicitud);
 _   ALTER TABLE ONLY public.solicitud_actualizar_dato DROP CONSTRAINT fkfeucq19ksrcf6b0833fno2wn1;
       public          postgres    false    261    235    3379            u           2606    42164 2   proyecto_investigacion fkfgejelsddsvy1pa13xm1gnd8u    FK CONSTRAINT     �   ALTER TABLE ONLY public.proyecto_investigacion
    ADD CONSTRAINT fkfgejelsddsvy1pa13xm1gnd8u FOREIGN KEY (id_area_investigacion) REFERENCES public.area_investigacion(id_area_investigacion);
 \   ALTER TABLE ONLY public.proyecto_investigacion DROP CONSTRAINT fkfgejelsddsvy1pa13xm1gnd8u;
       public          postgres    false    217    253    3357            m           2606    42124 #   muestra fkfgkvneib0hvo6ucyw1labf8kd    FK CONSTRAINT     �   ALTER TABLE ONLY public.muestra
    ADD CONSTRAINT fkfgkvneib0hvo6ucyw1labf8kd FOREIGN KEY (parcela_muestra_id_parcela_muestra) REFERENCES public.parcela_muestra(id_parcela_muestra);
 M   ALTER TABLE ONLY public.muestra DROP CONSTRAINT fkfgkvneib0hvo6ucyw1labf8kd;
       public          postgres    false    244    3393    248            w           2606    42179 8   respuesta_solicitud_descarga fkg59ps3tryg3wtlnkcrokm7qi0    FK CONSTRAINT     �   ALTER TABLE ONLY public.respuesta_solicitud_descarga
    ADD CONSTRAINT fkg59ps3tryg3wtlnkcrokm7qi0 FOREIGN KEY (id_solicitud_descarga) REFERENCES public.solicitud_descarga(id_solicitud_descarga);
 b   ALTER TABLE ONLY public.respuesta_solicitud_descarga DROP CONSTRAINT fkg59ps3tryg3wtlnkcrokm7qi0;
       public          postgres    false    3411    257    265            s           2606    42159 /   profundidad_parcela fkg6e7mi8orsbi23b8bd9dkoq1t    FK CONSTRAINT     �   ALTER TABLE ONLY public.profundidad_parcela
    ADD CONSTRAINT fkg6e7mi8orsbi23b8bd9dkoq1t FOREIGN KEY (id_profundidad) REFERENCES public.profundidad(id_profundidad);
 Y   ALTER TABLE ONLY public.profundidad_parcela DROP CONSTRAINT fkg6e7mi8orsbi23b8bd9dkoq1t;
       public          postgres    false    250    251    3395            b           2606    42074 ,   dato_recolectado fkiym6frc8ayluj3i20j0mbumnj    FK CONSTRAINT     �   ALTER TABLE ONLY public.dato_recolectado
    ADD CONSTRAINT fkiym6frc8ayluj3i20j0mbumnj FOREIGN KEY (id_variable) REFERENCES public.variable(id_variable);
 V   ALTER TABLE ONLY public.dato_recolectado DROP CONSTRAINT fkiym6frc8ayluj3i20j0mbumnj;
       public          postgres    false    271    3417    227            n           2606    42119 #   muestra fkjbb7246kh3aq5gegxgmburm89    FK CONSTRAINT     �   ALTER TABLE ONLY public.muestra
    ADD CONSTRAINT fkjbb7246kh3aq5gegxgmburm89 FOREIGN KEY (estado_muestra_id_estado_muestra) REFERENCES public.estado_muestra(id_estado_muestra);
 M   ALTER TABLE ONLY public.muestra DROP CONSTRAINT fkjbb7246kh3aq5gegxgmburm89;
       public          postgres    false    231    3375    244            g           2606    42089 1   equivalencia_variable fkl75blpq9l9502a7yqj4csyabr    FK CONSTRAINT     �   ALTER TABLE ONLY public.equivalencia_variable
    ADD CONSTRAINT fkl75blpq9l9502a7yqj4csyabr FOREIGN KEY (codigo_variable_espoch) REFERENCES public.catalogo_espoch(codigo_variable_espoch);
 [   ALTER TABLE ONLY public.equivalencia_variable DROP CONSTRAINT fkl75blpq9l9502a7yqj4csyabr;
       public          postgres    false    3359    229    218            i           2606    42109 /   grupo_investigacion fklnonp0jj82x9a6xd5wvl26d8w    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupo_investigacion
    ADD CONSTRAINT fklnonp0jj82x9a6xd5wvl26d8w FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 Y   ALTER TABLE ONLY public.grupo_investigacion DROP CONSTRAINT fklnonp0jj82x9a6xd5wvl26d8w;
       public          postgres    false    238    269    3415            c           2606    42079 7   director_area_investigacion fkmn8pboaglbikfbv6j4taa8cr1    FK CONSTRAINT     �   ALTER TABLE ONLY public.director_area_investigacion
    ADD CONSTRAINT fkmn8pboaglbikfbv6j4taa8cr1 FOREIGN KEY (id_area_investigacion) REFERENCES public.area_investigacion(id_area_investigacion);
 a   ALTER TABLE ONLY public.director_area_investigacion DROP CONSTRAINT fkmn8pboaglbikfbv6j4taa8cr1;
       public          postgres    false    217    3357    228            p           2606    42144 +   parcela_muestra fkmy0iq2vwt7fh1x2ui4xxvci3k    FK CONSTRAINT     �   ALTER TABLE ONLY public.parcela_muestra
    ADD CONSTRAINT fkmy0iq2vwt7fh1x2ui4xxvci3k FOREIGN KEY (conglomerado_muestra_id_conglomerado_muestra) REFERENCES public.conglomerado_muestra(id_conglomerado_muestra);
 U   ALTER TABLE ONLY public.parcela_muestra DROP CONSTRAINT fkmy0iq2vwt7fh1x2ui4xxvci3k;
       public          postgres    false    3365    248    223            ~           2606    42214 #   usuario fkmyv3138vvci6kaq3y5kt4cntu    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fkmyv3138vvci6kaq3y5kt4cntu FOREIGN KEY (id_rol) REFERENCES public.rol(id_rol);
 M   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fkmyv3138vvci6kaq3y5kt4cntu;
       public          postgres    false    269    3405    259            `           2606    42059 #   dataset fknfafxlcwa4rdmpa5e10al7lxy    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fknfafxlcwa4rdmpa5e10al7lxy FOREIGN KEY (id_proyecto) REFERENCES public.proyecto_investigacion(id_proyecto);
 M   ALTER TABLE ONLY public.dataset DROP CONSTRAINT fknfafxlcwa4rdmpa5e10al7lxy;
       public          postgres    false    253    225    3399            v           2606    42174 :   respuesta_solicitud_actualizar fknjfg2vemjnd5ayosq9jcrtk10    FK CONSTRAINT     �   ALTER TABLE ONLY public.respuesta_solicitud_actualizar
    ADD CONSTRAINT fknjfg2vemjnd5ayosq9jcrtk10 FOREIGN KEY (id_solicitud_actualizar) REFERENCES public.solicitud_actualizar_dato(id_solicitud_actualizar);
 d   ALTER TABLE ONLY public.respuesta_solicitud_actualizar DROP CONSTRAINT fknjfg2vemjnd5ayosq9jcrtk10;
       public          postgres    false    3407    261    255            {           2606    42199 8   solicitud_actualizar_muestra fkoi3cvvlfsew7adgns5po0kd4j    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_actualizar_muestra
    ADD CONSTRAINT fkoi3cvvlfsew7adgns5po0kd4j FOREIGN KEY (muestra_id_muestra) REFERENCES public.muestra(id_muestra);
 b   ALTER TABLE ONLY public.solicitud_actualizar_muestra DROP CONSTRAINT fkoi3cvvlfsew7adgns5po0kd4j;
       public          postgres    false    263    244    3389            j           2606    42114 0   informacion_ecoandes fkp2r9vevj0fuvj06gsxvqwugsq    FK CONSTRAINT     �   ALTER TABLE ONLY public.informacion_ecoandes
    ADD CONSTRAINT fkp2r9vevj0fuvj06gsxvqwugsq FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 Z   ALTER TABLE ONLY public.informacion_ecoandes DROP CONSTRAINT fkp2r9vevj0fuvj06gsxvqwugsq;
       public          postgres    false    240    269    3415            q           2606    42149 '   profundidad fkp88y6s46wipv732c690meu279    FK CONSTRAINT     �   ALTER TABLE ONLY public.profundidad
    ADD CONSTRAINT fkp88y6s46wipv732c690meu279 FOREIGN KEY (id_medida) REFERENCES public.medida(id_medida);
 Q   ALTER TABLE ONLY public.profundidad DROP CONSTRAINT fkp88y6s46wipv732c690meu279;
       public          postgres    false    3387    250    242            d           2606    42084 7   director_area_investigacion fkpf61m3cn99bxwh6ulw0i3wyxl    FK CONSTRAINT     �   ALTER TABLE ONLY public.director_area_investigacion
    ADD CONSTRAINT fkpf61m3cn99bxwh6ulw0i3wyxl FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 a   ALTER TABLE ONLY public.director_area_investigacion DROP CONSTRAINT fkpf61m3cn99bxwh6ulw0i3wyxl;
       public          postgres    false    228    3415    269                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �             x������ � �      "      x������ � �      $      x������ � �      %      x������ � �      '      x������ � �      )      x������ � �      +      x������ � �      -      x������ � �      /      x������ � �      1      x������ � �      2      x������ � �      4      x������ � �      6      x������ � �      8      x������ � �      :      x������ � �      <      x������ � �      >      x������ � �      @      x������ � �      B      x������ � �      D      x������ � �      F      x������ � �      H      x������ � �     