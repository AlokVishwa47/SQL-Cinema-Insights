/* Query to find Top Performing Movies and their Ratings */
SELECT 
    Movies.Title, 
    (Boxoffice.Domestic_sales + Boxoffice.International_sales) AS Total_Revenue,
    Movies.Rating
FROM Movies
JOIN Boxoffice ON Movies.Id = Boxoffice.Movie_id
ORDER BY Total_Revenue DESC;
