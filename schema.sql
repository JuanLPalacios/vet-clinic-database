/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(20),
    date_of_birth DATE,
    escape_attempts SMALLINT,
    neutered BIT,
    weight_kg REAL,
    PRIMARY KEY( id )
);
