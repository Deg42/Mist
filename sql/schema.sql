CREATE DATABASE IF NOT EXISTS mist;
USE mist;

DROP TABLE IF EXISTS apps;
DROP TABLE IF EXISTS users;

CREATE TABLE apps (
    appid                   BIGINT PRIMARY KEY AUTO_INCREMENT,
    name                    VARCHAR(255) NOT NULL,
    type                    BIGINT NOT NULL,
    req_age                 INT NOT NULL,
    is_free                 BOOLEAN NOT NULL,
    dlc                     JSON,
    detailed_description    TEXT NOT NULL,
    short_description       VARCHAR(255) NOT NULL,
    supported_languages     JSON NOT NULL,
    website                 VARCHAR(255),
    pc_requirements         JSON NOT NULL,
    developers              JSON NOT NULL,
    publishers              JSON NOT NULL,
    price_overview          JSON NOT NULL,
    platforms               JSON NOT NULL,
    categories              JSON NOT NULL,
    genres                  JSON NOT NULL,
    screenshots             JSON NOT NULL,
    movies                  JSON,
    recommendations         INT NOT NULL,
    achievements            JSON,
    release_date            JSON NOT NULL,
    support_info            JSON NOT NULL
);

CREATE TABLE users (
    userid                  BIGINT PRIMARY KEY AUTO_INCREMENT,
    username                VARCHAR(255) NOT NULL,
    password                VARCHAR(255) NOT NULL,
    email                   VARCHAR(255) NOT NULL,
    avatar                  VARCHAR(255) NOT NULL,
    country                 VARCHAR(255) NOT NULL,
    language                INT NOT NULL,
    reg_date                DATETIME NOT NULL,
    is_admin                BOOLEAN NOT NULL,
    is_banned               BOOLEAN NOT NULL,
    games                   JSON NOT NULL,
    wishlist                JSON NOT NULL,
    wallet                  JSON NOT NULL
);
