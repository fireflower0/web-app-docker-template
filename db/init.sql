CREATE TABLE users (
  name VARCHAR(64) NOT NULL,
  email VARCHAR(128)
);

INSERT INTO users
VALUES ('foo', 'foo@example.com'),
       ('bar', 'bar@example.com'),
       ('baz', 'baz@example.com');
