CREATE TABLE Players (
    player_api_id_x INT PRIMARY KEY,
    player_name VARCHAR(255) NOT NULL
);

CREATE TABLE Physical_Attributes (
    id INT NOT NULL AUTO_INCREMENT ,
    player_api_id INT,
    height DECIMAL(5,2),
    weight DECIMAL(5,2),
    PRIMARY KEY(id),
    FOREIGN KEY (player_api_id) REFERENCES Players(player_api_id_x)
);
INSERT INTO Players (player_api_id_x, player_name) VALUES (505942, 'Aaron Appindangoye');
INSERT INTO Players (player_api_id_x, player_name) VALUES (155782, 'Aaron Cresswell');
INSERT INTO Players (player_api_id_x, player_name) VALUES (162549, 'Aaron Doran');
INSERT INTO Players (player_api_id_x, player_name) VALUES (30572, 'Aaron Galindo');
INSERT INTO Players (player_api_id_x, player_name) VALUES (23780, 'Aaron Hughes');
INSERT INTO Players (player_api_id_x, player_name) VALUES (27316, 'Aaron Hunt');
INSERT INTO Players (player_api_id_x, player_name) VALUES (564793, 'Aaron Kuhl');
INSERT INTO Players (player_api_id_x, player_name) VALUES (30895, 'Aaron Lennon');
INSERT INTO Players (player_api_id_x, player_name) VALUES (528212, 'Aaron Lennox');
INSERT INTO Players (player_api_id_x, player_name) VALUES (101042, 'Aaron Meijers');
INSERT INTO Players (player_api_id_x, player_name) VALUES (23889, 'Aaron Mokoena');
INSERT INTO Players (player_api_id_x, player_name) VALUES (231592, 'Aaron Mooy');
INSERT INTO Players (player_api_id_x, player_name) VALUES (163222, 'Aaron Muirhead');
INSERT INTO Players (player_api_id_x, player_name) VALUES (40719, 'Aaron Niguez');
INSERT INTO Players (player_api_id_x, player_name) VALUES (75489, 'Aaron Ramsey');

select * from Players;

INSERT INTO Physical_Attributes (player_api_id, height, weight) VALUES (505942, 182.88, 187);
INSERT INTO Physical_Attributes (player_api_id, height, weight) VALUES (155782, 170.18, 146);
INSERT INTO Physical_Attributes (player_api_id, height, weight) VALUES (162549, 170.18, 163);
INSERT INTO Physical_Attributes (player_api_id, height, weight) VALUES (30572, 182.88, 198);
INSERT INTO Physical_Attributes (player_api_id, height, weight) VALUES (23780, 182.88, 154);
INSERT INTO Physical_Attributes (player_api_id, height, weight) VALUES (27316, 182.88, 161);
INSERT INTO Physical_Attributes (player_api_id, height, weight) VALUES (564793, 172.72, 146);
INSERT INTO Physical_Attributes (player_api_id, height, weight) VALUES (30895, 165.1, 139);
INSERT INTO Physical_Attributes (player_api_id, height, weight) VALUES (528212, 190.5, 181);
INSERT INTO Physical_Attributes (player_api_id, height, weight) VALUES (101042, 175.26, 170);
INSERT INTO Physical_Attributes (player_api_id, height, weight) VALUES (23889, 182.88, 181);
INSERT INTO Physical_Attributes (player_api_id, height, weight) VALUES (231592, 175.26, 150);
INSERT INTO Physical_Attributes (player_api_id, height, weight) VALUES (163222, 187.96, 168);
INSERT INTO Physical_Attributes (player_api_id, height, weight) VALUES (40719, 170.18, 143);
INSERT INTO Physical_Attributes (player_api_id, height, weight) VALUES (75489, 177.8, 154);

select * from Physical_Attributes;

/* 
Ishika Thakur
*/

CREATE TABLE Performance_Attributes (
    player_fifa_api_id INT NOT NULL,
    player_api_id INT,
    overall_rating DECIMAL(3,1),
    potential DECIMAL(3,1),
    preferred_foot VARCHAR(50),
    attacking_work_rate VARCHAR(50),
    defensive_work_rate VARCHAR(50),
    agility DECIMAL(3,1),
    balance DECIMAL(3,1),
    shot_power DECIMAL(3,1),
    stamina DECIMAL(3,1),
    strength DECIMAL(3,1),
    long_shots DECIMAL(3,1),
    aggression DECIMAL(3,1),
    penalties DECIMAL(3,1),
    PRIMARY KEY (player_fifa_api_id),
    FOREIGN KEY (player_api_id) REFERENCES Players(player_api_id_x)
);

INSERT INTO Performance_Attributes (player_fifa_api_id, player_api_id, overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, agility, balance, shot_power, stamina, strength, long_shots, aggression, penalties) VALUES (218353, 505942, 61.0, 65.0, 'right', 'medium', 'medium', 59.0, 65.0, 54.0, 54.0, 76.0, 34.0, 62.0, 47.0);
INSERT INTO Performance_Attributes (player_fifa_api_id, player_api_id, overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, agility, balance, shot_power, stamina, strength, long_shots, aggression, penalties) VALUES (189615, 155782, 53.0, 60.0, 'right', 'medium', 'medium', 59.0, 62.0, 48.0, 56.0, 68.0, 35.0, 64.0, 29.0);
INSERT INTO Performance_Attributes (player_fifa_api_id, player_api_id, overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, agility, balance, shot_power, stamina, strength, long_shots, aggression, penalties) VALUES (186170, 162549, 59.0, 70.0, 'right', 'medium', 'medium', 66.0, 56.0, 64.0, 69.0, 68.0, 63.0, 59.0, 36.0);
INSERT INTO Performance_Attributes (player_fifa_api_id, player_api_id, overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, agility, balance, shot_power, stamina, strength, long_shots, aggression, penalties) VALUES (140161, 30572, 71.0, 78.0, 'right', 'medium', 'high', 63.0, 45.0, 65.0, 75.0, 68.0, 51.0, 70.0, 60.0);
INSERT INTO Performance_Attributes (player_fifa_api_id, player_api_id, overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, agility, balance, shot_power, stamina, strength, long_shots, aggression, penalties) VALUES (17725, 23780, 75.0, 75.0, 'right', 'medium', 'medium', 57.0, 76.0, 47.0, 78.0, 72.0, 15.0, 76.0, 81.0);
INSERT INTO Performance_Attributes (player_fifa_api_id, player_api_id, overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, agility, balance, shot_power, stamina, strength, long_shots, aggression, penalties) VALUES (158138, 27316, 73.0, 80.0, 'left', 'medium', 'medium', 79.0, 67.0, 73.0, 66.0, 62.0, 61.0, 36.0, 53.0);
INSERT INTO Performance_Attributes (player_fifa_api_id, player_api_id, overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, agility, balance, shot_power, stamina, strength, long_shots, aggression, penalties) VALUES (221280, 564793, 60.0, 77.0, 'right', 'medium', 'high', 60.0, 80.0, 52.0, 68.0, 59.0, 37.0, 74.0, 41.0);
INSERT INTO Performance_Attributes (player_fifa_api_id, player_api_id, overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, agility, balance, shot_power, stamina, strength, long_shots, aggression, penalties) VALUES (152747, 30895, 79.0, 90.0, 'right', 'high', 'medium', 88.0, 76.0, 70.0, 84.0, 33.0, 60.0, 24.0, 66.0);
INSERT INTO Performance_Attributes (player_fifa_api_id, player_api_id, overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, agility, balance, shot_power, stamina, strength, long_shots, aggression, penalties) VALUES (206592, 528212, 48.0, 57.0, 'right', 'medium', 'medium', 31.0, 24.0, 26.0, 18.0, 44.0, 12.0, 21.0, 41.0);
INSERT INTO Performance_Attributes (player_fifa_api_id, player_api_id, overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, agility, balance, shot_power, stamina, strength, long_shots, aggression, penalties) VALUES (188621, 101042, 64.0, 67.0, 'right', 'medium', 'high', 67.0, 65.0, 63.0, 69.0, 65.0, 67.0, 65.0, 52.0);
INSERT INTO Performance_Attributes (player_fifa_api_id, player_api_id, overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, agility, balance, shot_power, stamina, strength, long_shots, aggression, penalties) VALUES (47189, 23889, 72.0, 80.0, 'right', 'medium', 'high', 55.0, 71.0, 47.0, 73.0, 30.0, 25.0, 70.0, 69.0);
INSERT INTO Performance_Attributes (player_fifa_api_id, player_api_id, overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, agility, balance, shot_power, stamina, strength, long_shots, aggression, penalties) VALUES (194958, 231592, 60.0, 67.0, 'right', 'medium', 'low', 68.0, 67.0, 62.0, 61.0, 64.0, 52.0, 30.0, 53.0);
INSERT INTO Performance_Attributes (player_fifa_api_id, player_api_id, overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, agility, balance, shot_power, stamina, strength, long_shots, aggression, penalties) VALUES (213568, 163222, 63.0, 70.0, 'right', 'medium', 'medium', 49.0, 53.0, 37.0, 55.0, 87.0, 24.0, 68.0, 74.0);
INSERT INTO Performance_Attributes (player_fifa_api_id, player_api_id, overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, agility, balance, shot_power, stamina, strength, long_shots, aggression, penalties) VALUES (183853, 40719, 59.0, 83.0, 'left', 'high', 'medium', 70.0, 62.0, 62.0, 53.0, 45.0, 53.0, 41.0, 44.0);
INSERT INTO Performance_Attributes (player_fifa_api_id, player_api_id, overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, agility, balance, shot_power, stamina, strength, long_shots, aggression, penalties) VALUES (186561, 75489, 71.0, 85.0, 'right', 'medium', 'low', 73.0, 67.0, 69.0, 76.0, 59.0, 70.0, 64.0, 76.0);

select * from Performance_Attributes;
