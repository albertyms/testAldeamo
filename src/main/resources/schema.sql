DROP DATABASE IF EXISTS testAldeamo;

CREATE DATABASE testAldeamo
    WITH
    OWNER = postgres
ENCODING = 'UTF8'
TABLESPACE = pg_default
CONNECTION LIMIT = -1;

CREATE SEQUENCE public.arrays_sequence
INCREMENT BY 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1
NO CYCLE;


CREATE TABLE public.arrays (
    id int NOT NULL,
    input_array varchar(20) NOT NULL
) ;

ALTER TABLE public.arrays ALTER COLUMN id SET DEFAULT nextval('arrays_sequence');

ALTER SEQUENCE public.arrays_sequence
OWNER TO postgres;

ALTER TABLE public.arrays
OWNER to postgres;