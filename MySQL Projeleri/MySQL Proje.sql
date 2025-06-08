CREATE DATABASE sosyal_medya;
USE sosyal_medya;
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    full_name VARCHAR(100),
    join_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Posts (
	post_id INT AUTO_INCREMENT PRIMARY KEY,
	user_id INT,
    content TEXT,
    post_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
    );
    
CREATE TABLE Likes (
	like_id INT AUTO_INCREMENT PRIMARY KEY,
    post_id INT,
    user_id INT,
    like_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (post_id) REFERENCES Posts(post_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
    );   
    
CREATE TABLE Comments (
	comment_id INT AUTO_INCREMENT PRIMARY KEY,
	post_id INT,
    user_id INT,
    comment_text TEXT,
    comment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (post_id) REFERENCES Posts(post_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
        );
        
CREATE TABLE Followers (
	follower_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    follower_user_id INT,
    follow_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (follower_user_id) REFERENCES Users(user_id)
    );        
    
    INSERT INTO Users (username, full_name, join_date) VALUES
    ('melike', 'melike çelik', '2023-01-10'),
    ('ali', 'suvai', '2023-02-14'),
    ('mehmet', 'karahanlı', '2020-05-12');
    
    INSERT INTO Posts (user_id, content, post_date) VALUES
    (1, 'ilk Hikaye', '2021-08-12'),
    (2, 'ilk fotoğraf', '2020-08-13'),
    (3, 'diğer gün diger post', '2020-08-14');
    
    INSERT INTO Likes (post_id, user_id, like_date) VALUES
	(1, 2, '2023-04-02'),
	(1, 3, '2023-04-02'),
	(2, 1, '2023-04-03');

INSERT INTO Comments (post_id, user_id, comment_text, comment_date) VALUES
	(1, 3, 'güzel post!', '2023-04-02'),
	(2, 1, 'hoşgeldin!', '2023-04-03');

INSERT INTO Followers (user_id, follower_user_id, follow_date) VALUES
	(1, 2, '2023-01-15'),
	(2, 3, '2023-02-20'),
	(3, 1, '2023-03-25');

-- En çok beğeni alan gönderiler
SELECT p.post_id, u.username, COUNT(l.like_id) AS total_likes
FROM Posts p
JOIN Users u ON p.user_id = u.user_id
LEFT JOIN Likes l ON p.post_id = l.post_id
GROUP BY p.post_id, u.username
ORDER BY total_likes DESC;

-- Kullanıcıların toplam gönderi sayısı
SELECT u.username, COUNT(p.post_id) AS post_count
FROM Users u
LEFT JOIN Posts p ON u.user_id = p.user_id
GROUP BY u.username;

-- En çok takipçisi olan kullanıcılar
SELECT u.username, COUNT(f.follower_user_id) AS follower_count
FROM Users u
LEFT JOIN Followers f ON u.user_id = f.user_id
GROUP BY u.username
ORDER BY follower_count DESC;

-- Belirli bir tarihte yapılan yorumlar
SELECT c.comment_text, u.username, p.post_id, c.comment_date
FROM Comments c
JOIN Users u ON c.user_id = u.user_id
JOIN Posts p ON c.post_id = p.post_id
WHERE c.comment_date = '2023-04-02';
