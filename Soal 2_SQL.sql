CREATE TABLE item_bought (
    buyer TEXT NOT NULL,
    item TEXT NOT NULL
);

INSERT INTO item_bought (buyer, item) VALUES
('A', 'Asus'),
('B', 'Lenovo'),
('C', 'Lenovo'),
('D', 'Acer'),
('E', 'Acer'),
('F', 'Acer');

SELECT * FROM item_bought;

SELECT item FROM item_bought
GROUP BY item
HAVING COUNT(item) != (SELECT COUNT(item) FROM item_bought GROUP BY item ORDER BY COUNT(item) DESC LIMIT 1)
AND COUNT(item) != (SELECT COUNT(item) FROM item_bought GROUP BY item ORDER BY COUNT(item) ASC LIMIT 1);
