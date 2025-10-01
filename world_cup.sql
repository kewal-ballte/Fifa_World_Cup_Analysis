create database world_cup;
use world_cup;
select * from 2022_world_cup_matches;


 -- 1) Top 5 Highest FIFA Ranked Teams in 2022
 SELECT Team, `FIFA Ranking`
FROM `2022_world_cup_groups`
ORDER BY `FIFA Ranking` ASC
LIMIT 5;

 -- 2) Teams with the Oldest Average Squad Age
 SELECT Team, ROUND(AVG(Age), 2) AS avg_age
FROM `2022_world_cup_squads`
GROUP BY Team
ORDER BY avg_age DESC;

-- 3) Top 5 Goal Scorers from 2022 Squads
 SELECT Player, Team, Goals
FROM `2022_world_cup_squads`
ORDER BY Goals DESC
LIMIT 5;
 
 -- 4) Which Team Had the Most Players with Over 50 Caps?
 SELECT Team, COUNT(*) AS players_with_50plus_caps
FROM `2022_world_cup_squads`
WHERE Caps > 50
GROUP BY Team
ORDER BY players_with_50plus_caps DESC;

 -- 5) Find Players Who Scored More Than Their Team's Average Goals
SELECT Player, Team, Goals
FROM `2022_world_cup_squads` s1
WHERE Goals > (
  SELECT AVG(Goals)
  FROM `2022_world_cup_squads` s2
  WHERE s2.Team = s1.Team
);
-- 6)On which weekday were the most matches played in the 2022 World Cup?
SELECT 
  DAYNAME(Date) AS weekday,
  COUNT(*) AS matches_played
FROM 
  `2022_world_cup_matches`
GROUP BY 
  weekday
ORDER BY 
  matches_played DESC;


-- 7) List World Cup Winners Who Also Scored the Most Goals in a Match That Year
SELECT w.Year, w.Winner
FROM `world_cups` w
WHERE w.Winner IN (
  SELECT `Home Team`
  FROM `world_cup_matches`
  WHERE `Home Goals` = (
    SELECT MAX(`Home Goals`)
    FROM `world_cup_matches`
    WHERE Year = w.Year
  )
  AND Year = w.Year
);
 
-- 8)Top Scorers from Top 10 FIFA Ranked Teams
SELECT 
  s.Player,
  s.Team,
  s.Goals,
  g.`FIFA Ranking`
FROM 
  `2022_world_cup_squads` s
JOIN 
  `2022_world_cup_groups` g 
ON 
  s.Team = g.Team
WHERE 
  g.`FIFA Ranking` <= 10
  AND s.Goals > 0
ORDER BY 
  s.Goals DESC;

-- 9)Team Performance Summary with Aggregated Squad Stats
-- Show average player age and total goals by team in the 2022 World Cup.
SELECT 
  s.Team,
  ROUND(AVG(s.Age), 2) AS avg_age,
  SUM(s.Goals) AS total_goals,
  g.`FIFA Ranking`
FROM 
  `2022_world_cup_squads` s
JOIN 
  `2022_world_cup_groups` g ON s.Team = g.Team
GROUP BY 
  s.Team, g.`FIFA Ranking`
ORDER BY 
  total_goals DESC;
  
-- 10) List Years Where the Total Number of Matches Was More Than Average
SELECT Year, COUNT(*) AS match_count
FROM `world_cup_matches`
GROUP BY Year
HAVING match_count > (
  SELECT AVG(match_total)
  FROM (
    SELECT COUNT(*) AS match_total
    FROM `world_cup_matches`
    GROUP BY Year
  ) AS yearly
);
-- 11) List All Matches with Group Information
SELECT 
  m.`Home Team`,
  hg.Group AS Home_Team_Group,
  m.`Away Team`,
  ag.Group AS Away_Team_Group,
  m.Stage
FROM 
  `2022_world_cup_matches` m
JOIN 
  `2022_world_cup_groups` hg ON m.`Home Team` = hg.Team
JOIN 
  `2022_world_cup_groups` ag ON m.`Away Team` = ag.Team;


-- 12)How Many Matches Did Each Team Play in 2022?

SELECT Team, COUNT(*) AS matches_played
FROM (
  SELECT `Home Team` AS Team FROM `2022_world_cup_matches`
  UNION ALL
  SELECT `Away Team` AS Team FROM `2022_world_cup_matches`
) AS all_matches
GROUP BY Team
ORDER BY matches_played DESC;