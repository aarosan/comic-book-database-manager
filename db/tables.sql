CREATE TABLE comic_book (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    comic_book_name VARCHAR(150) NOT NULL,
    year INT NOT NULL,
    generation_id INT,
    publisher_id INT,
    creator_id INT,
    character_id INT,
    writer_id INT,
    artist_id INT,
    color_artist_id INT,
    cover_artist_id INT,
    penciler_id INT,
    inker_id INT,
    letterer_id INT,
    design_id INT,
    editor_id INT,
    assistant_editor_id INT
    
    /*Foreign Keys*/
    FOREIGN KEY (generation_id)
        REFERENCES generation(id)
        ON DELETE SET NULL,
    FOREIGN KEY (publisher_id)
        REFERENCES publisher(id)
        ON DELETE SET NULL,
    FOREIGN KEY (creator_id)
        REFERENCES creators(id)
        ON DELETE SET NULL,
    FOREIGN KEY (character_id)
        REFERENCES characters(id)
        ON DELETE SET NULL,
    FOREIGN KEY (writer_id)
        REFERENCES writers(id)
        ON DELETE SET NULL,
    FOREIGN KEY (artist_id)
        REFERENCES artists(id)
        ON DELETE SET NULL,
    FOREIGN KEY (color_artist_id)
        REFERENCES color_artists(id)
        ON DELETE SET NULL,
    FOREIGN KEY (cover_artist_id)
        REFERENCES cover_artists(id)
        ON DELETE SET NULL,
    FOREIGN KEY (penciler_id)
        REFERENCES pencilers(id)
        ON DELETE SET NULL,
    FOREIGN KEY (inker_id)
        REFERENCES inker(id)
        ON DELETE SET NULL,
    FOREIGN KEY (letterer_id)
        REFERENCES letterer(id)
        ON DELETE SET NULL,
    FOREIGN KEY (design_id)
        REFERENCES design(id)
        ON DELETE SET NULL,
    FOREIGN KEY (editor_id)
        REFERENCES editor(id)
        ON DELETE SET NULL,
    FOREIGN KEY (assistant_editor_id)
        REFERENCES assistant_editor(id)
        ON DELETE SET NULL
);

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

CREATE TABLE design (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    design_first_name VARCHAR(50) NOT NULL,
    design_last_name VARCHAR(50) NOT NULL
);

CREATE TABLE editor (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    editor_first_name VARCHAR(50) NOT NULL,
    editor_last_name VARCHAR(50) NOT NULL
);

CREATE TABLE assistant_editor(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    assistant_editor_first_name VARCHAR(50) NOT NULL,
    assistant_editor_last_name VARCHAR(50) NOT NULL
);

CREATE TABLE generation (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    generation_name VARCHAR(50) NOT NULL,
    year_start INT NOT NULL,
    year_end INT NOT NULL 
);