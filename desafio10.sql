SELECT
    P.ProductName AS `Produto`,
    MIN(OD.Quantity) AS `Mínima`,
    MAX(OD.Quantity) AS `Máxima`,
    ROUND(AVG(OD.Quantity), 2) AS `Média`
FROM
    w3schools.products AS P
    JOIN w3schools.order_details AS OD ON P.ProductID = OD.ProductID
    JOIN w3schools.orders AS O ON OD.OrderID = O.OrderID
GROUP BY
    `Produto`
HAVING
    `Média` > 20.00
ORDER BY
    `Média`,
    `Produto`;
