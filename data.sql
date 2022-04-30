/* Populate database with sample data. */

INSERT INTO owners 
    (id,    full_name,         age ) VALUES 
    (1,     'Sam Smith',       34  ),
    (2,     'Jennifer Orwell', 19  ),
    (3,     'Bob',             45  ),
    (4,     'Melody Pond',     77  ),
    (5,     'Dean Winchester', 14  ),
    (6,     'Jodie Whittaker', 38  );

INSERT INTO species
    (id,     name       ) VALUES 
    (1,      'Pokemon'  ),
    (2,      'Digimon'  );

INSERT INTO animals
    (name,          date_of_birth,  weight_kg,  neutered,   escape_attempts,    species_id,    owner_id ) VALUES 
	('Agumon',      '2020-02-03',   10.23,      TRUE,       0,                  2,             1        ),
    ('Gabumon',     '2018-11-15',   8,          TRUE,       2,                  2,             2        ),
    ('Pikachu',     '2021-01-07',   15.04,      FALSE,      1,                  1,             2        ),
    ('Devimon',     '2017-05-12',   11,         TRUE,       5,                  2,             3        ),
    ('Charmander',  '2020-02-08',   -11,        FALSE,      0,                  1,             4        ),
    ('Plantmon',    '2021-11-15',   -5.7,       TRUE,       2,                  2,             3        ),
    ('Squirtle',    '1993-04-02',   -12.13,     FALSE,      3,                  1,             4        ),
    ('Angemon',     '2005-06-12',   -45,        TRUE,       1,                  2,             5        ),
    ('Boarmon',     '2005-06-07',   20.4,       TRUE,       7,                  2,             5        ),
    ('Blossom',     '1998-10-13',   17,         TRUE,       3,                  1,             4        ),
    ('Ditto',       '2022-05-14',   22,         TRUE,       4,                  1,             NULL     );
