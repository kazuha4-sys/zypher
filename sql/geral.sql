CREATE DATABASE IF NOT EXISTS SecSocial;
USE SecSocial;

--Tabela de usuarios 
CREATE TABLE IF NOT EXISTS users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) UNIQUE NOT NULL, 
    password VARCHAR(255) NOT NULL, 
    code INT NOT NULL,
    create_at TIMESTAMP DEFALT CURRENT-TIMESTAMP
);

--tabela de postagen
CRETAE TABLE IF NOT EXISTS posts(
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL, 
    content TEXT NOT NULL, 
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

--tabela de comentarios
CRATE TABLE if NOT EXISTS comments(
    id INT PRIAMRY KEY AUTO_INCREMENT,
    post_id INT NOT NULL, 
    user_id INT NOT NULL, 
    content TEXT NOT NULL,
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);    

