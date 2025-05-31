--- Filmler tablosu
CREATE TABLE filmler (
	film_id INT PRIMARY KEY,
	ad VARCHAR(100),
	vizyon_tarihi DATE
);

--- Salonlar Tablosu 
CREATE TABLE salonlar (
	salon_id INT PRIMARY KEY,
	ad VARCHAR(50),
	kapasite INT
);

--- Seanslar tablosu
CREATE TABLE seanslar (
	seans_id INT PRIMARY KEY,
	film_id INT,
	salon_id INT,
	tarih_saat DATETIME,
	FOREIGN KEY (film_id) REFERENCES filmler(film_id),
	FOREIGN KEY (salon_id) REFERENCES salonlar(salon_id)
);

--- Biletler tablosu
CREATE TABLE biletler (
	bilet_id INT PRIMARY KEY,
	seans_id INT,
	kisi_adi VARCHAR(100),
	koltuk_no INT,
	FOREIGN KEY (seans_id) REFERENCES seanslar(seans_id)
);

--- Veri ekleme
INSERT INTO filmler VALUES 
(1 , 'The Godfather' , '1969-07-02'),
(2 , 'Matrix', '1999-09-02'),
(3 , 'The lord of the rings', '2001-02-02');

INSERT INTO salonlar VALUES
(1 , 'Salon A', 100 ),
(2 , 'Salon B', 80);

INSERT INTO seanslar VALUES
(1, 1, 1, '2025-05-20 20:00'),
(2, 2, 2, '2025-05-21 18:00'),
(3, 3, 1, '2025-05-22 21:00');

INSERT INTO biletler VALUES
(1, 1, 'Atýf sekmen', 12),
(2, 1, 'emir buðra bayram', 13),
(3, 2, 'eren gündoðdu', 5),
(4, 3, 'gizem köksaldý', 1),
(5,3, 'buse gökçe gedikoðlu', 2),
(6,3, 'Yusuf aksoy', 3);

SELECT * FROM filmler;
