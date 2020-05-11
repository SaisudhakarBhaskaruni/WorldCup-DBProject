/*
***UPDATE***
1. Add column of total matches in the table TEAM. 
Update the rows using total matches= number of WNS+ number of LOSES + number of DRAWS.

2. Add column named ‘PLAYER_NAME’ in table PLAYER. Using interactive updation.
*/

//code for 1
alter table team add total_matches number(5);
update team set total_matches=no_of_draws + no_of_wins + no_of_loses;
set lines 180
set pagesize 500
desc team;
select * from team;

//code for 2
alter table player add player_name varchar(20);
update player set player_name = '&player_name' where player_id = '&player_id';
set lines 150
select * from players;
