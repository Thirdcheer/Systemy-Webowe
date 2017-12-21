CREATE SCHEMA default_schema;

CREATE TABLE default_schema.User (
  id             BIGINT                             NOT NULL AUTO_INCREMENT,
  username       VARCHAR(255) UNIQUE                NOT NULL,
  name           VARCHAR(255),
  surname        VARCHAR(255),
  password       VARCHAR(60)                        NOT NULL,
  email          VARCHAR(255) UNIQUE                NOT NULL,
  phone          VARCHAR(255),
  month_of_birth VARCHAR(255),
  PRIMARY KEY (id)
);

INSERT INTO User (username, password, email) VALUES
  ('admin', '$2y$10$.dOCk2xrhdKp.AD7NLcWje8po8v6sxzFkDzf/806zfmD2UmVYjkMm', 'admin@artishere.com'), #admin
  ('admin2', '$2y$10$aXHjPZ1aEwZwHqQ/6CUYH.gu00hanrNRxJoVSFeMVwzaJWKp83rdO', 'admin2@artishere.com'), #admin2
  ('user', '$2y$10$MbmbKCz75h1WyuPhpZMAjuIMzj3fYLJhxuS861tKYA40qTF3iCTJa', 'user@gmail.com'); #password
