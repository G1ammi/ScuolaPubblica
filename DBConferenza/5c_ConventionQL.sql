
/*Elenco piani (con relativo numero sale)  usati in una determinata fasciaoraria */

SELECT Piano.*,Programma.FasciaOraria
FROM Piano,Sala,Programma
WHERE Programma.fasciaoraria='9:00-10:00'
AND Piano.NumeroPiano = Sala.NumeroPiano
AND Sala.NomeSala = Programma.NomeSala


/*Elenco Speech con relatore in una determinata Sala */

SELECT Sala.NomeSala,Speech.Titolo,Relatore.NomeRelatore
FROM Sala,Programma,Speech,Relaziona,Relatore
WHERE Sala.NomeSala = "azzurro"
AND Sala.NomeSala = Programma.NomeSala
AND Programma.IdSpeech = Speech.IdSpeech
AND Programma.IdProgramma = Relaziona.IdProgramma
AND Relaziona.IdRel = Relatore.IdRel


/*Somma partecipanti agli speech in una determinata fascia oraria*/

SELECT Speech.Titolo,COUNT(Partecipante.NomePart) AS TotPartecipanti
FROM Programma,Speech,Partecipante,Partecipa
WHERE Programma.FasciaOraria = "10:00-11:00"
AND Speech.IdSpeech = Programma.IdSpeech
AND Programma.IdProgramma = Partecipa.IdProgramma
AND Partecipa.IdPartecipante = Partecipante.IdPartecipante
GROUP BY Speech.Titolo