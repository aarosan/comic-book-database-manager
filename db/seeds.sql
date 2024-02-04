DELETE FROM publisher;
INSERT INTO publisher (publisher_name)
VALUES ('Marvel Comics'),
       ('DC'),
       ('Image');

DELETE FROM creators;
INSERT INTO creators (creator_first_name, creator_last_name)
VALUES ('Stan', 'Lee'),
       ('Steve', 'Ditko');

DELETE FROM characters;
INSERT INTO characters (character_name, alias_first_name, alias_last_name)
VALUES ('Daredevil', 'Matt', 'Murdock'),
       ('Spider-Man', 'Peter', 'Parker'),
       ('Hawkeye', 'Clint', 'Barton');

DELETE FROM writers;
INSERT INTO writers (writer_first_name, writer_last_name)
VALUES ('Frank', 'Miller'),
       ('Jim', 'Starlin'),
       ('Matt', 'Fraction');

DELETE FROM artists;
INSERT INTO artists (artist_first_name, artist_last_name)
VALUES ('David', 'Mazzucchelli'),
       ('Dennis', 'Janke'),
       ('David', 'Aja');

DELETE FROM color_artists;
INSERT INTO color_artists (color_artists_first_name, color_artists_last_name)
VALUES ('Ian', 'Laughlin'),
       ('Evelyn', 'Stein'),
       ('Christie', 'Scheele'),
       ('Matt', 'Hollingsworth');

DELETE FROM cover_artists;
INSERT INTO cover_artists (cover_artists_first_name, cover_artists_last_name)
VALUES ('George', 'Pérez'),
       ('David', 'Mazzucchelli'),
       ('David', 'Aja');

DELETE FROM pencilers;
INSERT INTO pencilers (pencilers_first_name, pencilers_last_name)
VALUES ('Georve', 'Pérez'),
       ('Ron', 'Lim')
       ('David', 'Mazzucchelli'),
       ('David', 'Aja');

DELETE FROM inker;
INSERT INTO inker (inker_first_name, inker_last_name)
VALUES ('Josef', 'Rubinstein'),
       ('Tom', 'Christopher'),
       ('Bruce', 'Solotoff'),
       ('Klaus', 'Janson'),
       ('David', 'Aja');

DELETE FROM letterer;
INSERT INTO letterer (letterer_first_name, letterer_last_name)
VALUES ('Jack', 'Morelli'),
       ('Joe', 'Rosen'),
       ('Chris', 'Eliopoulos');

DELETE FROM design;
INSERT INTO design (design_first_name, design_last_name)
VALUES ('Tom', 'Muller');
       
DELETE FROM editor;
INSERT INTO editor (editor_first_name, editor_last_name)
VALUES ('Tom', 'Brevoort'),
       ('Ralph', 'Macchio'),
       ('Craig', 'Anderson'),
       ('Stephen', 'Wacker'),
       ('Sana', 'Amanat');

DELETE FROM editor_in_chief;
INSERT INTO editor_in_chief (editor_in_chief_first_name, editor_in_chief_last_name)
VALUES ('Tom', 'DeFalco'),
       ('Jim', 'Shooter');

DELETE FROM generation;
INSERT INTO generation (generation_name, year_start, year_end)
VALUES ('Golden Age', 1938, 1955),
       ('Silver Age', 1956, 1970),
       ('Bronze Age', 1970, 1985),
       ('Modern Age', 1985, 2024),
       ('Post-Modern/Contemporary', 2000, 2024);

