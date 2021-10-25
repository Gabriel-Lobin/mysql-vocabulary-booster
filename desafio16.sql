DELIMITER $ $ CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25)) RETURNS INT DETERMINISTIC BEGIN DECLARE total_empregos INT;

SELECT
    COUNT(*)
FROM
    hr.employees AS E
    INNER JOIN hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE
    email = E.EMAIL INTO total_empregos;

RETURN total_empregos;

END $ $ DELIMITER;
