SELECT
    C1.ContactName AS `Nome`,
    C1.Country AS `País`,
    COUNT(C1.ContactName) - 1 AS `Número de compatriotas`
FROM
    w3schools.customers AS C1,
    w3schools.customers AS C2
WHERE
    C1.Country = C2.Country
GROUP BY
    `Nome`,
    `País`
ORDER BY
    `Nome`;
