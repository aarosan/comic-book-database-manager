CREATE TABLE publisher (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    publisher_name VARCHAR(50) NOT NULL
);

CREATE TABLE creators (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    creator_first_name VARCHAR(50) NOT NULL,
    creator_last_name VARCHAR(50) NOT NULL
);

CREATE TABLE characters (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    character_name VARCHAR(50) NOT NULL,
    alias_first_name VARCHAR(50) NULL,
    alias_last_name VARCHAR(50) NULL
);

CREATE TABLE writers (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    writer_first_name VARCHAR(50) NOT NULL,
    writer_last_name VARCHAR(50) NOT NULL
);

CREATE TABLE artists (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist_first_name VARCHAR(50) NOT NULL,
    artist_last_name VARCHAR(50) NOT NULL
);

CREATE TABLE color_artists (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    color_artists_first_name VARCHAR(50) NOT NULL,
    color_artists_last_name VARCHAR(50) NOT NULL
);

CREATE TABLE cover_artists (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cover_artists_first_name VARCHAR(50) NOT NULL,
    cover_artists_last_name VARCHAR(50) NOT NULL
);

CREATE TABLE pencilers (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pencilers_first_name VARCHAR(50) NOT NULL,
    pencilers_last_name VARCHAR(50) NOT NULL
);

CREATE TABLE inker (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    inker_first_name VARCHAR(50) NOT NULL,
    inker_last_name VARCHAR(50) NOT NULL
);
    
CREATE TABLE letterer (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    letterer_first_name VARCHAR(50) NOT NULL,
    letterer_last_name VARCHAR(50) NOT NULL
);

CREATE TABLE editor (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    editor_first_name VARCHAR(50) NOT NULL,
    editor_last_name VARCHAR(50) NOT NULL
);

CREATE TABLE editor_in_chief(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    editor_in_chief_first_name VARCHAR(50) NOT NULL,
    editor_in_chief_last_name VARCHAR(50) NOT NULL
);

CREATE TABLE generation (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    generation_name VARCHAR(50) NOT NULL,
    year_start INT NOT NULL,
    year_end INT NOT NULL 
);