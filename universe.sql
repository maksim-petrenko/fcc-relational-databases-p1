-- https://www.freecodecamp.org/
-- Curriculum: Relational Databases Certification
-- Project: Build a Celestial Bodies Database
-- Copyright (C) 2026 Maksim Petrenko


-- SCHEMA ----------------------------------------------------------------------

-- galaxy
CREATE TABLE galaxy (
    galaxy_id INTEGER     NOT NULL,
    name      VARCHAR(10) NOT NULL,
    col_3     NUMERIC(4),
    col_4     TEXT,       -- not standard
    col_5     BOOLEAN,
    -- constraints
    PRIMARY KEY (galaxy_id),
    UNIQUE (name)
);

-- star
CREATE TABLE star (
    star_id   INTEGER     NOT NULL,
    name      VARCHAR(10) NOT NULL,
    galaxy_id INTEGER,
    col_4     INTEGER,
    col_5     INTEGER,
    -- constraints
    PRIMARY KEY (star_id),
    FOREIGN KEY (galaxy_id) REFERENCES galaxy (galaxy_id),
    UNIQUE (name)
);

-- planet
CREATE TABLE planet (
    planet_id INTEGER     NOT NULL,
    name      VARCHAR(10) NOT NULL,
    star_id   INTEGER,
    col_4     INTEGER,
    col_5     INTEGER,
    -- constraints
    PRIMARY KEY (planet_id),
    FOREIGN KEY (star_id) REFERENCES star (star_id),
    UNIQUE (name)
);

-- moon
CREATE TABLE moon (
    moon_id   INTEGER     NOT NULL,
    name      VARCHAR(10) NOT NULL,
    planet_id INTEGER,
    col_4     INTEGER,
    col_5     INTEGER,
    -- constraints
    PRIMARY KEY (moon_id),
    FOREIGN KEY (planet_id) REFERENCES planet (planet_id),
    UNIQUE (name)
);

-- table_name
CREATE TABLE table_name (
    table_name_id INTEGER     NOT NULL,
    name          VARCHAR(10) NOT NULL,
    col_3         BOOLEAN,
    -- constraints
    PRIMARY KEY (table_name_id),
    UNIQUE (name)
);


-- DATA ------------------------------------------------------------------------

-- galaxy
INSERT INTO galaxy VALUES
    (1, 'name_1', 1001, 'text_1', TRUE),
    (2, 'name_2', 1002, 'text_2', TRUE),
    (3, 'name_3', 1003, 'text_3', TRUE),
    (4, 'name_4', 1004, 'text_4', TRUE),
    (5, 'name_5', 1005, 'text_5', TRUE),
    (6, 'name_6', 1006, 'text_6', TRUE);

-- star
INSERT INTO star VALUES
    (1, 'name_1', 1, 1, 1),
    (2, 'name_2', 2, 2, 2),
    (3, 'name_3', 3, 3, 3),
    (4, 'name_4', 4, 4, 4),
    (5, 'name_5', 5, 5, 5),
    (6, 'name_6', 6, 6, 6);

-- planet
INSERT INTO planet VALUES
    (1, 'name_1', 1, 1, 1),
    (2, 'name_2', 2, 2, 2),
    (3, 'name_3', 3, 3, 3),
    (4, 'name_4', 4, 4, 4),
    (5, 'name_5', 5, 5, 5),
    (6, 'name_6', 6, 6, 6),
    (7, 'name_7', 1, 7, 7),
    (8, 'name_8', 2, 8, 8),
    (9, 'name_9', 3, 9, 9),
    (10, 'name_10', 4, 10, 10),
    (11, 'name_11', 5, 11, 11),
    (12, 'name_12', 6, 12, 12);

-- moon
INSERT INTO moon VALUES
    (1, 'name_1', 1, 1, 1),
    (2, 'name_2', 2, 2, 2),
    (3, 'name_3', 3, 3, 3),
    (4, 'name_4', 4, 4, 4),
    (5, 'name_5', 5, 5, 5),
    (6, 'name_6', 6, 6, 6),
    (7, 'name_7', 7, 7, 7),
    (8, 'name_8', 8, 8, 8),
    (9, 'name_9', 8, 9, 9),
    (10, 'name_10', 10, 10, 10),
    (11, 'name_11', 1, 11, 11),
    (12, 'name_12', 2, 12, 12),
    (13, 'name_13', 3, 13, 13),
    (14, 'name_14', 4, 14, 14),
    (15, 'name_15', 5, 15, 15),
    (16, 'name_16', 6, 16, 16),
    (17, 'name_17', 7, 17, 17),
    (18, 'name_18', 8, 18, 18),
    (19, 'name_19', 9, 19, 19),
    (20, 'name_20', 10, 20, 20);

-- table_name
INSERT INTO table_name VALUES
    (1, 'name_1', TRUE),
    (2, 'name_2', TRUE),
    (3, 'name_3', TRUE);
