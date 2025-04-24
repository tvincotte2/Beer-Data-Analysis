use BeerProfileReviewDW

SELECT * FROM Dim_Beers WHERE Beer_Name IN (SELECT Beer_Name FROM Dim_Beers GROUP BY Beer_Id,Beer_Name HAVING COUNT(Beer_Name) > 1)

SELECT * FROM Dim_Beers

UPDATE Dim_Beers SET Active = 'False' WHERE Active ='True' and Valid_From < GETDATE() AND Beer_Name IN (SELECT Beer_Name FROM Dim_Beers GROUP BY Beer_Id,Beer_Name HAVING COUNT(Beer_Name) > 1)
UPDATE Dim_Beers SET Active = 'True' WHERE Active ='False' and Valid_From >= GETDATE() AND Beer_Name IN (SELECT Beer_Name FROM Dim_Beers GROUP BY Beer_Id,Beer_Name HAVING COUNT(Beer_Name) > 1)

UPDATE Dim_Beers SET Active = 'True'
