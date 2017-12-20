CREATE TABLE User (
  id       BIGINT                             NOT NULL AUTO_INCREMENT,
  username VARCHAR(255) UNIQUE                NOT NULL,
  password VARCHAR(64)                        NOT NULL,
  email    VARCHAR(255) UNIQUE                NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO User VALUES
  (DEFAULT, 'admin', sha2('admin', 256), 'admin@artishere.com'),
  (DEFAULT, 'admin2', sha2('admin2', 256), 'admin2@artishere.com'),
  (DEFAULT, 'user', sha2('password', 256), 'user@gmail.com');