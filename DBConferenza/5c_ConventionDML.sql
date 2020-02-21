

INSERT INTO Piano (NumeroPiano,NumeroSale) VALUES
    (1,4),
    (2,4),
    (3,5);

INSERT INTO Sala (NomeSala,NPostiSala,NumeroPiano) VALUES
    ("giallo",5,1),
    ("verde",15,1),
    ("blu",20,1),
    ("rosso",10,1),
    ("ciano",15,2),
    ("magenta",20,2),
    ("rosa",10,2),
    ("arancione",15,2),
    ("azzurro",20,3),
    ("bianco",10,3),
    ("grigio",15,3),
    ("nero",20,3),
    ("SalaPremiazione",50,3);

INSERT INTO Partecipante(IdPartecipante,NomePart,CognomePart,MailPart,Tipologia) VALUES 
    (0001,"Giuseppe","Fassio","Giuseppe@Fassio.com","Professore"),
    (0002,"Maria","Bianco","Maria@Bianco.com","Professore"),
    (0003,"Andrea","Gallo","Andrea@Gallo.com","Professore"),
    (0004,"Marco","Rosso","Marco@Rosso.com","Professore"),
    (0005,"Francesco","Conti","Francesco@Conti.com","Professore"),
    (0006,"Alessandro","Ravioli","Alessandro@Ravioli.com","Professore"),
    (0007,"Giovanni","Amerio","Giovanni@Amerio.com","Professore"),
    (0008,"Roberto","Torchio","Roberto@Torchio.com","Studente"),
    (0009,"Luca","Negro","Luca@Negro.com","Studente"),
    (0010,"Antonio","Marino","Antonio@Marino.com","Studente"),
    (0011,"Paolo","Grasso","paolo@Grasso.com","Studente"),
    (0012,"Anna","Gamba","Anna@Gamba.com","Studente"),
    (0013,"Francesca","Barbero","Francesca@Barbero.com","Studente"),
    (0014,"Davide","Graziano","Davide@Graziano.com","Studente"),
    (0015,"Matter","Penna","Matter@Penna.com","Studente"),
    (0016,"Mario","Palumbo","Mario@Palumbo.com","Studente"),
    (0017,"Luigi","Nonsenso","Luigi@Nonsenso.com","Studente"),
    (0018,"Giulia","Russo","Giulia@Russo.com","Studente"),
    (0019,"Fabio","Bidello","Fabio@Bidello.com","Professionista"),
    (0020,"Lucia","Ferraris","Lucia@Ferraris.com","Professionista"),
    (0021,"Alessia","Marcello","Alessia@Marcello.com","Professionista"),
    (0022,"Gabriele","Rissone","Gabriele@Rissone.com","Professionista"),
    (0023,"Rita","Bruno","Rita@Bruno.com","Professionista"),
    (0024,"Domenico","Nebiolo","Domenico@Nebiolo.com","Professionista"),
    (0025,"Monica","Saracco","Monica@Saracco.com","Professionista"),
    (0026,"Silvana","Montone","Silvana@Montone.com","Professionista");


INSERT INTO Speech(IdSpeech,Titolo,Argomento) VALUES 
    (001,"Blockchain","Blockchain related technology or use-cases leveraging the Hyperledger framework"),
    (002,"Cloud and Containers","Cloud, containers, clusters. Buildah, CRI-O, Docker, Kubernetes, Skopeo"),
    (003,"Desktop","Traditional and new package management tools"),
    (004,"Documentation","Guides, manuals, howtos, articles, and other kinds of help content"),
    (005,"Developer Tools","Developer tools for planning, creating, compiling, running, and analyzing code"),
    (006,"Fedora","All things Fedora"),
    (007,"Kernel","All things Linux Kernel"),
    (008,"IoT (Internet of Things)","Data crunching applications, microcontrollers, protocols and embedded software"),
    (009,"Virtualization","Virtualization from low level kernel support to high level management tools, and everything in between, such as userspace runtimes and libraries"),
    (010,"Premiazione","Premiazione");

INSERT INTO Programma(IdProgramma,FasciaOraria,NomeSala,IdSpeech) VALUES
    (1,"9:00-10:00","rosso",001),
    (2,"9:00-10:00","Ciano",002),
    (3,"9:00-10:00","magenta",003),
    (4,"10:00-11:00","giallo",004),
    (5,"10:00-11:00","verde",005),
    (6,"10:00-11:00","blu",006),
    (7,"11:00-12:00","rosa",007),
    (8,"11:00-12:00","arancione",008),
    (9,"11:00-12:00","azzurro",009),
    (10,"14:00-15:00","bianco",001),
    (11,"14:00-15:00","grigio",006),
    (12,"14:00-15:00","nero",002),
    (13,"15:00-16:00","giallo",003),
    (14,"15:00-16:00","verde",007),
    (15,"15:00-16:00","blu",008),
    (16,"16:00-17:00","rosa",009),
    (17,"16:00-17:00","arancione",005),
    (18,"16:00-17:00","azzurro",006),
    (19,"17:00-18:00","SalaPremiazione",010);

INSERT INTO Azienda(RagioneSocialeAzienda,IndirizzoAzienda,TelefonoAzienda) VALUES
    ("12004455001","Via italia","12340001"),
    ("12004455002","Via cuneo","12340002"),
    ("12004455003","Via gesso","12340003"),
    ("12004455004","Strada provinciale","12340004"),
    ("12004455005","Via po","12340005"),
    ("12004455006","Via Mugello","12340006"),
    ("12004455007","Strada san giacomo","12340007"),
    ("12004455008","Via torre cavalli","12340008"),
    ("12004455009","Via Giuseppe capra","12340009");

INSERT INTO Relatore(IdRel,NomeRelatore,CognomeRel,MailRel,RagioneSocialeAzienda) VALUES
    (001,"Renato","Ferraro","Renato@Ferraro.com","12004455001"),
    (002,"Maria","Quirico","Maria@Quirico.com2","12004455002"),
    (003,"Tiziana","Colosso","Tiziana@Colosso.com","12004455003"),
    (004,"Graziella","Borello","Graziella@Borello.com","12004455004"),
    (005,"Elisabetta","Capra","Elisabetta@Capra.com","12004455005"),
    (006,"Giancarlo","Martinengo","Giancarlo@Martinengo.com","12004455006"),
    (007,"Diego","Basso","Diego@Basso.com","12004455008"),
    (008,"Cristiano","Bertolino","Cristiano@Bertolino.com","12004455009"),
    (009,"Nicola","Rosaio","Nicola@Rosaio.com","12004455004"),
    (010,"Beatrice","Finito","Beatrice@Finito.com","12004455005"),
    (011,"Valeria","Quaglia","Valeria@Quaglia.com","12004455006"),
    (012,"Luciana","Porcellana","Luciana@Porcellana.com","12004455003"),
    (013,"Giacomo","Barberia","Giacomo@Barberia.com","12004455004"),
    (014,"Antonietta","Macigno","Antonietta@Macigno.com","12004455005"),
    (015,"Irene","Novara","Irene@Novara.com","12004455006"),
    (016,"Cinzia","Pia","Cinzia@Pia.com","12004455001"),
    (017,"Sabrina","De Luca","Sabrina@DeLuca.com","12004455002");

 INSERT INTO Partecipa(IdPartecipante,IdProgramma,Presenza) VALUES
    (0001,1,1),
    (0002,1,1),
    (0003,1,1),
    (0004,1,1),
    (0005,1,1),
    (0006,2,1),
    (0007,2,1),
    (0008,2,1),
    (0009,2,1),
    (0010,2,1),
    (0011,2,1),
    (0012,3,1),
    (0013,3,0),
    (0014,3,0),
    (0015,3,1),
    (0016,3,1),
    (0017,4,1),
    (0018,4,1),
    (0019,4,1),
    (0020,5,1),
    (0021,5,1),
    (0022,5,1),
    (0023,5,1),
    (0024,5,1),
    (0025,5,1),
    (0026,6,1),
    (0001,7,1),
    (0002,7,1),
    (0003,7,1),
    (0004,7,1),
    (0005,7,1),
    (0006,7,1),
    (0007,8,1),
    (0008,8,0),
    (0009,8,1),
    (0010,8,1),
    (0011,8,1),
    (0012,9,1),
    (0013,9,1),
    (0014,9,1),
    (0015,9,1),
    (0016,9,1),
    (0018,10,0),
    (0019,10,1),
    (0020,10,1),
    (0021,11,1),
    (0022,11,1),
    (0023,11,1),
    (0024,12,1),
    (0025,12,1),
    (0026,12,1),
    (0001,12,1),
    (0007,13,1),
    (0008,13,1),
    (0009,13,1),
    (0010,14,1),
    (0011,14,1),
    (0012,14,1),
    (0013,14,1),
    (0014,14,1),
    (0015,15,1),
    (0016,15,1),
    (0017,15,1),
    (0018,15,1),
    (0019,15,1),
    (0020,15,1),
    (0021,16,1),
    (0022,16,1),
    (0023,16,1),
    (0024,16,1),
    (0025,16,1),
    (0026,16,1),
    (0001,17,1),
    (0002,17,1),
    (0003,17,1),
    (0004,17,1),
    (0005,17,1),
    (0006,18,1),
    (0007,18,1),
    (0021,18,1),
    (0022,18,1),
    (0023,18,1),
    (0024,18,1),
    (0025,18,1);

INSERT INTO Relaziona(IdRel,IdProgramma) VALUES
(001,1),
(002,2),
(003,3),
(004,4),
(005,5),
(006,6),
(007,7),
(008,8),
(009,9),
(010,10),
(011,11),
(014,12),
(013,13),
(014,14),
(015,15),
(016,16),
(017,17),
(003,18),
(001,19);
   
    