 create database banking_management;
Query OK, 1 row affected (0.02 sec)

mysql> use banking_management;
Database changed
mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| banking_management        |
| college                   |
| college_management_system |
| dayone                    |
| information_schema        |
| instagram                 |
| movie_ticket_booking      |
| mysql                     |
| performance_schema        |
| sakila                    |
| students                  |
| sys                       |
| world                     |
| youtube                   |
+---------------------------+
14 rows in set (0.03 sec)

mysql> create table customers (customer_id int primary key auto_increment,name varchar(100) not null,phone varchar(15)unique,email varchar(100)unique,address varchar(200));
Query OK, 0 rows affected (0.07 sec)

mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| banking_management        |
| college                   |
| college_management_system |
| dayone                    |
| information_schema        |
| instagram                 |
| movie_ticket_booking      |
| mysql                     |
| performance_schema        |
| sakila                    |
| students                  |
| sys                       |
| world                     |
| youtube                   |
+---------------------------+
14 rows in set (0.00 sec)

mysql> insert into customers(name,phone,email,address)values('Nivetha','7032288788','nivetha03@gmail.com','ongole'),
    -> ('Anupriya','9876543210','anupriya25@gmail.com','chandrapadu'),
    -> ('Anusha','8907654321','anu16@gmail.com','nellore'),
    -> ('apoorva','7890654321','appu04@gmail.com','ongole'),
    -> ('prasanna','6789054321','lucky19@gmail.com','kandukuru'),
    -> ('srija','9123456780','srija29@gmail.com','chimakurthi'),
    -> ('poojitha','8765432190','pooja02@gmail.com','pelluru'),
    -> ('johnpaul','6304274539','john23@gmail.com','darsi'),
    -> ('venakatsai','78906543210','venakat7@gmail.com','housingboard'),
    -> ('surya','89076543210','surya282gmail.com','guntur');
Query OK, 10 rows affected (0.04 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> CREATE TABLE customers (
    ->     customer_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     name VARCHAR(100) NOT NULL,
    ->     phone VARCHAR(15) UNIQUE,
    ->     email VARCHAR(100) UNIQUE,
    ->     address VARCHAR(200)
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> INSERT INTO customers (name, phone, email, address)
    -> VALUES
    -> ('Rahul', '9876543210', 'rahul@gmail.com', 'Ongole'),
    -> ('Priya', '9876543211', 'priya@gmail.com', 'Vijayawada'),
    -> ('Arun', '9876543212', 'arun@gmail.com', 'Chennai'),
    -> ('Sneha', '9876543213', 'sneha@gmail.com', 'Bangalore'),
    -> ('Kiran', '9876543214', 'kiran@gmail.com', 'Hyderabad'),
    -> ('Anjali', '9876543215', 'anjali@gmail.com', 'Guntur'),
    -> ('Ravi', '9876543216', 'ravi@gmail.com', 'Nellore'),
    -> ('Divya', '9876543217', 'divya@gmail.com', 'Tirupati'),
    -> ('Suresh', '9876543218', 'suresh@gmail.com', 'Kurnool'),
    -> ('Pooja', '9876543219', 'pooja@gmail.com', 'Kadapa');
Query OK, 10 rows affected (0.04 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM customers;
+-------------+--------+------------+------------------+------------+
| customer_id | name   | phone      | email            | address    |
+-------------+--------+------------+------------------+------------+
|           1 | Rahul  | 9876543210 | rahul@gmail.com  | Ongole     |
|           2 | Priya  | 9876543211 | priya@gmail.com  | Vijayawada |
|           3 | Arun   | 9876543212 | arun@gmail.com   | Chennai    |
|           4 | Sneha  | 9876543213 | sneha@gmail.com  | Bangalore  |
|           5 | Kiran  | 9876543214 | kiran@gmail.com  | Hyderabad  |
|           6 | Anjali | 9876543215 | anjali@gmail.com | Guntur     |
|           7 | Ravi   | 9876543216 | ravi@gmail.com   | Nellore    |
|           8 | Divya  | 9876543217 | divya@gmail.com  | Tirupati   |
|           9 | Suresh | 9876543218 | suresh@gmail.com | Kurnool    |
|          10 | Pooja  | 9876543219 | pooja@gmail.com  | Kadapa     |
+-------------+--------+------------+------------------+------------+
10 rows in set (0.00 sec)

mysql> CREATE TABLE accounts (
    ->     account_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     customer_id INT NOT NULL,
    ->     account_type VARCHAR(20) NOT NULL,
    ->     balance DECIMAL(12,2) DEFAULT 0,
    ->     FOREIGN KEY (customer_id)
    ->         REFERENCES customers(customer_id)
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> INSERT INTO accounts (customer_id, account_type, balance)
    -> VALUES
    -> (1, 'Savings', 25000),
    -> (2, 'Savings', 40000),
    -> (3, 'Savings', 75000),
    -> (4, 'Savings', 30000),
    -> (5, 'Savings', 20000),
    -> (6, 'Savings', 45000),
    -> (7, 'Savings', 50000),
    -> (8, 'Savings', 60000),
    -> (9, 'Savings', 15000),
    -> (10, 'Savings', 35000);
Query OK, 10 rows affected (0.04 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM accounts;
+------------+-------------+--------------+----------+
| account_id | customer_id | account_type | balance  |
+------------+-------------+--------------+----------+
|          1 |           1 | Savings      | 25000.00 |
|          2 |           2 | Savings      | 40000.00 |
|          3 |           3 | Savings      | 75000.00 |
|          4 |           4 | Savings      | 30000.00 |
|          5 |           5 | Savings      | 20000.00 |
|          6 |           6 | Savings      | 45000.00 |
|          7 |           7 | Savings      | 50000.00 |
|          8 |           8 | Savings      | 60000.00 |
|          9 |           9 | Savings      | 15000.00 |
|         10 |          10 | Savings      | 35000.00 |
+------------+-------------+--------------+----------+
10 rows in set (0.00 sec)

mysql> CREATE TABLE transactions (
    ->     transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     account_id INT NOT NULL,
    ->     transaction_type VARCHAR(20) NOT NULL,
    ->     amount DECIMAL(12,2) NOT NULL,
    ->     transaction_date DATE DEFAULT (CURRENT_DATE),
    ->     FOREIGN KEY (account_id)
    ->         REFERENCES accounts(account_id)
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> INSERT INTO transactions
    -> (account_id, transaction_type, amount)
    -> VALUES
    -> (1, 'Deposit', 5000),
    -> (2, 'Withdrawal', 2000),
    -> (3, 'Deposit', 10000),
    -> (4, 'Withdrawal', 3000),
    -> (5, 'Deposit', 7000),
    -> (6, 'Withdrawal', 5000),
    -> (7, 'Deposit', 15000),
    -> (8, 'Withdrawal', 4000),
    -> (9, 'Deposit', 8000),
    -> (10, 'Withdrawal', 6000);
Query OK, 10 rows affected (0.04 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM transactions;
+----------------+------------+------------------+----------+------------------+
| transaction_id | account_id | transaction_type | amount   | transaction_date |
+----------------+------------+------------------+----------+------------------+
|              1 |          1 | Deposit          |  5000.00 | 2026-09-11       |
|              2 |          2 | Withdrawal       |  2000.00 | 2026-09-11       |
|              3 |          3 | Deposit          | 10000.00 | 2026-09-11       |
|              4 |          4 | Withdrawal       |  3000.00 | 2026-09-11       |
|              5 |          5 | Deposit          |  7000.00 | 2026-09-11       |
|              6 |          6 | Withdrawal       |  5000.00 | 2026-09-11       |
|              7 |          7 | Deposit          | 15000.00 | 2026-09-11       |
|              8 |          8 | Withdrawal       |  4000.00 | 2026-09-11       |
|              9 |          9 | Deposit          |  8000.00 | 2026-09-11       |
|             10 |         10 | Withdrawal       |  6000.00 | 2026-09-11       |
+----------------+------------+------------------+----------+------------------+
10 rows in set (0.00 sec)

mysql> select c.customer_id,
    -> c.name,
    -> c.phone,
    -> a.account_id,
    -> a.account_type,
    -> a.balance
    -> from customers c
    -> join accounts a
    -> on c.customer_id = a.customer_id;
+-------------+--------+------------+------------+--------------+----------+
| customer_id | name   | phone      | account_id | account_type | balance  |
+-------------+--------+------------+------------+--------------+----------+
|           1 | Rahul  | 9876543210 |          1 | Savings      | 25000.00 |
|           2 | Priya  | 9876543211 |          2 | Savings      | 40000.00 |
|           3 | Arun   | 9876543212 |          3 | Savings      | 75000.00 |
|           4 | Sneha  | 9876543213 |          4 | Savings      | 30000.00 |
|           5 | Kiran  | 9876543214 |          5 | Savings      | 20000.00 |
|           6 | Anjali | 9876543215 |          6 | Savings      | 45000.00 |
|           7 | Ravi   | 9876543216 |          7 | Savings      | 50000.00 |
|           8 | Divya  | 9876543217 |          8 | Savings      | 60000.00 |
|           9 | Suresh | 9876543218 |          9 | Savings      | 15000.00 |
|          10 | Pooja  | 9876543219 |         10 | Savings      | 35000.00 |
+-------------+--------+------------+------------+--------------+----------+
10 rows in set (0.01 sec)

mysql> SELECT
    ->     t.transaction_id,
    ->     c.name,
    ->     a.account_id,
    ->     t.transaction_type,
    ->     t.amount,
    ->     t.transaction_date
    -> FROM transactions t
    -> JOIN accounts a
    ->     ON t.account_id = a.account_id
    -> JOIN customers c
    ->     ON a.customer_id = c.customer_id;
+----------------+--------+------------+------------------+----------+------------------+
| transaction_id | name   | account_id | transaction_type | amount   | transaction_date |
+----------------+--------+------------+------------------+----------+------------------+
|              1 | Rahul  |          1 | Deposit          |  5000.00 | 2026-09-11       |
|              2 | Priya  |          2 | Withdrawal       |  2000.00 | 2026-09-11       |
|              3 | Arun   |          3 | Deposit          | 10000.00 | 2026-09-11       |
|              4 | Sneha  |          4 | Withdrawal       |  3000.00 | 2026-09-11       |
|              5 | Kiran  |          5 | Deposit          |  7000.00 | 2026-09-11       |
|              6 | Anjali |          6 | Withdrawal       |  5000.00 | 2026-09-11       |
|              7 | Ravi   |          7 | Deposit          | 15000.00 | 2026-09-11       |
|              8 | Divya  |          8 | Withdrawal       |  4000.00 | 2026-09-11       |
|              9 | Suresh |          9 | Deposit          |  8000.00 | 2026-09-11       |
|             10 | Pooja  |         10 | Withdrawal       |  6000.00 | 2026-09-11       |
+----------------+--------+------------+------------------+----------+------------------+
10 rows in set (0.00 sec)

mysql> SELECT
    ->     c.name,
    ->     a.account_type,
    ->     a.balance
    -> FROM customers c
    -> JOIN accounts a
    -> ON c.customer_id = a.customer_id
    -> WHERE a.balance > 30000;
+--------+--------------+----------+
| name   | account_type | balance  |
+--------+--------------+----------+
| Priya  | Savings      | 40000.00 |
| Arun   | Savings      | 75000.00 |
| Anjali | Savings      | 45000.00 |
| Ravi   | Savings      | 50000.00 |
| Divya  | Savings      | 60000.00 |
| Pooja  | Savings      | 35000.00 |
+--------+--------------+----------+
6 rows in set (0.04 sec)

mysql> SELECT SUM(balance) AS total_bank_balance
    -> FROM accounts;
+--------------------+
| total_bank_balance |
+--------------------+
|          395000.00 |
+--------------------+
1 row in set (0.04 sec)

mysql> SELECT SUM(balance) AS total_bank_balance
    -> FROM accounts;
+--------------------+
| total_bank_balance |
+--------------------+
|          395000.00 |
+--------------------+
1 row in set (0.04 sec)

mysql> select max(balance) as highest_balance
    -> from accounts;
+-----------------+
| highest_balance |
+-----------------+
|        75000.00 |
+-----------------+
1 row in set (0.00 sec)

mysql> select count(*) as total_customers
    -> from customers;
+-----------------+
| total_customers |
+-----------------+
|              10 |
+-----------------+
1 row in set (0.00 sec)

mysql> select * from customers;
+-------------+--------+------------+------------------+------------+
| customer_id | name   | phone      | email            | address    |
+-------------+--------+------------+------------------+------------+
|           1 | Rahul  | 9876543210 | rahul@gmail.com  | Ongole     |
|           2 | Priya  | 9876543211 | priya@gmail.com  | Vijayawada |
|           3 | Arun   | 9876543212 | arun@gmail.com   | Chennai    |
|           4 | Sneha  | 9876543213 | sneha@gmail.com  | Bangalore  |
|           5 | Kiran  | 9876543214 | kiran@gmail.com  | Hyderabad  |
|           6 | Anjali | 9876543215 | anjali@gmail.com | Guntur     |
|           7 | Ravi   | 9876543216 | ravi@gmail.com   | Nellore    |
|           8 | Divya  | 9876543217 | divya@gmail.com  | Tirupati   |
|           9 | Suresh | 9876543218 | suresh@gmail.com | Kurnool    |
|          10 | Pooja  | 9876543219 | pooja@gmail.com  | Kadapa     |
+-------------+--------+------------+------------------+------------+
10 rows in set (0.00 sec)

mysql> update customers
    -> set phone = '8907654321'
    -> where customer_id =3;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customers
    -> where customer_id =3;
+-------------+------+------------+----------------+---------+
| customer_id | name | phone      | email          | address |
+-------------+------+------------+----------------+---------+
|           3 | Arun | 8907654321 | arun@gmail.com | Chennai |
+-------------+------+------------+----------------+---------+
1 row in set (0.03 sec)

mysql> select * from customers;
+-------------+--------+------------+------------------+------------+
| customer_id | name   | phone      | email            | address    |
+-------------+--------+------------+------------------+------------+
|           1 | Rahul  | 9876543210 | rahul@gmail.com  | Ongole     |
|           2 | Priya  | 9876543211 | priya@gmail.com  | Vijayawada |
|           3 | Arun   | 8907654321 | arun@gmail.com   | Chennai    |
|           4 | Sneha  | 9876543213 | sneha@gmail.com  | Bangalore  |
|           5 | Kiran  | 9876543214 | kiran@gmail.com  | Hyderabad  |
|           6 | Anjali | 9876543215 | anjali@gmail.com | Guntur     |
|           7 | Ravi   | 9876543216 | ravi@gmail.com   | Nellore    |
|           8 | Divya  | 9876543217 | divya@gmail.com  | Tirupati   |
|           9 | Suresh | 9876543218 | suresh@gmail.com | Kurnool    |
|          10 | Pooja  | 9876543219 | pooja@gmail.com  | Kadapa     |
+-------------+--------+------------+------------------+------------+
10 rows in set (0.00 sec)

mysql> INSERT INTO transactions
    -> (account_id, transaction_type, amount)
    -> VALUES
    -> (1, 'Deposit', 5000);
Query OK, 1 row affected (0.04 sec)

mysql> select * from accounts
    -> where account_id =1;
+------------+-------------+--------------+----------+
| account_id | customer_id | account_type | balance  |
+------------+-------------+--------------+----------+
|          1 |           1 | Savings      | 30000.00 |
+------------+-------------+--------------+----------+
1 row in set (0.00 sec)

mysql> select * from transactions
    -> where account_id =1;
+----------------+------------+------------------+---------+------------------+
| transaction_id | account_id | transaction_type | amount  | transaction_date |
+----------------+------------+------------------+---------+------------------+
|              1 |          1 | Deposit          | 5000.00 | 2026-09-11       |
|             11 |          1 | Deposit          | 5000.00 | 2026-09-11       |
+----------------+------------+------------------+---------+------------------+
2 rows in set (0.03 sec)


mysql> update accounts
    -> set balance = balance -2000
    -> where account_id =1;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT
    ->     t.transaction_id,
    ->     c.name,
    ->     a.account_id,
    ->     t.transaction_type,
    ->     t.amount,
    ->     t.transaction_date
    -> FROM transactions t
    -> JOIN accounts a
    ->     ON t.account_id = a.account_id
    -> JOIN customers c
    ->     ON a.customer_id = c.customer_id;
+----------------+--------+------------+------------------+----------+------------------+
| transaction_id | name   | account_id | transaction_type | amount   | transaction_date |
+----------------+--------+------------+------------------+----------+------------------+
|              1 | Rahul  |          1 | Deposit          |  5000.00 | 2026-09-11       |
|             11 | Rahul  |          1 | Deposit          |  5000.00 | 2026-09-11       |
|              2 | Priya  |          2 | Withdrawal       |  2000.00 | 2026-09-11       |
|              3 | Arun   |          3 | Deposit          | 10000.00 | 2026-09-11       |
|              4 | Sneha  |          4 | Withdrawal       |  3000.00 | 2026-09-11       |
|              5 | Kiran  |          5 | Deposit          |  7000.00 | 2026-09-11       |
|              6 | Anjali |          6 | Withdrawal       |  5000.00 | 2026-09-11       |
|              7 | Ravi   |          7 | Deposit          | 15000.00 | 2026-09-11       |
|              8 | Divya  |          8 | Withdrawal       |  4000.00 | 2026-09-11       |
|              9 | Suresh |          9 | Deposit          |  8000.00 | 2026-09-11       |
|             10 | Pooja  |         10 | Withdrawal       |  6000.00 | 2026-09-11       |
+----------------+--------+------------+------------------+----------+------------------+
11 rows in set (0.00 sec)
