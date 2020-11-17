#seleccionar la primera tupla de una tabla 
SELECT *
FROM authors
limit 1;

#Windows funtions 

SELECT *
FROM (
    SELECT * OVER() AS row_id
    FROM authors
) AS alumnos_whith_row_num
;

