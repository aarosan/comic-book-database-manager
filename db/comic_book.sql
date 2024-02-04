CREATE TABLE comic_book (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    comic_book_name VARCHAR(150) NOT NULL,
    year INT NOT NULL,
    issue INT NOT NULL,
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
    editor_in_chief_id INT,
    
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
    FOREIGN KEY (editor_in_chief_id)
        REFERENCES editor_in_chief(id)
        ON DELETE SET NULL
);