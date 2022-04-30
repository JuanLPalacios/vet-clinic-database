/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE extract( YEAR FROM date_of_birth) BETWEEN 2016 AND 2019;
SELECT name FROM animals WHERE neutered AND (escape_attempts < 3);
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

/*milestone 2*/

BEGIN;
	UPDATE animals SET species = 'unspecified';
	SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;
BEGIN;
	UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
	UPDATE animals SET species = 'pokemon' WHERE species = '';
COMMIT;
SELECT * FROM animals;
BEGIN;
	DELETE FROM animals;
ROLLBACK;
SELECT * FROM animals;
BEGIN;
	DELETE FROM animals WHERE date_of_birth > '2022-01-01';
	SAVEPOINT REMOVE_YOUNG;
    UPDATE animals SET weight_kg = -weight_kg;
	ROLLBACK TO REMOVE_YOUNG;
    UPDATE animals SET weight_kg = -weight_kg WHERE weight_kg < 0;
COMMIT;
SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT CASE WHEN neutered THEN 'neutered' ELSE 'not neutered' END AS Who_escapes_the_most FROM animals GROUP BY neutered ORDER BY AVG(escape_attempts) DESC LIMIT 1;
SELECT species, MIN(weight_kg) AS MIN_weight, MAX(weight_kg) AS Max_weight FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE extract( YEAR FROM date_of_birth) BETWEEN 1990 AND 2000 GROUP BY species;

/*milestone 3*/

SELECT animals.name FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Melody Pond';
SELECT animals.name FROM animals INNER JOIN species ON animals.species_id = species.id WHERE species.name = 'Pokemon';
SELECT owners.full_name AS "Owner", STRING_AGG(animals.name, ', ') AS "Animals" FROM owners LEFT JOIN animals ON animals.owner_id = owners.id GROUP BY "Owner";
SELECT species.name AS "Species", COUNT(*) FROM animals INNER JOIN species ON animals.species_id = species.id  GROUP BY "Species";
SELECT animals.name FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Jennifer Orwell';
SELECT animals.name FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE animals.escape_attempts = 0 AND owners.full_name = 'Dean Winchester';
SELECT owners.full_name AS "Name" FROM owners LEFT JOIN animals ON animals.owner_id = owners.id GROUP BY "Name" ORDER BY COUNT(*) DESC LIMIT 1;

/*milestone 4*/

SELECT animals.name FROM visits INNER JOIN animals ON visits.animal_id = animals.id INNER JOIN vets ON visits.vet_id = vets.id WHERE vets.name = 'William Tatcher' ORDER BY visits.date_of_visit DESC LIMIT 1;
SELECT COUNT ( DISTINCT visits.animal_id ) FROM visits INNER JOIN vets ON visits.vet_id = vets.id WHERE vets.name = 'Stephanie Mendez';
SELECT vets.name, STRING_AGG(species.name, ', ') AS "specialties" FROM vets LEFT JOIN specializations ON vets.id = specializations.vet_id LEFT JOIN species ON specializations.species_id = species.id GROUP BY vets.name;
SELECT animals.name, visits.date_of_visit FROM visits INNER JOIN animals ON visits.animal_id = animals.id INNER JOIN vets ON visits.vet_id = vets.id WHERE vets.name = 'Stephanie Mendez' AND visits.date_of_visit BETWEEN '2020-04-01' AND '2020-08-30';
SELECT animals.name, COUNT(*) AS "Visits" FROM animals INNER JOIN visits ON visits.animal_id = animals.id  GROUP BY animals.id ORDER BY "Visits" DESC LIMIT 1;
SELECT animals.name, visits.date_of_visit FROM visits INNER JOIN animals ON visits.animal_id = animals.id INNER JOIN vets ON visits.vet_id = vets.id WHERE vets.name = 'Maisy Smith' ORDER BY visits.date_of_visit LIMIT 1;
SELECT animals.*, vets.*, visits.date_of_visit FROM visits INNER JOIN animals ON visits.animal_id = animals.id INNER JOIN vets ON visits.vet_id = vets.id ORDER BY visits.date_of_visit DESC LIMIT 1;
SELECT COUNT(*) FROM visits INNER JOIN animals ON visits.animal_id = animals.id LEFT JOIN specializations ON visits.vet_id = specializations.vet_id AND animals.species_id = specializations.species_id WHERE specializations.species_id IS NULL;
SELECT species.name FROM visits INNER JOIN vets ON visits.vet_id = vets.id INNER JOIN animals ON visits.animal_id = animals.id INNER JOIN species ON species.id = animals.species_id WHERE vets.name = 'Maisy Smith' GROUP BY species.id ORDER BY COUNT(*) DESC LIMIT 1;
