Aggregate Functions
-------------------

1. (i) List the full details of all the Customers. (28 rows selected)

SELECT * FROM dbms_orders.customer ;

(ii) Amend the SQL to output the total number of Customers. (1 row -> 28)

SELECT count(*) FROM dbms_orders.customer ;



2. (i) List the full details of Customers who live in the state ‘California’. (18 rows selected)

SELECT *
FROM customer c inner join state s on c.state_code = s.state_code
WHERE s.state_name = ‘California’;

(ii) Amend the SQL to output the total number of Customers who live in the state ‘California’. (1 row -> 18)

SELECT count(*)
FROM customer c inner join state s on c.state_code = s.state_code
WHERE s.state_name = ‘California’



3. (i) List the order number and the shipping charge of those Orders placed by ‘Anthony Higgins’. (4 rows selected)

SELECT order_num, ship_charge
FROM orders o inner join customer c on c.CUSTOMER_NUM = o.CUSTOMER_NUM
WHERE FNAME = 'Anthony'
and LNAME = 'Higgins'

(ii) Amend the SQL to output the total number of Orders placed by ‘Anthony Higgins’ and the total shipping charges he has to pay. (1 row -> 4, $38)

SELECT count(*), sum(SHIP_CHARGE)
FROM orders o inner join customer c on c.CUSTOMER_NUM = o.CUSTOMER_NUM
WHERE FNAME = 'Anthony'
and LNAME = 'Higgins'



4. (i) List the unit price of all the Products. (74 rows selected)
SELECT product.UNIT_PRICE from product

(ii) Amend the SQL to output the cost of the most expensive Product. (1 row ->$960)
SELECT MAX(product.UNIT_PRICE) from product



5. (i) List the product number and the unit price of all the Products with a description of ‘running shoes’. (6 rows selected).

SELECT p.PROD_NUM, sum(p.UNIT_PRICE)
FROM product p inner join product_desc d on p.PROD_NUM = d.PROD_NUM
WHERE d.PROD_DESC = 'running shoes'


(ii) Amend the SQL to output the count of the different kinds, the most expensive, the least expensive and the average price 
(round to 2 dec pl) of all the ‘running shoes’ Products. (1 row -> 6, $102, $42.50, $83.08).


SELECT count(*), MAX(p.UNIT_PRICE) AS max, MIN(p.UNIT_PRICE) AS min, ROUND(AVG(p.UNIT_PRICE), 2) AS avg
FROM product p inner join product_desc d on p.PROD_NUM = d.PROD_NUM
WHERE d.PROD_DESC = 'running shoes'



Aggregate Functions, GROUP BY & HAVING clause
---------------------------------------------


6. (i) As one customer can place one or more orders, list for each customer, the customer’s number and the total number of orders he/she has placed. (17 rows)

SELECT CUSTOMER_NUM, COUNT(*)
FROM orders
GROUP BY CUSTOMER_NUM

(ii) Modify your answer, to display also the customer’s first name and last name. (17 rows)

SELECT c.CUSTOMER_NUM, COUNT(*), c.FNAME, c.LNAME
FROM customer c inner join orders o on c.customer_num = o.customer_num
GROUP BY c.customer_num, fname, lname

(iii) Modify your answer, to display only for those customers who have placed more than 1 order. (4 rows -> customer_num : 104, 106, 110, 117)

SELECT c.customer_name, fname, lname, count(*)
FROM orders o inner join customer c on c.customer_num = o.customer_num
GROUP BY c.customer_num, fname, lname
HAVING count(*) > 1;



7. (i) As one order can consist of one or more products, list for each order, the order’s number and the total number of items/products bought in the order.
(23 rows) Hint : Query Order_detail table.

SELECT order_num, count(*)
FROM order_detail
GROUP BY order_num

(ii) Modify your answer, to display also the total price of all products in each order. (23 rows)

SELECT order_num, count(*), sum(total_price)
FROM order_detail
GROUP BY order_num

(iii) Modify your answer, to display only for those orders that have more than 3 items. (9 rows)
SELECT order_num, count(*), sum(total_price)
FROM order_detail
GROUP BY order_num
HAVING count(*) > 3;



Subqueries
-----------

8. By using the answer to question 4 (ii) in a subquery or otherwise, list the product details 
(i.e. product number, supplier code, unit price and product description) for the most expensive product. (1 row -> 4, HSK, 960, football)


SELECT p.prod_num, suppl_code, unit_price, prod_desc
FROM product p 
INNER JOIN product_desc d ON p.prod_num = d.prod_num
WHERE unit_price = 
(
	SELECT max(unit_price) 
	FROM product);



9. By using the answer to question 6 (i) in a subquery (to exclude customers who have placed at least an order) or otherwise, list the customer details 
(i.e. first name, last name) of those customers who have not placed any orders. (11 rows, as follows :)


FNAME 		LNAME
--------------- ---------------
Carole		Sadler
Philip 		Currie
Raymond 	Vector
Charles 	Ream
Donald 		Quinn
Jane 		Miller
Lana 		Beatty
Frank 		Albertson
Dick 		Baxter
James 		Henry
Frank 		Lessor

SELECT fname, lname
FROM customer
WHERE customer_num not in (select customer_num from orders);



10. By using the answer to question 7 (iii) in a subquery or otherwise, list the order details
(i.e. order number, item number, product number, quantity) for those orders that have more than 3 items.
(41 rows -> order num : 1004, 1005, 1006, 1007, 1013, 1016, 1018, 1021, 1023)

SELECT order_num, item_num, prod_num, quantity
FROM order_detail
WHERE order_num in 
(select order_num 
	FROM order_detail 
	GROUP BY order_num 
	HAVING count(*) > 3)








