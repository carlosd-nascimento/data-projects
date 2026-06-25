INSERT INTO tbl_collections (CollectionsSetName, ReleaseDate, TotalCardsInCollection)
VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

INSERT INTO tbl_types (TypeName)
VALUES
('Grass'),
('Fire'),
('Water'),
('Lightning'),
('Psychic'),
('Fighting'),
('Colorless');

INSERT INTO tbl_stages (StageName)
VALUES
('Basic'),
('Stage 1'),
('Stage 2');

INSERT INTO tbl_cards (HP, Name, Info, Attack, Damage, Weak, Ressis, Retreat, CardNumberInCollection, CollectionId, TypeId, StageId)
VALUES
(60, 'Bulbasaur', 'Seed Pokémon', 'Leech Seed', '20', 'Fire', '', '1', 44, 1, 1, 1),
(50, 'Charmander', 'Lizard Pokémon', 'Ember', '30', 'Water', '', '1', 46, 1, 2, 1),
(40, 'Squirtle', 'Tiny Turtle Pokémon', 'Bubble', '10', 'Lightning', '', '1', 63, 1, 3, 1),
(40, 'Pikachu', 'Mouse Pokémon', 'Thunder Jolt', '30', 'Fighting', '', '1', 58, 1, 4, 1),
(60, 'Gastly', 'Gas Pokémon', 'Lick', '10', 'Psychic', '', '1', 50, 1, 5, 1),
(70, 'Machop', 'Superpower Pokémon', 'Low Kick', '20', 'Psychic', '', '1', 52, 1, 6, 1),
(120, 'Snorlax', 'Sleeping Pokémon', 'Body Slam', '30', 'Fighting', 'Psychic', '4', 11, 1, 7, 1);

INSERT INTO tbl_cards (HP, Name, Info, Attack, Damage, Weak, Ressis, Retreat, CardNumberInCollection, CollectionId, TypeId, StageId)
VALUES
(70, 'Eevee', 'Evolution Pokémon', 'Quick Attack', '10+', 'Fighting', 'Psychic', '1', 55, 2, 7, 1),
(80, 'Scyther', 'Mantis Pokémon', 'Slash', '30', 'Fire', 'Fighting', '1', 10, 2, 1, 1);

INSERT INTO tbl_cards (HP, Name, Info, Attack, Damage, Weak, Ressis, Retreat, CardNumberInCollection, CollectionId, TypeId, StageId)
VALUES
(90, 'Lapras', 'Transport Pokémon', 'Water Gun', '10+', 'Lightning', '', '2', 25, 3, 3, 1),
(60, 'Kabuto', 'Shellfish Pokémon', 'Scratch', '20', 'Grass', '', '1', 48, 3, 6, 1);
