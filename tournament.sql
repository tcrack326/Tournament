-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE TABLE tournaments (
	t_id serial UNIQUE PRIMARY KEY
);

CREATE TABLE players(
	p_id serial UNIQUE PRIMARY KEY,
	p_name varchar(30) UNIQUE
);

CREATE TABLE standings(
	standing_id serial UNIQUE PRIMARY KEY,
	player_id serial REFERENCES players(p_id),
	player_name varchar(30) REFERENCES players(p_name),
	matches integer DEFAULT 0,
	wins integer DEFAULT 0,
	losses integer DEFAULT 0
);

CREATE TABLE matches(
	match_id serial UNIQUE PRIMARY KEY,
	match_winner integer REFERENCES players(p_id),
	match_loser integer REFERENCES players(p_id)
);
