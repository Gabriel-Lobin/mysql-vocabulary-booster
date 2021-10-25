DELIMITER $ $ CREATE TRIGGER trigger_date_inserted BEFORE
INSERT
    ON w3schools.orders FOR EACH ROW BEGIN
SET
    NEW.OrderDate = DATE();

END $ $ DELIMITER;
