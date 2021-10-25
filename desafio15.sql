DELIMITER $ $ CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(25)) BEGIN
SELECT
    ROUND(AVG(E.SALARY), 2) AS `Média salarial`
FROM
    hr.jobs AS J
    INNER JOIN hr.employees AS E ON E.JOB_ID = J.JOB_ID
WHERE
    cargo = J.JOB_TITLE;

END $ $ DELIMITER;
