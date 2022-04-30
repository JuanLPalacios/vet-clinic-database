/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(20) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts SMALLINT NOT NULL,
    neutered BOOLEAN NOT NULL,
    weight_kg FLOAT NOT NULL,
    PRIMARY KEY( id )
);

ALTER TABLE animals ADD COLUMN species varchar(20)  NOT NULL DEFAULT '';