SELECT
    COUNTRY_NAME AS PAÍS,
    IF(
        REGION_ID = 1,
        'incluído',
        'não incluído'
    ) AS 'STATUS INCLUSÃO'
FROM
    hr.countries;