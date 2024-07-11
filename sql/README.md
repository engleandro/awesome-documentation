# AWESOME DOCUMENTATION FOR SQL

Structured Query Language (SQL) is a standardized (declarative) programming language used for managing and manipulating relational databases. SQL is essential for querying, updating, and managing data in databases.

SQL, developed by IBM in the 1970s, has become the standard language for relational database management systems (RDBMS). It allows users to create, read, update, and delete data within a transactional database. SQL is widely used in various applications, from small-scale projects to large enterprise systems.

# ACID Properties of Transactional Databases

ACID is an acronym for the four properties of a transactional database system: Atomicity, Consistency, Isolation, and Durability. These properties ensure that database transactions are processed reliably, even in the presence of errors, power failures, or other disruptions.
- **Atomicity** ensures that a series of operations within a transaction are all completed successfully or none at all. This means that if any part of the transaction fails, the entire transaction is rolled back, and the database remains unchanged.
- **Consistency** ensures that a transaction brings the database from one valid state to another, maintaining database rules, such as constraints, cascades, and triggers. This property guarantees that any transaction will lead to a valid state.
- **Isolation** ensures that the operations of a transaction are isolated from other transactions. This means that concurrently executed transactions do not interfere with each other, leading to a consistent state.
- **Durability** ensures that once a transaction has been committed, it will remain committed, even in the case of a system failure. This means that the results of a transaction are permanently stored in the database.

## Key Concepts

- **Database**: An organized collection of data.
- **Table**: A set of data elements organized in rows and columns.
- **Column**: A set of data values of a particular type, one for each row of the table.
- **Row**: A single, implicitly structured data item in a table.
- **Primary Key**: A unique identifier for a table row.
- **Foreign Key**: A field (or collection of fields) in one table that uniquely identifies a row of another table.

## SQL Statements
SQL statements can be divide into:
- **Data Definition Language (DML)**: DDL statements are used to define and manage the structure of the database, including creating, modifying, and dropping database objects.
- **Data Manipulation Language (DML)**: DML statements are used to manipulate the data stored in the database tables.
- **Data Query Language (DQL)**: DQL statements are used to retrieve data from the database tables.
- **Data Control Language (DCL)**: DCL statements are used to control access and permissions to the database objects.
- **Transaction Control Language (TCL)**: TCL statements are used to manage transactions in the database, ensuring data integrity and consistency.

## SQL Syntax

SQL syntax varies slightly between different database systems, but the core commands remain consistent.

## SQL Engines

Major SQL engines:
- [SQLite Documentation](https://www.sqlite.org/docs.html)
- [PostgreSQL Documentation](https://www.postgresql.org/docs/)
- [MySQL Documentation](https://dev.mysql.com/doc/)
- [Oracle Database Documentation](https://docs.oracle.com/en/database/)
- [Microsoft SQL Server Documentation](https://docs.microsoft.com/en-us/sql/sql-server/)
- [MariaDB Documentation](https://mariadb.com/kb/en/documentation/)

New and innovative SQL-like engines:

- A distributed SQL Engine with [CockroachDB Documentation](https://www.cockroachlabs.com/docs/)
- Hybrid Transactional and Analytical Processing (HTAP) workloads with [TiDB Documentation](https://docs.pingcap.com/tidb/stable)
- [Apache Spark](https://spark.apache.org/docs/latest/) is not a SQL Engine, but it is very powerful data processing solution in applications with dala lake and data lakehouse.