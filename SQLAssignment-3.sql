1.query to display the orders placed by customer with phone number 030-0074321

SELECT 
    products.productname, shippers.shippername
FROM
    products
        RIGHT JOIN
    shippers ON products.productname = shippers.productname
WHERE
    phone = '030-0074321';
    

----------------------------------------------------------------------------------------------    
    
2.fetching all the products which are available under Category ‘Seafood’.

select * from products where category="seafood";

-------------------------------------------------------------------------------------------


3.Display the orders placed by customers not in London

select * from customer_and_products.customer where Country not in ("london");  
  
--------------------------------------------------------------------------------------------


4.select all the order which are placed for the product Chai.

select product_id,productname from products p 
left join p.product_id=orderitem.orderitemid
where productname="chai";

---------------------------------------------------------------------------------------------------
5.Write a query to display the name,department name and rating of any given employee.

select employee_table.firstname,department.departmentname,rating from employee_table

left join department on employee_table.employee_id=department.employee_id;








    