CREATE TABLE profile (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    full_name VARCHAR(150) NOT NULL, 
    bio TEXT
);

CREATE TABLE academics (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    profile_id INT NOT NULL, 
    qualification VARCHAR(150), 
    institution VARCHAR(255), 
    graduation_year INT,
    CONSTRAINT fk_academics_profile FOREIGN KEY (profile_id) REFERENCES profile(id) ON DELETE CASCADE
);

CREATE TABLE awards (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    profile_id INT NOT NULL, 
    award_title VARCHAR(255), 
    details TEXT,
    CONSTRAINT fk_awards_profile FOREIGN KEY (profile_id) REFERENCES profile(id) ON DELETE CASCADE
);

CREATE TABLE abilities (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    profile_id INT NOT NULL, 
    skill_name VARCHAR(100),
    CONSTRAINT fk_abilities_profile FOREIGN KEY (profile_id) REFERENCES profile(id) ON DELETE CASCADE
);

CREATE TABLE offerings (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    profile_id INT NOT NULL, 
    service_title VARCHAR(150), 
    service_description TEXT,
    CONSTRAINT fk_offerings_profile FOREIGN KEY (profile_id) REFERENCES profile(id) ON DELETE CASCADE
);

CREATE TABLE reviews (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    profile_id INT NOT NULL, 
    client VARCHAR(150), 
    review_text TEXT,
    CONSTRAINT fk_reviews_profile FOREIGN KEY (profile_id) REFERENCES profile(id) ON DELETE CASCADE
);