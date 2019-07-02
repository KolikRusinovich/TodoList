-- Table: users
CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
)
    ENGINE = InnoDB;

-- Table: roles
CREATE TABLE roles(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
)
    ENGINE = InnoDB;

-- Table for mapping user and roles: user_roles


CREATE TABLE user_roles(
    user_id INT NOT NULL,
    role_id INT NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (role_id) REFERENCES roles(id),

    UNIQUE(user_id, role_id)
)
    ENGINE = InnoDB;

-- Table: tasks

CREATE TABLE tasks(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

    user_id INT NOT NULL,

    name VARCHAR(255) NOT NULL,
    description VARCHAR(255),

    start DATETIME,
    due DATETIME,

    status BOOLEAN
)
    ENGINE = InnoDB;

-- Insert data

INSERT INTO roles VALUES(1, 'ROLE_USER');
INSERT INTO roles VALUES(2, 'ROLE_ADMIN');
