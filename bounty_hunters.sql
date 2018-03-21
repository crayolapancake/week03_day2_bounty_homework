DROP TABLE bounty_hunters;

CREATE TABLE bounty_hunters (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  value INT,
  location VARCHAR(255),
  weapon VARCHAR(255)
);
