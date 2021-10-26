DELIMITER $ $ CREATE PROCEDURE exibir_historico_completo_por_funcionario(in email VARCHAR(25)) BEGIN
SELECT
    DISTINCT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
    D.DEPARTMENT_NAME AS `Departamento`,
    J.JOB_TITLE AS `Cargo`
FROM
    hr.employees AS E
    INNER JOIN hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
    INNER JOIN hr.departments AS D
    INNER JOIN hr.jobs AS J ON J.JOB_ID = JH.JOB_ID
    AND D.DEPARTMENT_ID = JH.DEPARTMENT_ID
WHERE
    email = E.EMAIL
ORDER BY
    `Departamento`,
    `Cargo`;

END $ $ DELIMITER;
