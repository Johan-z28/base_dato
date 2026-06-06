USE db_Filmex;

-- Calcula cuanto dinero ha pagado un cliente

DELIMITER $$
CREATE PROCEDURE sp_total_pagado_cliente (
    IN  p_id_cliente   INT,
    OUT p_total_pagado DECIMAL(10,2)
)
BEGIN
    SELECT SUM(p.value)
    INTO  p_total_pagado
    FROM  tbl_payments p
    INNER JOIN tbl_sales s ON p.id_sales = s.id_sales
    WHERE s.id_customers = p_id_cliente;
END $$
DELIMITER ;

CALL sp_total_pagado_cliente(1, @cuanto_pago);
SELECT @cuanto_pago AS total_pagado;

-- Busca por Id de la película cuantas funciones tiene programadas

DELIMITER $$
CREATE PROCEDURE sp_funciones_pelicula (
    IN  p_id_movie      VARCHAR(5),
    OUT p_titulo        VARCHAR(80),
    OUT p_num_funciones INT
)
BEGIN
    SELECT title
    INTO  p_titulo
    FROM  tbl_movies
    WHERE id_movies = p_id_movie;

    SELECT COUNT(*)
    INTO  p_num_funciones
    FROM  tbl_functions
    WHERE id_movies = p_id_movie;
END $$
DELIMITER ;

CALL sp_funciones_pelicula('MV001', @titulo, @funciones);
SELECT @titulo AS pelicula, @funciones AS numero_de_funciones;