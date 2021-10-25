SELECT
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
    J.JOB_TITLE AS `Cargo`,
    JH.START_DATE AS `Data de início do cargo`,
    D.DEPARTMENT_NAME AS `Departamento`
FROM
    hr.employees AS E
    JOIN hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
    JOIN hr.jobs AS J ON J.JOB_ID = JH.JOB_ID
    JOIN hr.departments AS D ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
ORDER BY
    `Nome completo` DESC,
    `Cargo`;
