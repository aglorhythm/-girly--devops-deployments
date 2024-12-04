/* Ajout des tables sans relations */ 

CREATE TABLE Anime (
  IdAnime serial PRIMARY KEY,
  EnglishName varchar(60) NOT NULL,
  Score float DEFAULT NULL,
  AiredDebut date NOT NULL,
  AiredEnd date DEFAULT NULL,
  Premiered date NOT NULL,
  AverageDuration int NOT NULL,
  Rank float DEFAULT NULL,
  Popularity int DEFAULT NULL
);

CREATE TABLE Genres (
  idGenre serial PRIMARY KEY,
  genreName varchar(60) NOT NULL
);

CREATE TABLE Types (
  idType serial PRIMARY KEY,
  typeName varchar(60) NOT NULL
);

CREATE TABLE Sources (
  idSource serial PRIMARY KEY,
  sourceName varchar(60) NOT NULL
);

CREATE TABLE Studios (
  idStudio serial PRIMARY KEY,
  studioName varchar(60) NOT NULL
);

CREATE TABLE Producers (
  idProducer serial PRIMARY KEY,
  producerName varchar(60) NOT NULL
);

CREATE TABLE Ratings (
  idRating serial PRIMARY KEY,
  ratingName varchar(60) NOT NULL
);

CREATE TABLE Episodes (
  idEpisode serial PRIMARY KEY,
  episodeName varchar(60) NOT NULL,
  duration varchar(60) NOT NULL
);

