create table TEAM(
    team_id varchar(30) primary key,
    team_rank number(3),
    team_name varchar(20) not null,
    country_name varchar(20),
    no_of_wins number(3),
    no_of_loses number(3),
    no_of_draws number(3),
    no_of_bowlers number(2),
    no_of_batsmans number(2)
);
create table WICKET_KEEPER(
    team_id references TEAM,
    wk_name varchar(30)
);
create table UMPIRE(
    umpire_id varchar(30) primary key,
    umpire_name varchar(30),
    no_of_matches number(4),
    country varchar(20)
);
create table PLAYER(
    player_id varchar(30) primary key,
    team_id references TEAM,
    no_of_worldcups number(2),
    number_of_matches number(3),
    batting_average number(3),
    no_of_sixes number(3),
    no_of_fours number(3),
    no_of_totalruns number(4),
    no_of_t20 number(3),
    no_of_odi number(3),
    no_of_test number(3),
    no_of_wickets number(2),
    type_of_bowler varchar(30),
    economy number(3)
);
create table COACH(
    coach_id varchar(30) primary key,
    team_id references TEAM,
    coach_name varchar(30)
);
create table CAPTAIN(
    captain_id varchar(30) primary key,
    captain_name varchar(30),
    team_id references TEAM,
    player_id varchar(30),
    year_of_captaincy number(2),
    no_of_wins number(4)
);
create table MATCHES(
    match_id varchar(20) primary key,
    match_date date,
    match_time timestamp(0),
    team_1_name varchar(30),
    team_2_name varchar(30),
    loser varchar(30),
    winner varchar(30),
    stadium varchar(30),
    umpire_id references umpire
);
create table PLAYS(
    team_id references TEAM,
    match_id references MATCHES
);
create table UMPIRED_BY(
    match_id references MATCHES,
    umpire_id references UMPIRE
);

desc TEAM;
desc WICKET_KEEPER;
desc UMPIRE;
desc PLAYER;
desc COACH;
desc CAPTAIN;
desc MATCHES;
desc PLAYS;
desc UMPIRED_BY;
