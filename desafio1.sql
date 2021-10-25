SELECT
    CO.COUNTRY_NAME AS `País`,
    IF(
        RE.REGION_NAME = "Europe",
        'incluído',
        'não incluído'
    ) AS `Status Inclusão`
FROM
    hr.countries AS CO
    LEFT JOIN hr.regions AS RE ON CO.REGION_ID = RE.REGION_ID
ORDER BY
    `País`;
