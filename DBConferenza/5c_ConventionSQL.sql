/*Gianmarco Cerato 5c*/
CREATE DATABASE 5C_Convention;

USE 5C_Convention;

CREATE TABLE  Piano  (
   NumeroPiano  int(5) NOT NULL,
   NumeroSale  int(11) NOT NULL,
   PRIMARY KEY ( NumeroPiano )
);


CREATE TABLE  Sala  (
   NomeSala  varchar(30) NOT NULL,
   NPostiSala  int(11) NOT NULL,
   NumeroPiano  int(11) NOT NULL,
   FOREIGN KEY ( NumeroPiano ) REFERENCES  Piano  ( NumeroPiano ),
   PRIMARY KEY ( NomeSala )
);


CREATE TABLE  Partecipante  (
   IdPartecipante  int(10) NOT NULL,
   NomePart  varchar(30) NOT NULL,
   CognomePart  varchar(30) NOT NULL,
   MailPart  varchar(30) NOT NULL,
   Tipologia  varchar(30) NOT NULL,
   PRIMARY KEY (IdPartecipante)
);


CREATE TABLE  Speech  (
   IdSpeech  int(10) NOT NULL,
   Titolo  varchar(50) NOT NULL,
   Argomento  varchar(200) NOT NULL,
   PRIMARY KEY (IdSpeech)
);


CREATE TABLE  Programma  (
   IdProgramma  int(10) NOT NULL,
   FasciaOraria  varchar(30) NOT NULL,
   NomeSala  varchar(30) NOT NULL,
   IdSpeech  int(10) NOT NULL,
   PRIMARY KEY ( IdProgramma ),
   FOREIGN KEY ( NomeSala ) REFERENCES  Sala  ( NomeSala ),
   FOREIGN KEY ( IdSpeech ) REFERENCES  Speech  ( IdSpeech )
);

CREATE TABLE  Azienda  (
   RagioneSocialeAzienda  varchar(30) NOT NULL,
   IndirizzoAzienda  varchar(30) NOT NULL,
   TelefonoAzienda  varchar(30),
   PRIMARY KEY ( RagioneSocialeAzienda )
);

CREATE TABLE  Relatore  (
   IdRel  int(10) NOT NULL,
   NomeRelatore  varchar(30) NOT NULL,
   CognomeRel  varchar(30) NOT NULL,
   MailRel  varchar(30) NOT NULL,
   RagioneSocialeAzienda  varchar(30) NOT NULL,
   FOREIGN KEY ( RagioneSocialeAzienda ) REFERENCES  Azienda  ( RagioneSocialeAzienda ),
   PRIMARY KEY ( IdRel )
);

CREATE TABLE  Partecipa  (
   IdPartecipante  int(10) NOT NULL,
   IdProgramma  int(10) NOT NULL,
   Presenza  boolean NOT NULL,
   FOREIGN KEY ( IdPartecipante ) REFERENCES  Partecipante  ( IdPartecipante ),
   FOREIGN KEY ( IdProgramma ) REFERENCES  Programma  ( IdProgramma ),
   PRIMARY KEY ( IdPartecipante , IdProgramma )
);

CREATE TABLE  Relaziona  (
   IdRel  int(10)  NOT NULL,
   IdProgramma  int(10)  NOT NULL,
   FOREIGN KEY ( IdRel ) REFERENCES  Relatore  ( IdRel ),
   FOREIGN KEY ( IdProgramma ) REFERENCES  Programma  ( IdProgramma ),
   PRIMARY KEY ( IdRel , IdProgramma )
);

