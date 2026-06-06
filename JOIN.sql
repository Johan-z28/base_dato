-- INNER JOIN: Mostrar las funciones vendidas que tiene cada película

SELECT
	dt.id_detailTickets,
	m.title AS Nombre_Película,
	f.date_functions AS Fecha,
	f.start_time AS Hora,
	dt.price_applied AS Precio_Pagado
FROM tbl_detailTickets dt
INNER JOIN tbl_functions f
	ON dt.id_functions = f.id_functions
INNER JOIN tbl_movies m
	ON f.id_movies = m.id_movies
ORDER BY fecha ASC;

-- LEFT JOIN: Monstrar la cantidad de ventas de cada pelicula

SELECT
	m.title AS Nombre_Película,
    COUNT(dt.id_detailTickets) AS Entradas_Vendidas
FROM tbl_movies m
LEFT JOIN tbl_functions f
    ON m.id_movies = f.id_movies
LEFT JOIN tbl_detailTickets dt
    ON f.id_functions = dt.id_functions
GROUP BY m.id_movies, m.title
ORDER BY entradas_vendidas DESC;

-- RIGHT JOIN: Mostrar todas las promociones y si fueron aplicadas

SELECT
    p.id_promotions,
    p.description AS Promocion,
    dt.id_detailTickets,
    dt.price_applied AS Precio_Aplicado
FROM tbl_detailTickets dt
RIGHT JOIN tbl_promotions p
    ON dt.id_promotions = p.id_promotions
ORDER BY p.id_promotions;

-- Mostrar a que función asistio cada cliente

SELECT
    c.name AS Nombre,
    c.lastname AS Apellido,
    m.title AS Nombre_Película,
    f.date_functions AS Fecha_Función,
    dt.price_applied AS Precio_Aplicado
FROM tbl_customers c
INNER JOIN tbl_sales s
    ON c.id_customers = s.id_customers
INNER JOIN tbl_detailTickets dt
    ON s.id_sales = dt.id_sales
INNER JOIN tbl_functions f
    ON dt.id_functions = f.id_functions
INNER JOIN tbl_movies m
    ON f.id_movies = m.id_movies;
