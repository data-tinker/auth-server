CREATE TABLE IF NOT EXISTS users
(
    id        SERIAL PRIMARY KEY,
    email     VARCHAR(255) NOT NULL UNIQUE,
    pass_hash VARCHAR(255) NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_email ON users (email);

CREATE TABLE IF NOT EXISTS apps
(
    id     SERIAL PRIMARY KEY,
    name   VARCHAR(255) NOT NULL UNIQUE,
    secret VARCHAR(255) NOT NULL UNIQUE
);