CREATE TABLE typeSiege (
    id SERIAL PRIMARY KEY,
    val VARCHAR(255) NOT NULL,
    desce VARCHAR(255)
);

CREATE TABLE avion (
    id SERIAL PRIMARY KEY,
    modele VARCHAR(255) NOT NULL,
    dateFabrication DATE NOT NULL
);

CREATE TABLE liaisonTypeSiegeAvion (
    id SERIAL PRIMARY KEY,
    idTypeSiege INT REFERENCES typeSiege(id) ON DELETE CASCADE,
    idAvion INT REFERENCES avion(id) ON DELETE CASCADE,
    nombre INT NOT NULL
);

CREATE TABLE liaisonSiegeVol (
    id SERIAL PRIMARY KEY,
    idTypeSiege INT REFERENCES typeSiege(id) ON DELETE CASCADE,
    idVol INT REFERENCES vol(id) ON DELETE CASCADE,
    prix DECIMAL(10,2) NOT NULL
);

CREATE TABLE Utilisateur (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL
);

CREATE TABLE ville (
    id SERIAL PRIMARY KEY,
    val VARCHAR(255) NOT NULL,
    desce TEXT
);

CREATE TABLE vol (
    id SERIAL PRIMARY KEY,
    idAvion INT REFERENCES avion(id) ON DELETE CASCADE,
    idVilleDepart INT REFERENCES ville(id) ON DELETE CASCADE,
    idVilleArive INT REFERENCES ville(id) ON DELETE CASCADE,
    dateDepart TIMESTAMP NOT NULL,
    dateArive TIMESTAMP NOT NULL,
    dure INT NOT NULL, -- en secondes
    prix DECIMAL(10,2) NOT NULL,
    statut INT  -- 1: créer, 0: annulé
);

CREATE TABLE liaisonVolPromotion (
    id SERIAL PRIMARY KEY,
    idVol INT REFERENCES vol(id) ON DELETE CASCADE,
    idTypeSiege INT REFERENCES typeSiege(id) ON DELETE CASCADE,
    nombreSiege INT NOT NULL,
    promotion INT NOT NULL
);

CREATE TABLE liaisonVolReservation (
    id SERIAL PRIMARY KEY,
    dureAvantVol INT NOT NULL, 
    idVol INT REFERENCES vol(id) ON DELETE CASCADE
);

CREATE TABLE liaisonVolAnnulation (
    id SERIAL PRIMARY KEY,
    dureAvantVol INT NOT NULL, 
    idVol INT REFERENCES vol(id) ON DELETE CASCADE
);

-- Inserting example data into tables
INSERT INTO typeSiege (val, desce) VALUES 
('Economy', 'Standard seating'),
('Business', 'Comfortable seating with extra legroom'),
('First Class', 'Luxury seating with premium services');

INSERT INTO avion (modele, dateFabrication) VALUES 
('Boeing 737', '2010-05-15'),
('Airbus A320', '2012-08-20'),
('Boeing 777', '2015-11-30');

INSERT INTO Utilisateur (username, password, role) VALUES 
('admin', 'admin123', 'admin'),
('user1', 'password1', 'user'),
('user2', 'password2', 'user');

INSERT INTO ville (val, desce) VALUES 
('Paris', 'Capital of France'),
('New York', 'City in the USA'),
('Tokyo', 'Capital of Japan');

INSERT INTO liaisonTypeSiegeAvion (idTypeSiege, idAvion, nombre) VALUES 
(1, 1, 150),
(2, 1, 30),
(3, 2, 10);



CREATE TABLE reservation (
    id SERIAL PRIMARY KEY,
    idUtilisateur INT REFERENCES Utilisateur(id) ON DELETE CASCADE,
    idVol INT REFERENCES vol(id) ON DELETE CASCADE,
    datyheure TIMESTAMP NOT NULL,
    passport BYTEA,
    statut INT,
    place INT NOT NULL,
    prix DECIMAL(10,2) NOT NULL
);


SELECT t.*, t1.nombresiege, t1.promotion, t2.nombre,vi.val as villedepart,vi1.val as villearive ,tpy.val as typesiege ,avi.modele 
FROM ( 
                 SELECT v.*, l.idtypesiege, l.prix   
                 FROM vol AS v  
                 LEFT JOIN liaisonsiegevol AS l ON v.id = l.idVol  
             ) AS t  
             LEFT JOIN liaisonvolpromotion AS t1 ON t1.id = ( 
                 SELECT MAX(id) FROM liaisonvolpromotion 
                 WHERE t.id = idvol AND t.idtypesiege = idtypesiege 
             ) 
             LEFT JOIN liaisontypesiegeavion AS t2 ON t.idavion = t2.idavion AND t.idtypesiege = t2.id 
             JOIN avion as avi on avi.id=t.idAvion 
             JOIN TypeSiege as tpy on tpy.id=t.idTypeSiege 
             JOIN Ville as vi on vi.id=t.idvilledepart 
             JOIN Ville as vi1 on vi1.id=t.idvillearive

TRUNCATE TABLE liaisonVolReservation, liaisonVolAnnulation, liaisonVolPromotion, liaisonTypeSiegeAvion, liaisonSiegeVol, reservation, vol, Utilisateur, ville, typeSiege, avion RESTART IDENTITY;
