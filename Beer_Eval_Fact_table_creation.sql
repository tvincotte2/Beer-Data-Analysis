use BeerProfileReviewDW;


CREATE TABLE BeerEval_Facts(
   ABV INT,
   review_time DATETIME,
   review_aroma DECIMAL(4,2),
   review_appearance DECIMAL(4,2),
   review_palate DECIMAL(4,2),
   review_taste DECIMAL(4,2),
   review_overall DECIMAL(4,2),
   Load_date DATETIME,
   DateKey INT NOT NULL,
   Reviewer_Id INT NOT NULL,
   SK_Beer INT NOT NULL,
   SK_BeerStyle INT NOT NULL,
   PRIMARY KEY(DateKey, SK_Beer, SK_BeerStyle, Reviewer_Id),
   FOREIGN KEY(DateKey) REFERENCES DimDate(DateKey),
   FOREIGN KEY(Reviewer_Id) REFERENCES Dim_Reviewer(Reviewer_Id),
   FOREIGN KEY(SK_Beer) REFERENCES Dim_Beers(SK_Beer),
   FOREIGN KEY(SK_BeerStyle) REFERENCES Dim_Style(SK_BeerStyle)
);




