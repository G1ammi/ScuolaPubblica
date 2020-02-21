/*Gianmarco Cerato 5c*/
CREATE DATABASE 5C_Convention;

USE 5C_Convention;

CREATE TABLE  Piano  (
   NumeroPiano  int(5) NOT NULL,
   NumeroSala  int(11) NOT NULL,
   PRIMARY KEY ( NumeroPiano )
);


CREATE TABLE  Sala  (
   NomeSala  varchar(30) NOT NULL,
   NPostiSala  int(11) NOT NULL,
   NumeroPiano  int(11) NOT NULL,
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
   Titolo  varchar(30) NOT NULL,
   Argomento  varchar(200) NOT NULL,
   PRIMARY KEY (IdSpeech)
);


CREATE TABLE  Programma  (
   IdProgramma  int(10) NOT NULL,
   FasciaOraria  varchar(30) NOT NULL,
   NomeSala  varchar(30) NOT NULL,
   IdSpeech  int(10) NOT NULL,
   PRIMARY KEY ( IdProgramma )
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
   PRIMARY KEY ( IdRel )
);

CREATE TABLE  Partecipa  (
   IdPartecipante  int(10) NOT NULL,
   IdProgramma  int(10) NOT NULL,
   Presenza  boolean NOT NULL,
   PRIMARY KEY ( IdPartecipante , IdProgramma )
);

CREATE TABLE  Relaziona  (
   IdRel  int(10)  NOT NULL,
   IdProgramma  int(10)  NOT NULL,
   PRIMARY KEY ( IdRel , IdProgramma )
);


ALTER TABLE  Sala 
  ADD CONSTRAINT FOREIGN KEY ( NumeroPiano ) REFERENCES  Piano  ( NumeroPiano );


ALTER TABLE  Programma 
  ADD CONSTRAINT FOREIGN KEY ( NomeSala ) REFERENCES  Sala  ( NomeSala ),
  ADD CONSTRAINT FOREIGN KEY ( IdSpeech ) REFERENCES  Speech  ( IdSpeech );


ALTER TABLE  Relatore 
  ADD CONSTRAINT FOREIGN KEY ( RagioneSocialeAzienda ) REFERENCES  Azienda  ( RagioneSocialeAzienda );


ALTER TABLE  Partecipa 
  ADD CONSTRAINT FOREIGN KEY ( IdPartecipante ) REFERENCES  Partecipante  ( IdPartecipante ),
  ADD CONSTRAINT FOREIGN KEY ( IdProgramma ) REFERENCES  Programma  ( IdProgramma );

ALTER TABLE  Relaziona 
  ADD CONSTRAINT FOREIGN KEY ( IdRel ) REFERENCES  Relatore  ( IdRel ),
  ADD CONSTRAINT FOREIGN KEY ( IdProgramma ) REFERENCES  Programma  ( IdProgramma );


