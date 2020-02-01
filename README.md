# MariaDBWorkshop
Ricky's Totally Cool MariaDB Workshop

### DISCLAIMER
Although I work for MariaDB, all thoughts oppinions and topics discussed are my own. My word is far from final. I am merely speaking from experience, having fun, and sharing the love with the various tech communities I have been a part of for around 20 years to date.

This workshop is licensed under Creative Commons.

## Agenda

### Introduction, 30 Minutes
* An introduction and brief history of MariaDB.
* Why choose MariaDB?
** OLTP Engines
** Replication and Sharding
** Column Store
** S3 and Connect Engines
** SQL Data Types and Languages
** Statistics
* Why should you not choose MariaDB?
** You still might learn something today.

### Installation and Tooling, 60 Minutes
* Installation and connection.
** What's going in our config?
*** ACID
** Multiple installation options and platforms.
* Cover common tools and clients.
** CLI and GUI tools.
** What does it come with?
** On MacOS/Linux/Unix?
** On Windows?

### Create and Load Data, 60 Minutes
* Cover a common schema design
** Partitioning?
** JSON
** Dynamic and Virtual Columns
** Using the Explain Plan to diagnose query performance.
* Data life cycle
** Backup
** Restore
** Archiving, basic ETL into ColumnStore from InnoDB.
* Select into outfile
* Load Data infile

### Replication, 60 Minutes
* Covnert our server into a Master.
* Create a slave from our Master data.
* Monitor Replication
** Break Replication
** Repair Replication
* Advanced Scenarios and their requirements.
** Scaling to TB+/PB+ levels is a problem. Not an opportunity.
