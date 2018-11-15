\c "api-database";

CREATE SEQUENCE public.seq_user
    INCREMENT 1
    START 1
    MINVALUE 1
;

CREATE TABLE public."user"
(
    user_id serial NOT NULL,
    name character varying NOT NULL,
    PRIMARY KEY (user_id)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public."user"
    OWNER to postgres;

ALTER TABLE ONLY public."user"
    ALTER COLUMN user_id 
    SET DEFAULT nextval('seq_user'::regclass);
