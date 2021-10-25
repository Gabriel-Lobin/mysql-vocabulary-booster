SELECT JOB_TITLE AS `Cargo`, CASE WHEN 5000 < MAX_SALARY AND MAX_SALARY > 10000 THEN "Baixo" WHEN 10001 < MAX_SALARY AND MAX_SALARY > 20000 THEN "Médio" ELSE "Alto" END AS `Nível` FROM hr.jobs ORDER BY `Cargo`;