USE FirmaUebung;
GO

------ INNER JOIN ---------------------------------------------------------------------
-- Alle Kunden (Vorname, Nachname) und Projekte (Projekt) -- 2 Tab.

SELECT Vorname, Nachname,Projekt.Projekt
FROM Kunden 
INNER JOIN Projekt ON Kunden.KundenID = Projekt.KundenID
ORDER BY Kunden.Nachname;


-- Alle Kunden (Vorname, Nachname), Projekte (Projekt) 
-- und ProjektZeitBudget (Monat, Jahr, Budget) -- 3 Tab.
---------------------------------------------------------------------------
SELECT Vorname,Nachname,Projekt,
Jahr, Monat, Budget
FROM Kunden
INNER JOIN Projekt ON Kunden.KundenID = Projekt.KundenID
INNER JOIN ProjektZeitBudget ON Projekt.ProjektID = ProjektZeitBudget.ProjektID
ORDER BY Kunden.Nachname
;