CREATE TABLE tbl_collections (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    CollectionsSetName VARCHAR(100) NOT NULL,
    ReleaseDate DATE NOT NULL,
    TotalCardsInCollection SMALLINT UNSIGNED NOT NULL
);

CREATE TABLE tbl_types (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(30) NOT NULL
);

CREATE TABLE tbl_stages (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    StageName VARCHAR(20) NOT NULL
);

CREATE TABLE tbl_cards (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    HP SMALLINT UNSIGNED,
    Name VARCHAR(80) NOT NULL,
    Info TEXT,
    Attack VARCHAR(80),
    Damage VARCHAR(15),
    Weak VARCHAR(30),
    Ressis VARCHAR(30),
    Retreat VARCHAR(30),
    CardNumberInCollection SMALLINT UNSIGNED NOT NULL,
    CollectionId INT NOT NULL,
    TypeId INT NOT NULL,
    StageId INT NOT NULL,
    FOREIGN KEY (CollectionId) REFERENCES tbl_collections(Id),
    FOREIGN KEY (TypeId) REFERENCES tbl_types(Id),
    FOREIGN KEY (StageId) REFERENCES tbl_stages(Id)
);