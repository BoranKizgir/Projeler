CREATE TABLE Yazarlar(
	yazar_id INT PRIMARY KEY, 
	ad VARCHAR(50), 
	soyad VARCHAR(50)
	)

CREATE TABLE Kitaplar(
	kitap_id INT PRIMARY KEY, 
	ad VARCHAR(100), 
	yazar_id INT, 
	yayinyili INT, 
	FOREIGN KEY (yazar_id) REFERENCES Yazarlar(yazar_id)
	)

	CREATE TABLE Uyeler(
	uye_id INT PRIMARY KEY, 
	ad VARCHAR(50), 
	soyad VARCHAR(50), 
	kayittarihi DATE
	)


	CREATE TABLE Odunc(
	odunc_id INT PRIMARY KEY, 
	uye_id INT, 
	kitap_id INT, 
	odunc_tarihi DATE, 
	iade_tarihi DATE, 
	FOREIGN KEY(uye_id) REFERENCES Uyeler(uye_id),
	FOREIGN KEY(kitap_id) REFERENCES Kitaplar(kitap_id)
	)

	-- Verilerin Yüklenmesi

	INSERT INTO Yazarlar VALUES (1, 'Orhan', 'Pamuk'), (2, 'Elif', 'Þafak');

	INSERT INTO Kitaplar VALUES 
	(1, 'Kýrmýzý Saçlý Kadýn', 1, 2016),
	(2, 'Masumiyet Müzesi', 1, 2008),
	(3, 'Aþk', 2, 2009);

	INSERT INTO Uyeler VALUES 
	(1, 'Ali', 'Yýlmaz', '2023-01-01'),
	(2, 'Ayþe', 'Demir', '2023-02-15');

	INSERT INTO Odunc VALUES 
	(1, 1, 1, '2024-04-01', '2024-04-10'),
	(2, 1, 2, '2024-04-15', NULL),
	(3, 2, 3, '2024-04-20', NULL);


-- En çok ödünç alýnan kitaplar
SELECT k.ad, COUNT(*) AS odunc_sayisi
FROM Odunc o
JOIN Kitaplar k ON o.kitap_id = k.kitap_id
GROUP BY k.ad
ORDER BY odunc_sayisi DESC;

-- Kitaplarý ve yazarlarýný listele
SELECT k.ad AS kitap_adi, y.ad AS yazar_adi, y.soyad AS yazar_soyadi
FROM Kitaplar k
JOIN Yazarlar y ON k.yazar_id = y.yazar_id;

