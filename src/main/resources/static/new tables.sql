CREATE TABLE IF NOT EXISTS public.pto_offr_header
(
    ptoid integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    armyno character varying(15) COLLATE pg_catalog."default",
    ptono character varying(15) COLLATE pg_catalog."default" NOT NULL,
    ptodate timestamp(3) without time zone NOT NULL,
    gp character varying(3) COLLATE pg_catalog."default",
    draft character(1) COLLATE pg_catalog."default" NOT NULL DEFAULT 'Y'::bpchar,
    cancel character(1) COLLATE pg_catalog."default" NOT NULL DEFAULT 'N'::bpchar,
    lastptono character varying(15) COLLATE pg_catalog."default",
    lastptodate timestamp(3) without time zone,
    offrlastptono character varying(15) COLLATE pg_catalog."default",
    offrlastptodate timestamp(3) without time zone,
    signatoryid character varying(15) COLLATE pg_catalog."default",
    distributionids character varying(200) COLLATE pg_catalog."default",
    susno character varying(15) COLLATE pg_catalog."default" NOT NULL,
    hierarchyid integer,
    totalcasualties integer DEFAULT 0,
    createdby character varying(15) COLLATE pg_catalog."default",
    createddate timestamp(3) without time zone DEFAULT now(),
    updatedby character varying(15) COLLATE pg_catalog."default",
    updateddate timestamp(3) without time zone,
    actinctby character varying(15) COLLATE pg_catalog."default",
    actinctdate timestamp(3) without time zone,
    isactive boolean NOT NULL DEFAULT true,
    verify integer DEFAULT 0,
    barcode character varying(250) COLLATE pg_catalog."default",
    barcodebinary bytea,
    unitdetails_obsn text COLLATE pg_catalog."default",
    unitname_obsn character varying(100) COLLATE pg_catalog."default",
    address_obsn character varying(100) COLLATE pg_catalog."default",
    servingin_obsn character varying(100) COLLATE pg_catalog."default",
    brigadesubarea_obsn character varying(100) COLLATE pg_catalog."default",
    divarea_obsn character varying(100) COLLATE pg_catalog."default",
    corps_obsn character varying(100) COLLATE pg_catalog."default",
    part2details_obsn text COLLATE pg_catalog."default",
    officerdetails_obsn text COLLATE pg_catalog."default",
    rank_obsn character varying(100) COLLATE pg_catalog."default",
    name_obsn character varying(100) COLLATE pg_catalog."default",
    armservice_obsn character varying(100) COLLATE pg_catalog."default",
    rankcode_obsn character varying(100) COLLATE pg_catalog."default",
    cdaacno_obsn character varying(100) COLLATE pg_catalog."default",
    migratedfmpreunit boolean DEFAULT false,
    migratedfmpreunitdate timestamp(3) without time zone DEFAULT now(),
    subsrankid integer,
    subsrank character varying(60) COLLATE pg_catalog."default",
    actrankid integer,
    actrank character varying(60) COLLATE pg_catalog."default",
    lastverifiedbyauth1_armyno character varying(15) COLLATE pg_catalog."default",
    lastverifiedbyauth1_date timestamp(3) without time zone,
    lastverifiedbyauth2_armyno character varying(15) COLLATE pg_catalog."default",
    lastverifiedbyauth2_date timestamp(3) without time zone,
    publishedby_armyno character varying(15) COLLATE pg_catalog."default",
    publishedby_date timestamp(3) without time zone,
    crc text COLLATE pg_catalog."default",
    issigned boolean NOT NULL DEFAULT false,
    CONSTRAINT pto_offr_header_pkey PRIMARY KEY (ptoid)
);

CREATE TABLE IF NOT EXISTS public.pto_trn_offr
(
    ptoid integer NOT NULL,
    casseqno character varying(4) COLLATE pg_catalog."default" NOT NULL,
    cascode character varying(20) COLLATE pg_catalog."default" NOT NULL,
    fmdate timestamp(3) without time zone,
    todate timestamp(3) without time zone,
    data1 text COLLATE pg_catalog."default",
    data2 text COLLATE pg_catalog."default",
    data3 text COLLATE pg_catalog."default",
    data4 text COLLATE pg_catalog."default",
    rmk1 text COLLATE pg_catalog."default",
    rmk2 text COLLATE pg_catalog."default",
    rmk3 text COLLATE pg_catalog."default",
    rmk4 text COLLATE pg_catalog."default",
    rmk5 text COLLATE pg_catalog."default",
    rmk6 text COLLATE pg_catalog."default",
    rmk7 text COLLATE pg_catalog."default",
    rmk8 text COLLATE pg_catalog."default",
    rmk9 text COLLATE pg_catalog."default",
    rmk10 text COLLATE pg_catalog."default",
    certificate text COLLATE pg_catalog."default",
    authority text COLLATE pg_catalog."default",
    enclosure text COLLATE pg_catalog."default",
    refpto character varying(20) COLLATE pg_catalog."default",
    remark text COLLATE pg_catalog."default",
    cfasancreceived character varying(10) COLLATE pg_catalog."default",
    cfasancletterno character varying(10) COLLATE pg_catalog."default",
    cfasancdt character varying(10) COLLATE pg_catalog."default",
    delayed character varying(3) COLLATE pg_catalog."default",
    observation character(1) COLLATE pg_catalog."default",
    cancelled boolean DEFAULT false,
    stopped integer DEFAULT 0,
    stoppeddate timestamp(3) without time zone,
    parenttxnno bigint,
    txnno bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    obsn_item text COLLATE pg_catalog."default",
    createdby character varying(15) COLLATE pg_catalog."default",
    createddate timestamp(3) without time zone NOT NULL,
    updatedby character varying(15) COLLATE pg_catalog."default",
    updateddate timestamp(3) without time zone,
    actinctby character varying(15) COLLATE pg_catalog."default",
    actinctdate timestamp(3) without time zone,
    isactive boolean NOT NULL DEFAULT true,
    CONSTRAINT pto_trn_offr_pkey PRIMARY KEY (ptoid)
);
