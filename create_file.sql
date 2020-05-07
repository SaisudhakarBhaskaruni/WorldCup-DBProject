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
