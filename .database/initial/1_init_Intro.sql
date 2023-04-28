CREATE SCHEMA portfolio;
ALTER SCHEMA portfolio OWNER TO postgres;

COMMENT ON SCHEMA portfolio
    is 'SCHEMA for data';

/*
	Table definition script for portfolio schema
*/

-- Need this so that we can have columns of type uuid (binary uuid)
create extension "uuid-ossp";

-- Table creation
CREATE TABLE portfolio.intro
(
    introid bigint not null,
    title varchar(50),
    message varchar(100),
    constraint pkintro
        primary key (introid)
);

CREATE TABLE portfolio.user
(
    userid varchar(100) not null,
    firstname varchar(100) not null,
    surname varchar(100) not null,
    email varchar(100) not null,
    password varchar(100) not null,
    token varchar(1000) not null,
    constraint pkuserid
        primary key (userid)
);

-- data 