UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE owners.name = 'Kaloqn Stoqnov')
WHERE owner_id IS NULL;