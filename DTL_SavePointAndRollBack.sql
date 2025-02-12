CREATE DATABASE ShoppingCart;
USE ShoppingCart;
CREATE TABLE Product
(
 ProductId INT PRIMARY KEY, 
 ProductName VARCHAR(40), 
 Price INT,
 Quantity INT
 );
 
 -- Populate Product Table with test data
 INSERT INTO Product VALUES(1001, 'Product-1', 1000, 100);
 INSERT INTO Product VALUES(1002, 'Product-2', 2000, 150);
 INSERT INTO Product VALUES(1003, 'Product-3', 3000, 200);
 INSERT INTO Product VALUES(1004, 'Product-4', 4000, 250);


/*ROLLBACK*/

START TRANSACTION; 
    SAVEPOINT SavePoint1;
        INSERT INTO Product VALUES(1005, 'Product-5', 5000, 500);
     INSERT INTO Product VALUES(1006, 'Product-6', 6000, 600);
        
    SAVEPOINT SavePoint2;
        INSERT INTO Product VALUES(1007, 'Product-7', 7000, 700);
      INSERT INTO Product VALUES(1008, 'Product-8', 8000, 800);
        
    SAVEPOINT SavePoint3;
        INSERT INTO Product VALUES(1009, 'Product-9', 9000, 900);
      INSERT INTO Product VALUES(1010, 'Product-10', 10000, 1000);
      