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
    
    