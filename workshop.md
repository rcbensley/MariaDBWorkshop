Slides
Books and missing lecture

Environment
Run vm, fix errors
Has MariaDB started?
Error log
Config files
Clients:
- mysql
- GUI?

Explore MariaDB server
Show schemas, databases.

What is defined? Global variables.
What is happening? Status, process list
Information schema
Where is performance schema?

Create a database
Use a database. 
Built in functions. 
Help
Source or pipe a file

Create a simple table.
Insert some data.


## Environment

Run the VM:

    $ cd path/to/MariaDBWorkshop/vm
    $ vagrant up

Login to the VM:

    $ vagrant ssh

Login to the database:

    $ mysql

Login to the database as root:

    $ sudo mysql


## Configuration and Logs

Where is our error log?

    $ less /var/lib/mysql/error.log

Where and what is in our config files?

    $ cat /etc/my.cnf

Where is our data?

    $ ls -aslh /var/lib/mysql


## Explore MariaDB Server

Login to our database:

    $ mysql

Login as root, using socket authentication:

    $ sudo mysql

## 


## Setup Replication

Create a new user for replication on both the master and the slave:

    SQL> grant replication slave on *.* to 'repl'@'%' identified by 'repl123'; 

What position is our master at?

    SQL> show master status;

Setup replication on our slave:

    SQL> change master to master_host='172.10.10.10',master_log_file='my_bin_log.X',master_log_pos=Y,master_user='repl',master_password='repl123';

Did it work?

    SQL> SHOW SLAVE STATUS\G


## Creating Data

Let's make a new database and use it, on the master (db1):

    SQL> CREATE DATABASE shop;
    SQL> USE shop;

Now create a table in this new database:
    SQL> source /vagrant/table.sql;

Does this new database and table exist on the slave (db2)?:

    SQL> SHOW CREATE TABLE shop.orders.sql;

Insert some data:

    SQL> INSERT INTO TABLE shop.orders (customer_id, product_id, invoice_id) VALUES (1, 2, 3);

Select some data:

    SQL > SELECT COUNT(*) FROM shop.orders;
    SQL > SELECT * FROM shop.orders;
    SQL > SELECT * FROM shop.orders WHERE order_id = LAST_INSERT_ID();