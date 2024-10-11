Wine Production Database
Overview

This project implements a relational model based on the entity-relationship diagram provided in the assignment. It defines two main entities: wine and producer, and allows for various queries to retrieve and analyze data related to wine production and its producers.

Tables
1. wine
NumW: Integer (Primary Key) - Unique identifier for each wine.
Category: VARCHAR(50) - Type of wine (e.g., Red, White, Rose, etc.).
year: VARCHAR(50) - Year of production.
degree: VARCHAR(50) - Alcohol content.
2. producer
NumP: Integer (Primary Key) - Unique identifier for each producer.
FirstName: VARCHAR(50) - Producer's first name.
LastName: VARCHAR(50) - Producer's last name.
Region: VARCHAR(50) - Geographic region of the producer.
