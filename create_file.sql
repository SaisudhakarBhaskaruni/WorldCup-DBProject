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
