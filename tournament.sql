-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP DATABASE IF EXISTS tournament;

CREATE DATABASE tournament;

\connect tournament

DROP TABLE IF EXISTS player CASCADE;

CREATE TABLE player(
  id serial PRIMARY KEY,
  name text
);

DROP TABLE IF EXISTS math CASCADE;

CREATE TABLE match(
  match_id serial,
  winner INTEGER,
  loser INTEGER,
  FOREIGN KEY(winner) REFERENCES player(id),
  FOREIGN KEY(loser) REFERENCES player(id)
);

CREATE VIEW standings AS
SELECT player.id, player.name,
(SELECT count(*) FROM match WHERE match.winner = player.id) as won,
(SELECT count(*) FROM match WHERE player.id in (winner, loser)) as played
FROM player
GROUP BY player.id
ORDER BY won DESC;