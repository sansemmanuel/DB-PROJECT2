SELECT n.title AS [Titles],
	n.director,
	n.country,
	i.imbd_rating AS [imbd rating]
FROM netflix n
JOIN imbd i ON n.title = i.Title
ORDER BY n.title ASC;

/*Seleccionar todas las películas de Netflix que tengan un rating de IMDB mayor a 8 y que hayan sido agregadas en el año 2020.*/
SELECT n.title AS [Title],
	n.release_year,
	n.director,
	i.imbd_rating
FROM netflix n
JOIN imbd i ON n.title = i.Title
WHERE n.release_year='2020' AND i.imbd_rating >= 8;

/*identificar el pais que mas contenido aporta a Netflix*/
SELECT country, COUNT(*) AS [Films]
FROM netflix
GROUP BY country
ORDER BY Films DESC
LIMIT 10;

/*Identificar el director con mayor cantidad de películas o series en Netflix, y comparar su éxito en términos de calificaciones y popularidad.*/
SELECT n.director,
		group_concat(n.title) AS [titles],
		i.imbd_rating
FROM netflix n
JOIN imbd i ON n.director = i.director_name
GROUP BY imbd_rating
ORDER BY imbd_rating DESC
LIMIT 10;

/*contar numero de peliculas por genero en netflix #GRAFICO BARRAS*/
SELECT type, COUNT(*) as num_titles
FROM netflix
GROUP BY type;
/*porcentaje de consulta numero de categorias*/
SELECT type, COUNT(*) * 100.0 / (SELECT COUNT (*) FROM netflix) AS pct_titles
FROM netflix
GROUP BY type; 
/*evolucion de titulos por año*/
SELECT release_year, COUNT(*) AS num_titles
FROM netflix
GROUP BY release_year
ORDER BY num_titles DESC;






