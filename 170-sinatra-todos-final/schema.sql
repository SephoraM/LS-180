-- list - id serial primary key, name unique not null
-- todo - id serial primary key, name not null, list id which references list
--        not null, completed boolean default false

CREATE TABLE lists (
  id serial PRIMARY KEY,
  name text NOT NULL UNIQUE
);

CREATE TABLE todos (
  id serial PRIMARY KEY,
  list_id integer NOT NULL REFERENCES lists (id) ON DELETE CASCADE,
  name text NOT NULL,
  completed boolean NOT NULL DEFAULT false
);
