2.Display the employee details whose joined at first

select * from employee_database.employee_table order by doj asc limit 1;

---------------------------------------------------------------------------------------------------------
3.Display the employee details whose joined at recently

select * from employee_database.employee_table order by doj desc limit 1;

----------------------------------------------------------------------------------------------------------
4.query to get most expense and least expensive Product list ( name and unit price).

select products.unitprice,productname from customer_and_products.products order by unitprice desc;
select products.unitprice,productname from customer_and_products.products order by unitprice asc;

--------------------------------------------------------------------------------------------------------
5.Display the list of products that are out of stock

select * from customer_and_products.products where productquantity=0 ;

----------------------------------------------------------------------------------------------------------
6.Display the list of products whose unitinstock is less than unitonorder 

select orderitem.productid from customer_and_products.orderitem where (unitinstock<unitinorder); 

-------------------------------------------------------------------------------------------------------------
7.Display list of categories and suppliers who supply products within those categories

select productsuppliers , category from customer_and_products.products;

------------------------------------------------------------------------------------------------------------------
8.Display complete list of customers, the OrderID and date of any orders they have made

select Orderdate,OrderId from customer_and_products.customerorder;

---------------------------------------------------------------------------------------------------------------------
9.query that determines the customer who has placed the maximum number of orders

select name, max(ordernumber) as maxordersplaced from customer_and_products.customerorder;

-------------------------------------------------------------------------------------------------------------------------
10.Display the customerid whose name has substring ‘RA’

select customer_and_products.customer.customer_id,FirstName from customer_and_products.customer where FirstName like 'ra%';

----------------------------------------------------------------------------------------------------------------------------
11.Display the first word of all the company name
select companyname as firstname from customer_and_products.customer;

