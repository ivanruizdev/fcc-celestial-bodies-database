# fcc-celestial-bodies-database

# 🌌 Celestial Bodies Database

This project was built as part of the [freeCodeCamp](https://www.freecodecamp.org/) Relational Database Certification. It involves designing and implementing a PostgreSQL database that models celestial bodies such as galaxies, stars, planets, and moons.

## 📘 Project Description

The goal was to create a normalized relational database that reflects the hierarchical structure of the universe, using:

- Primary and foreign keys
- One-to-many relationships
- Constraints: `NOT NULL`, `UNIQUE`, and more
- Data insertion with integrity validation
- Database export using `pg_dump`

## 🗃️ Database Structure

- `galaxy`: stores galaxy information
- `star`: stores stars belonging to galaxies
- `planet`: stores planets orbiting stars
- `moon`: stores moons orbiting planets

Each table includes meaningful attributes like `name`, `mass`, `description`, and boolean flags (e.g., `has_rings`, `is_spiral`).

## 📦 Files

- `universe.sql`: complete SQL dump of the database (structure + data), created using:

  ```bash
  pg_dump -cC --inserts -U your_username universe > universe.sql
  
🚀 How to Restore the Database
Ensure you have PostgreSQL installed.

Create the database:

createdb universe

Restore the dump:

  ```bash
  psql -U your_username -d universe -f universe.sql

Replace your_username with your actual PostgreSQL username.

📚 License
This project is part of the freeCodeCamp curriculum and intended for educational purposes.

🛰️ Developed as part of my journey to become a Backend Developer.

---

Let me know if you’d like to add a badge (e.g., PostgreSQL, freeCodeCamp, or project status) or a diagram of the table relationships.
