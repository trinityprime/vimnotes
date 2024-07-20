1. (i) Retrieve the full details of all the Orders. (2 methods) (Ans : 23 rows selected)
(ii) Study the output. In what order are the rows sorted ? (In ascending order of .)
(iii) Amend your SQL so that the output rows are arranged in ascending order of the Customer Number.
SELECT * FROM order
ORDER BY order_num
1



SELECT FNAME, LNAME, ADDRESS1, ADDRESS2, CITY, STATE_CODE, ZIPCODE FROM dbms_orders.customer
ORDER BY CUSTOMER_NUM
2. (i) List the full name (i.e. fname and lname) and the full address (i.e. address1, address2, city,
	state_code and zipcode) of all the Customer. (Ans : 28 rows selected)
(ii) Study the output. What the values in the state_code ? (Ans : CA, )
Hint: you may write another SQL to help you to retrieve the distinct values in state_code.
(iii) Amend your SQL in part (i) so that the output rows are arranged in ascending order of the Lname.

Computed/derived column, round( ) function
SELECT ORDER_NUM, SHIP_CHARGE, 
ROUND(SHIP_CHARGE * 1.10, 0) AS new_ship_charge
FROM ORDERS;
3. The company has just announced a 10% increase in shipping charges for shipping the Orders.
(i) List the Order Number, the existing shipping charge (i.e. ship_charge column) and the new
shipping charge (derived from the existing shipping charge column) for all the Orders. Give the
derived column a name (alias) called ‘new_ship_charge’. (23 rows selected)

(ii) Amend your SQL to round the new shipping charge to the nearest dollars, i.e. 0 decimal place.




Concatenation, substr( ) function
SELECT CONCAT(FNAME, ' ', LNAME) AS FULL_NAME
FROM CUSTOMER;
4. (i) List the customer’s full name (i.e. concatenate the first name and the last name to form one field) of all the Customer. (28 rows selected)

SELECT SUBSTR(ZIPCODE, -3) AS LAST_THREE_ZIP
FROM CUSTOMER;
(ii) List the last 3 characters of the customer’s zip code. (Zip code is 5-characters.)

WHERE condition clause
5. (i) Amend your SQL in question 2 (i) to retrieve only those customer living in state ‘AZ’. (Ans : 2 rows selected)
SELECT * FROM dbms_orders.customer WHERE STATE_CODE='AZ'

(ii) Retrieve full details of those Orders which have not been paid yet, i.e. Paid Date has NULL value. (Ans : 6 rows selected)
SELECT * FROM dbms_orders.orders WHERE PAID_DATE IS NULL;

(iii) Retrieve full details of those Products (from Product table) supplied by supplier ‘HRO’. (Ans : 12 rows selected)
SELECT * FROM dbms_orders.product WHERE SUPPL_CODE='HRO'

(iv) List the product number, product description (from Product_desc table) of those products related to ‘tennis’, i.e. tennis racquet, tennis ball, etc. (Ans : 2 rows selected)
SELECT * FROM dbms_orders.product_desc WHERE PROD_DESC LIKE '%tennis%'

(v) List supplier code, supplier name (from Supplier table) of those suppliers whose name starts with letter ‘H’. (Hint : use substr( ) function in WHERE clause) (Ans : 2 rows selected)
SELECT SUPPL_CODE, SUPPL_NAME FROM dbms_orders.supplier WHERE substr(SUPPL_NAME, 1,1) = 'H' ;



Multiple Tables Queries (INNER JOIN .. ON)
For question 6 to 8, explore how you can add in an additional condition in the WHERE clause, to answer the questions prompted.

	6. One customer can place one or more orders. List the customer info (i.e. customer number, first name, last name) and his/her order info (i.e. order number, order date). (Ans : 23 rows selected) Hint : Join Customer and Orders tables. What are the orders placed by customer 104 (Anthony Higgins) ? (1001, , , )
	SELECT C.CUSTOMER_NUM, C.FNAME, C.LNAME, O.ORDER_NUM, O.ORDER_DATE
	FROM CUSTOMER C
	JOIN ORDERS O ON C.CUSTOMER_NUM = O.CUSTOMER_NUM;

	7. One order can consist of one or more products. List the order info (i.e. order number, order date) and the products bought in the orders (list product number and quantity). (Ans : 67 rows selected) Hint : Join Orders and Order_detail tables. What are the products bought in order 1022 ? (309, , )
	SELECT O.ORDER_NUM, O.ORDER_DATE, OD.PROD_NUM, OD.QUANTITY
	FROM ORDERS O
	JOIN ORDER_DETAIL OD ON O.ORDER_NUM = OD.ORDER_NUM;

	8. One product (e.g. tennis ball) can be supplied by many suppliers (refer records in Product table). List the product info (product number, product description) and its supplier’s info (supplier code, supplier name). (Ans : 74 rows selected) Hint : Join Product to Product_desc, Supplier tables. Who are the suppliers for ‘football’ ? (Hero, )
	SELECT P.PROD_NUM, PD.PROD_DESC, S.SUPPL_CODE, S.SUPPL_NAME
	FROM PRODUCT P
	JOIN PRODUCT_DESC PD ON P.PROD_NUM = PD.PROD_NUM
	JOIN SUPPLIER S ON P.SUPPL_CODE = S.SUPPL_CODE;


