CREATE DATABASE "Training"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE IF NOT EXISTS public."CrudTest"
(
    "Id" uuid NOT NULL,
    "NameSurname" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "Email" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "Title" character varying(50) COLLATE pg_catalog."default",
    "Phone" character varying(20) COLLATE pg_catalog."default",
    "CreateDate" timestamp without time zone NOT NULL DEFAULT now(),
    "Creator" uuid,
    "IsActive" boolean NOT NULL DEFAULT true,
    CONSTRAINT "CrudTest_pkey" PRIMARY KEY ("Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CrudTest"
    OWNER to postgres;


CREATE TABLE IF NOT EXISTS public."MailLog"
(
    "Id" uuid NOT NULL,
    "UserId" uuid NOT NULL,
    "CreateDate" timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT "MailLogTest_pkey" PRIMARY KEY ("Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."MailLog"
    OWNER to postgres;