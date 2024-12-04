/* Create tables without relations */ 

CREATE TABLE Animes (
  idAnime serial PRIMARY KEY,
  EnglishName varchar(60) NOT NULL,
  Score float DEFAULT NULL,
  AiredDebut date NOT NULL,
  AiredEnd date DEFAULT NULL,
  Premiered date NOT NULL,
  AverageDuration int NOT NULL,
  Rank float DEFAULT NULL,
  Popularity int DEFAULT NULL,
  idGenre int NOT NULL,
  idEpisode int NOT NULL,
  idType int NOT NULL,
  idProducer int NOT NULL,
  idSource int NOT NULL,
  idStudio int NOT NULL,
  idRating int NOT NULL
);

CREATE TABLE Genres (
  idGenre serial PRIMARY KEY,
  genreName varchar(60) NOT NULL,
  idAnime int DEFAULT NULL
);

CREATE TABLE Types (
  idType serial PRIMARY KEY,
  typeName varchar(60) NOT NULL,
  idAnime int DEFAULT NULL
);

CREATE TABLE Sources (
  idSource serial PRIMARY KEY,
  sourceName varchar(60) NOT NULL,
  idAnime int DEFAULT NULL
);

CREATE TABLE Studios (
  idStudio serial PRIMARY KEY,
  studioName varchar(60) NOT NULL,
  idAnime int DEFAULT NULL,
  idProducer int DEFAULT NULL
);

CREATE TABLE Producers (
  idProducer serial PRIMARY KEY,
  producerName varchar(60) NOT NULL,
  idAnime int DEFAULT NULL,
  idStudio int DEFAULT NULL
);

CREATE TABLE Ratings (
  idRating serial PRIMARY KEY,
  ratingName varchar(60) NOT NULL,
  idAnime int DEFAULT NULL
);

CREATE TABLE Episodes (
  idEpisode serial PRIMARY KEY,
  episodeName varchar(60) NOT NULL,
  duration varchar(60) NOT NULL,
  idAnime int DEFAULT NULL
);


/* Add relations to tables */ 

ALTER TABLE Genres
ADD FOREIGN KEY (idAnime) REFERENCES Animes (idAnime);

ALTER TABLE Types
ADD FOREIGN KEY (idAnime) REFERENCES Animes (idAnime);

ALTER TABLE Sources
ADD FOREIGN KEY (idAnime) REFERENCES Animes (idAnime);

ALTER TABLE Studios
ADD FOREIGN KEY (idAnime) REFERENCES Animes (idAnime),
ADD FOREIGN KEY (idProducer) REFERENCES Producers (idProducer);

ALTER TABLE Producers
ADD FOREIGN KEY (idAnime) REFERENCES Animes (idAnime),
ADD FOREIGN KEY (idStudio) REFERENCES Studios (idStudio);

ALTER TABLE Ratings
ADD FOREIGN KEY (idAnime) REFERENCES Animes (idAnime);

ALTER TABLE Episodes
ADD FOREIGN KEY (idAnime) REFERENCES Animes (idAnime);

/* Add relations to table Anime */

ALTER TABLE Animes
ADD FOREIGN KEY (idGenre) REFERENCES Genres (idGenre),
ADD FOREIGN KEY (idType) REFERENCES Types (idType),
ADD FOREIGN KEY (idSource) REFERENCES Sources (idSource),
ADD FOREIGN KEY (idStudio) REFERENCES Studios (idStudio),
ADD FOREIGN KEY (idProducer) REFERENCES Producers (idProducer),
ADD FOREIGN KEY (idRating) REFERENCES Ratings (idRating),
ADD FOREIGN KEY (idEpisode) REFERENCES Episodes (idEpisode);