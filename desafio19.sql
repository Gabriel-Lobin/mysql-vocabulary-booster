USE hr;

DELIMITER $ $ CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT) RETURNS INT DETERMINISTIC BEGIN DECLARE hire_in_date INT;

SELECT
    COUNT(*) AS total
FROM
    hr.employees AS E
WHERE
    MONTH(E.HIRE_DATE) LIKE CONCAT('%', 6)
    AND YEAR(E.HIRE_DATE) LIKE 1987 INTO hire_in_date;

RETURN hire_in_date;

END $ $ DELIMITER;
