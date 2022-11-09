USE FirmaUebung;
GO

---- LEFT JOIN, RIGHT JOIN -------------------------------------
-- Alle Kunden (Vorname, Nachname) und Projekte (Projekt), auch die ohne Projekte (LEFT JOIN)
-- Alle Kunden (Vorname, Nachname) und Projekte (Projekt), auch die ohne Projekte (RIGHT JOIN)
SELECT Vorname, Nachname,Projekt
FROM Kunden
LEFT JOIN Projekt ON Kunden.KundenID = Projekt.ProjektID
ORDER BY Kunden.Nachname;

SELECT Vorname, Nachname,Projekt
FROM Projekt
RIGHT JOIN Kunden ON Kunden.KundenID = Projekt.ProjektID
ORDER BY Kunden.Nachname;


---- LEFT JOIN, RIGHT JOIN -------------------------------------
-- Alle Abteilungen (Abteilung) mit Mitarbeiter (Vorname, Nachname), auch die ohne Mitarbeiter (LEFT JOIN)
-- Alle Abteilungen (Abteilung) mit Mitarbeiter (Vorname, Nachname), auch die ohne Mitarbeiter (RIGHT JOIN)
SELECT Vorname, Nachname, Abteilung 
FROM Personal 
LEFT JOIN Abteilung ON Personal.PersonalID = Abteilung.AbteilungsID;

SELECT Vorname, Nachname, Abteilung 
FROM  Abteilung
RIGHT JOIN Personal ON Personal.PersonalID = Abteilung.AbteilungsID;

---- LEFT JOIN, RIGHT JOIN -------------------------------------
-- Alle Berufe (Beruf) und Mitarbeiter (Name, Vorname) (LEFT JOIN)
-- Alle Berufe (Beruf) und Mitarbeiter (Name, Vorname) (RIGHT JOIN)



---- LEFT JOIN, RIGHT JOIN -------------------------------------
-- Alle Positionen (Position) und Mitarbeiter (Name, Vorname) (LEFT JOIN)
-- Alle Positionen (Position) und Mitarbeiter (Name, Vorname) (RIGHT JOIN)