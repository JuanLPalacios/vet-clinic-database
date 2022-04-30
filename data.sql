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
    (id,    name,          date_of_birth,  weight_kg,  neutered,   escape_attempts,    species_id,    owner_id ) VALUES 
	(1,     'Agumon',      '2020-02-03',   10.23,      TRUE,       0,                  2,             1        ),
    (2,     'Gabumon',     '2018-11-15',   8,          TRUE,       2,                  2,             2        ),
    (3,     'Pikachu',     '2021-01-07',   15.04,      FALSE,      1,                  1,             2        ),
    (4,     'Devimon',     '2017-05-12',   11,         TRUE,       5,                  2,             3        ),
    (5,     'Charmander',  '2020-02-08',   -11,        FALSE,      0,                  1,             4        ),
    (6,     'Plantmon',    '2021-11-15',   -5.7,       TRUE,       2,                  2,             3        ),
    (7,     'Squirtle',    '1993-04-02',   -12.13,     FALSE,      3,                  1,             4        ),
    (8,     'Angemon',     '2005-06-12',   -45,        TRUE,       1,                  2,             5        ),
    (9,     'Boarmon',     '2005-06-07',   20.4,       TRUE,       7,                  2,             5        ),
    (10,    'Blossom',     '1998-10-13',   17,         TRUE,       3,                  1,             4        ),
    (11,    'Ditto',       '2022-05-14',   22,         TRUE,       4,                  1,             NULL     );

INSERT INTO vets
    (id,    name,                   age,    date_of_graduation  ) VALUES 
    (1,     'William Tatcher',      45,     '2000-04-23'        ),
    (2,     'Maisy Smith',          26,     '2019-01-17'        ),
    (3,     'Stephanie Mendez',     64,     '1981-05-04'        ),
    (4,     'Jack Harkness',        38,     '2008-06-08'        );

INSERT INTO specializations
    (vet_id, species_id ) VALUES
    (1,      1          ),
    (3,      2          ),
    (3,      1          ),
    (4,      2          );

INSERT INTO visits
    (animal_id, vet_id, date_of_visit   ) VALUES
    (1,         1,      '2020-05-24'    ),
    (1,         3,      '2020-07-22'    ),
    (2,         4,      '2021-02-02'    ),
    (3,         2,      '2020-01-05'    ),
    (3,         2,      '2020-03-08'    ),
    (3,         2,      '2020-05-14'    ),
    (4,         3,      '2021-05-04'    ),
    (5,         4,      '2021-02-24'    ),
    (6,         2,      '2019-12-21'    ),
    (6,         1,      '2020-08-10'    ),
    (6,         2,      '2021-04-07'    ),
    (7,         3,      '2019-09-29'    ),
    (8,         4,      '2020-10-03'    ),
    (8,         4,      '2020-11-04'    ),
    (9,         2,      '2019-01-24'    ),
    (9,         2,      '2019-05-15'    ),
    (9,         2,      '2020-02-27'    ),
    (9,         2,      '2020-08-03'    ),
    (10,        3,      '2020-05-24'    ),
    (10,        1,      '2021-01-11'    );
