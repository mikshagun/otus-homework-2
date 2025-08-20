--liquibase formatted sql

--changeset mshagun:1
--comment: Создаём таблицу пользователей

CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(256) NOT NULL UNIQUE,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_username ON users(username);

--rollback DROP INDEX idx_users_email;
--rollback DROP INDEX idx_users_username;
--rollback DROP TABLE users;