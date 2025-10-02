
## 📁 Project Structure

- ER Diagram: Visual schema of the database (see world_cup_schema.png)

- SQL Script: All table creation, data insertion, and analytical queries (world_cup_2022.sql)

- README: Documentation with project overview, usage guide, notes, and use cases.


## 🛠️ Tool USED:
![image](https://github.com/kewal-ballte/Fifa_World_Cup_Analysis/blob/main/tool.png)

## 🧱 Database Schema Overview
### Tables:

**2022_world_cup_matches**

- match_id (PK)

- Date

- Home Team

- Away Team

- Home Goals

- Away Goals

- Stage

**2022_world_cup_squads**

- player_id (PK)

- Player

- Team (FK)

- Age

- Goals

- Caps

**2022_world_cup_groups**

- group_id (PK)

- Team

- Group

- FIFA Ranking

**world_cups**

- year_id (PK)

- Year

- Host

- Winner

- Runner-up

- Teams

**world_cup_matches (historical data)**

- match_id (PK)

- Year (FK)

- Date

- Home Team

- Away Team

- Home Goals

- Away Goals

- Stage






⚽ Key SQL Analyses

Some of the insights generated from this project:

1. Top 5 Highest FIFA Ranked Teams (2022)
-  Finds the teams with the best FIFA rankings before the tournament.

2. Teams with the Oldest Average Squad Age
-  Highlights experienced squads based on average player age.

3. Top 5 Goal Scorers from Squads
-  Identifies the most effective strikers of the tournament.

4. Teams with Most Players Having 50+ Caps
-  Evaluates experience within each squad.

5. Players Who Outperformed Their Team’s Average Goals
-  Shows standout players compared to their team averages.

6. Weekday with the Most Matches
-  Analyzes which day hosted the highest number of games.

7. World Cup Winners Who Also Scored the Most Goals in a Match (Same Year)
-  Historical insight into attacking dominance by champions.

8. Top Scorers from Top 10 FIFA Ranked Teams
-  Merges FIFA rankings with individual performance.

9. Team Performance Summary
-  Aggregates squad age, goals, and FIFA ranking for each team.

10. Years with Above-Average Total Matches
-  Historical comparison of World Cup editions.

11. Match Results with Group Information
-  Combines match results with group stage context.

12. Matches Played per Team in 2022
-  Counts appearances for each team across the tournament.



## 🚀 How to Use

- Import the world_cup_2022.sql script into your SQL database (e.g., MySQL Workbench).

- Execute the schema creation and insert statements to load all tables (2022_world_cup_matches, 2022_world_cup_squads, 2022_world_cup_groups, world_cups, world_cup_matches).

- Run the analytical queries included in the script to explore insights about teams, players, and matches.

- Use the ER diagram (world_cup_schema.png / .mwb) as a reference for understanding table relationships.





## 📊 Example Use Cases

- Find the top FIFA-ranked teams to analyze pre-tournament expectations.

- Identify top goal scorers and compare them across teams.

- Track experienced squads by analyzing players with 50+ caps.

- Determine which weekdays had the most matches to study scheduling patterns.

- Summarize team performance using average squad age, goals, and FIFA rankings.

- Compare players vs. team averages to spot standout performers.

- Explore historical World Cups to find years with above-average matches or dominant winners.




## 📌 Notes

- You can enhance the database by adding:

- Match attendance, stadium capacity, or referee details in 2022_world_cup_matches.

- Player positions, assists, yellow/red cards, or minutes played in 2022_world_cup_squads.

- Coach/manager details for each team in 2022_world_cup_groups.

- Historical data like host country, venues, and number of teams in world_cups.

- Match-level stats such as possession, shots, fouls, or substitutions for deeper analysis.




## 📷 ER Diagram
![world_cup ER Diagram](https://github.com/kewal-ballte/Fifa_World_Cup_Analysis/blob/main/world_cup_er.png.png)

------
## Queries and Visualizations
## 1.Top 5 Highest FIFA Ranked Teams in 2022?
![Top 5 Highest FIFA Ranked Teams](https://github.com/kewal-ballte/Fifa_World_Cup_Analysis/blob/main/output/Top%205%20Highest%20FIFA%20Ranked%20Teams%20in%202022.png)

## 2.Teams with the Oldest Average Squad Age?
![Teams with the Oldest Average Squad Age](https://github.com/kewal-ballte/Fifa_World_Cup_Analysis/blob/main/output/Teams%20with%20the%20Oldest%20Average%20Squad%20Age.png)

## 3.Top 5 Goal Scorers from 2022 Squads?
![Top 5 Goal Scorers from 2022 Squads](https://github.com/kewal-ballte/Fifa_World_Cup_Analysis/blob/main/output/Top%205%20Goal%20Scorers%20from%202022%20Squads.png)

## 4.Which Team Had the Most Players with Over 50 Caps?
![Top 5 Goal Scorers from 2022 Squads](https://github.com/kewal-ballte/Fifa_World_Cup_Analysis/blob/main/output/Most%20_Players%20_with%20_Over%20_50%20Caps.png)

## 5. Find Players Who Scored More Than Their Team's Average Goals?
![Players Who Scored More Than Their Team's Average Goals](https://github.com/kewal-ballte/Fifa_World_Cup_Analysis/blob/main/output/Players%20_who_%20Scored%20More_Team's%20Average%20Goals.png)

## 6.On which weekday were the most matches played in the 2022 World Cup?
![weekday were the most matches played](https://github.com/kewal-ballte/Fifa_World_Cup_Analysis/blob/main/output/weekday_most%20matches%20played_2022%20World%20Cup.png)

## 7.List World Cup Winners Who Also Scored the Most Goals in a Match That Year?
![World Cup Winners Who Also Scored the Most Goals in a Match That Year](https://github.com/kewal-ballte/Fifa_World_Cup_Analysis/blob/main/output/Winners_WhoScored_Most%20Goals_Match%20That%20Year.png)

## 8.Top Scorers from Top 10 FIFA Ranked Teams?
![Top Scorers from Top 10 FIFA Ranked Teams](https://github.com/kewal-ballte/Fifa_World_Cup_Analysis/blob/main/output/top_scorer_top_10_fifaRanked_team.png)

## 9.Team Performance Summary with Aggregated Squad Stats
## Show average player age and total goals by team in the 2022 World Cup.
![Average player age and total goals by team](https://github.com/kewal-ballte/Fifa_World_Cup_Analysis/blob/main/output/teamperformance_aggregated_squadstats.png)

## 10. List Years Where the Total Number of Matches Was More Than Average?
![Years Where the Total Number of Matches Was More Than Average](https://github.com/kewal-ballte/Fifa_World_Cup_Analysis/blob/main/output/Years_Total%20Number%20of%20Matches_moreThan_avg.png)

## 11.List All Matches with Group Information?
![All Matches with Group Information](https://github.com/kewal-ballte/Fifa_World_Cup_Analysis/blob/main/output/List%20All%20Matches%20with%20Group%20Information.png)

## 12.How Many Matches Did Each Team Play in 2022?
![Matches Did Each Team Play in 2022](https://github.com/kewal-ballte/Fifa_World_Cup_Analysis/blob/main/output/Matches%20Did%20Each%20Team%20Play%20in%202022.png)





