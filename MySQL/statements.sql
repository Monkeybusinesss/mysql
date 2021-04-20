Create DATABASE mysqlfun;
    USE mysqlfun;

CREATE TABLE klant(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(255),
    achternaam VARCHAR(255),
    adres_straatnaam VARCHAR(255),
    stad VARCHAR(255)
);

CREATE TABLE orders(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    klant_id INT,
    product VARCHAR(255),
    aantal INT,
    prijs DECIMAL(6,2),
    FOREIGN KEY (klant_id) REFERENCES klant(id)
);

INSERT INTO klant(naam, achternaam, adres_straatnaam, stad)
        VALUES
            ("Mark", "Rutte", "2543 GT Haagsestraat 101", "Den Haag"),
            ("Hugo", "De Jong", "3076 PI Coronalaan 49", "Urk"),
            ("Jesse", "Klaver", "1043 FR Frieslandstraat 2", "Amsterdam");

INSERT INTO orders(klant_id, product, aantal, prijs)
    VALUES
        (1, "Vaccinatie Prik", 2, 15.48),
        (2, "pen", 8, 1.50),
        (2, "leugendetector", 1, 55.60),
        (3, "Handgel", 5, 3.75),
        (3, "Thermometer",3, 23.89),
        (3, "Argan olie",4, 17.95),
        (3, "Neusspree",1, 3.28);