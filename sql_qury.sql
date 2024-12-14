# primary analysis of our dataset.
# Quring or retriviewing the data from the tables in the sales databases.

select * from sales.customers;
select * from sales.date;
select * from sales.markets;
select * from sales.products;
select * from sales.transactions;

# conting total number of transactions.
select count(*) from sales.transactions;

# count the tatol number of customers.
select count(*) from sales.customers;

# printing the first 5 records.
select * from sales.customers limit 5;
select * from sales.date limit 5;
select * from sales.markets limit 5;
select * from sales.products limit 5;
select * from sales.transactions limit 5;

# print the all the records where market code is Mark001
select * from sales.markets where markets_code="Mark001";
select * from sales.transactions  where market_code="Mark001";

# how many transactions have in USD currency.
select * from sales.transactions where currency = "USD";

# how many transactions have in INR currency.
select count(*) from sales.transactions where currency = "INR";

# i want know transactions done in 2020
SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where sales.date.year="2020";

# Show total revenue in year 2020
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r" or transactions.currency="USD\r";

# Show total revenue in year 2020, January Month,
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");
# Show total revenue in year 2020 in Chennai
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.market_code="Mark001";

