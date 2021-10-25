SELECT
    J.JOB_TITLE AS `Cargo`,
    ROUND(AVG(E.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN 2000 <= ROUND(AVG(E.SALARY), 2)
        AND ROUND(AVG(E.SALARY), 2) <= 5800 THEN "Júnior"
        WHEN 5801 <= ROUND(AVG(E.SALARY), 2)
        AND ROUND(AVG(E.SALARY), 2) <= 7500 THEN "Pleno"
        WHEN 7501 <= ROUND(AVG(E.SALARY), 2)
        AND ROUND(AVG(E.SALARY), 2) <= 10500 THEN "Sênior"
        ELSE "CEO"
    END AS `Senioridade`
FROM
    hr.jobs AS J
    RIGHT JOIN hr.employees AS E ON J.JOB_ID = E.JOB_ID
GROUP BY
    `Cargo`
ORDER BY
    `Média salarial`,
    `Cargo`;
