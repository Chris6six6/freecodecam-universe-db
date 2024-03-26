# Universe Database Creation Project

This project involves setting up a PostgreSQL database named "universe" with multiple tables representing galaxies, stars, planets, and moons. The goal is to fulfill the requirements provided by FreeCodeCamp by creating the necessary tables and ensuring they meet specific criteria.

## Project Tasks

1. Create a database named "universe".
2. Connect to the "universe" database using `\c universe`.
3. Create tables named "galaxy", "star", "planet", and "moon".
4. Each table should have a primary key column that automatically increments.
5. Each table should have a "name" column.
6. Use the INT data type for at least two non-primary or foreign key columns.
7. Use the NUMERIC data type at least once.
8. Use the TEXT data type at least once.
9. Use the BOOLEAN data type on at least two columns.
10. Establish foreign key relationships:
    - Each "star" should have a foreign key referencing a row in the "galaxy" table.
    - Each "planet" should have a foreign key referencing a row in the "star" table.
    - Each "moon" should have a foreign key referencing a row in the "planet" table.
11. Ensure the database has at least five tables.
12. Ensure each table has at least three rows.
13. Ensure the "galaxy" and "star" tables each have at least six rows.
14. Ensure the "planet" table has at least 12 rows.
15. Ensure the "moon" table has at least 20 rows.
16. Ensure each table has at least three columns.
17. Ensure the "galaxy", "star", "planet", and "moon" tables each have at least five columns.
18. At least two columns per table should not accept NULL values.
19. At least one column from each table should be required to be UNIQUE.
20. All columns named "name" should be of type VARCHAR.
21. Follow naming conventions for primary key and foreign key columns:
    - Primary key columns should be named as "table_name_id".
    - Foreign key columns should have the same name as the column they reference.

## Technologies Used

- PostgreSQL

## Setup Instructions

1. Install PostgreSQL if not already installed.
2. Open a terminal or command prompt.
3. Log in to PostgreSQL by entering: `psql --username=freecodecamp --dbname=postgres`.
4. Execute the provided SQL commands to create the "universe" database and its tables.

## Database Schema

The database schema includes the following tables:

- **galaxy**: Represents galaxies with information such as name, size, and type.
- **star**: Represents stars with information such as name, temperature, and luminosity.
- **planet**: Represents planets with information such as name, size, and distance from the star.
- **moon**: Represents moons with information such as name, orbit duration, and surface composition.
- ...

## Acknowledgments

- [FreeCodeCamp](https://www.freecodecamp.org/) for providing the project requirements.
