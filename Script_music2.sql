CREATE TABLE IF NOT EXISTS Genre (
id Serial PRIMARY KEY,
Genre_name VARCHAR (80) not null
);

CREATE TABLE IF NOT EXISTS Artists (
id Serial PRIMARY KEY,
Name_Artist VARCHAR(60) NOT null
);

CREATE TABLE IF NOT EXISTS Albums (
id Serial PRIMARY KEY,
Album_name VARCHAR(80) NOT null,
Year_of_release VARCHAR(60) NOT null
);

CREATE TABLE IF NOT EXISTS Genre_Artists (
id Serial PRIMARY KEY,
Genre_id integer NOT null references Genre(id),
Artist_id integer NOT null references Artists(id)
);

CREATE TABLE IF NOT EXISTS Collection(
id Serial PRIMARY KEY,
Year_of_release VARCHAR(60) NOT null,
Name_collection VARCHAR(60) NOT null
);

CREATE TABLE IF NOT EXISTS Audio_tracks (
id Serial PRIMARY KEY,
Track_name VARCHAR(80) NOT null,
Duration VARCHAR(60) NOT null,
Album_id integer NOT null references Albums(id)

);


CREATE TABLE IF NOT EXISTS Album_Artists (
id Serial PRIMARY KEY,
Album_id integer NOT null references Albums(id),
Artist_id integer NOT null references Artists(id)
);

CREATE TABLE IF NOT EXISTS Collection_audiotrack (
id Serial PRIMARY KEY,
Collection_id integer NOT null references Collection(id),
Audiotrack_id integer NOT null references Audio_tracks (id)
);