CREATE SCHEMA IF NOT EXISTS analysis;


DROP TABLE IF EXISTS analysis.statsPerLeagueSeason CASCADE;
CREATE TABLE analysis.statsPerLeagueSeason(
    name varchar(32),
    season int,
    goals int,
    xGoals float,
    shots int,
    shotsOnTarget int,
    fouls int,
    yellowCards float,
    redCards int,
    corners int,
    games int,
    goalPerGame float,
    PRIMARY KEY (name, season)
);
DROP TABLE IF EXISTS analysis.statsPerPlayerSeason CASCADE;
CREATE TABLE analysis.statsPerPlayerSeason(
    playerID int,
    name varchar(32),
    season varchar(32),
    goals int,
    shots int,
    xGoals float,
    xGoalsChain float,
    xGoalsBuildup float,
    assists int,
    keyPasses int,
    xAssists float,
    gDiff float,
    gDiffRatio float,
    PRIMARY KEY (playerID, season)
);

DROP TABLE IF EXISTS analysis.statsPlayerPer90 CASCADE;
CREATE TABLE analysis.statsPlayerPer90(
    playerID int,
    name varchar(32),
    total_goals int,
    total_assists int,
    total_time int,
    goalsPer90 float,
    assistsPer90 float,
    scorers int,
    PRIMARY KEY (playerID, name)
);