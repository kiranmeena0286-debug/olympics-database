# Olympics Database Management System

## Project Overview

The Olympics Database Management System is a relational database project designed to store and manage information related to Olympic Games, including athletes, countries, sports, events, venues, sponsors, tickets, and medals.

The database is designed using an Entity-Relationship (ER) model and applies database normalization techniques to reduce redundancy and maintain data consistency.

## Database Structure

The project consists of the following tables:

- `COUNTRY` - Stores country information.
- `OLYMPICS` - Stores Olympic year, city, season, and host country.
- `ATHLETE` - Stores athlete details including name, gender, date of birth, height, weight, and country.
- `SPORT` - Stores information about different sports.
- `ORGANISES` - Represents the relationship between Olympic editions and sports.
- `VENUE` - Stores venue name, location, capacity, and country.
- `EVENT` - Stores event details, dates, sport, and venue.
- `SPONSOR` - Stores sponsor information.
- `SPONSORED_BY` - Represents the relationship between events and sponsors.
- `TICKETS` - Stores ticket information associated with events.
- `COST` - Stores seat-wise ticket costs.
- `MEDAL` - Stores medal information associated with athletes.

## Database Design

The database was designed using an Entity-Relationship model to establish relationships between the different entities involved in the Olympic Games.

Key relationships include:

- Countries host Olympic Games.
- Olympic editions organize different sports.
- Sports contain multiple events.
- Events are conducted at venues.
- Athletes are associated with countries.
- Athletes can receive medals.
- Events can have multiple sponsors.
- Events can have multiple tickets.

## Normalization

The database applies the following normalization techniques:

### First Normal Form (1NF)

Ensures that attributes contain atomic values and eliminates repeating groups.

### Second Normal Form (2NF)

Removes partial dependencies by ensuring that non-key attributes depend on the complete primary key.

### Third Normal Form (3NF)

Removes transitive dependencies between non-key attributes.

### Boyce-Codd Normal Form (BCNF)

Ensures that every determinant in a relation is a candidate key.

The ticket relation was further decomposed into `TICKETS` and `COST` to address the dependency between `SEAT_NO` and `COST`.

## SQL Implementation

The project uses SQL to:

- Create relational tables
- Define primary keys
- Define foreign keys
- Establish relationships between tables
- Insert data into tables
- Retrieve stored data using SQL queries

Example:

```sql
CREATE TABLE COUNTRY(
    COUNTRY_ID INTEGER PRIMARY KEY,
    COUNTRY_NAME VARCHAR(50)
);

INSERT INTO COUNTRY
VALUES(91, 'India');

SELECT * FROM COUNTRY;
