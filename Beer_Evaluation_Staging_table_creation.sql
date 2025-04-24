use BeerProfileReviewDW;

CREATE TABLE Dim_Beers INT IDENTITY (1,1),
   Beer_Id INT,
   Beer_Name NVARCHAR(50),
   Brewery_Name NVARCHAR(50),
   ABV INT,
   Active BIT,
   Valid_From DATETIME,
   PRIMARY KEY(SK_Beer)
);


CREATE TABLE Dim_Reviewer(
   Reviewer_Id INT IDENTITY (1,1),
   Reviewer_name NVARCHAR(50),
   PRIMARY KEY(Reviewer_Id)
);


CREATE TABLE Dim_Style(
   SK_BeerStyle INT IDENTITY (1,1),
   Beer_Style VARCHAR(50),
   Active BIT,
   Valid_From DATETIME,
   PRIMARY KEY(SK_BeerStyle)
);




