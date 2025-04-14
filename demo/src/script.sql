CREATE TABLE liaisontypehommepromotion (
    id SERIAL PRIMARY KEY,
    idtypehomme INTEGER NOT NULL,
    promotion NUMERIC(5,2) NOT NULL DEFAULT 0,
    FOREIGN KEY (idtypehomme) REFERENCES typehomme(id)
);
CREATE TABLE typehomme (
    id SERIAL PRIMARY KEY,
    type VARCHAR(20) NOT NULL CHECK (type IN ('adulte', 'enfant'))
);
INSERT INTO typehomme (type) VALUES 
('adulte'),
('enfant');
