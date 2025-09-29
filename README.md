# football-tournament-sql
SQL challenge to rank football teams based on match results, points, and goals — implemented in PostgreSQL. Perfect for practicing SQL window functions, aggregation, and ranking logic.
# ⚽ Football Tournament Ranking (SQL Problem)

## Problem Statement
In a football tournament, match data is recorded.  
- Every winning team gets **+1 point**.  
- Every losing team gets **-1 point**.  
- A team's total points can go negative.  

At the end of the tournament, teams are ranked based on:
1. **Total Points** (higher points = higher rank)  
2. If two teams have the same points, the team with the **higher number of winning goals** is ranked higher.  

You are given two tables:

### 1. `matches_record`
| Column             | Type    | Description                             |
|--------------------|---------|-----------------------------------------|
| match_id           | INT     | Unique match identifier                 |
| winning_team_id    | INT     | Team ID of the winning team             |
| loosing_team_id    | INT     | Team ID of the losing team              |
| goals_worthy_team  | INT     | Goals scored by the winning team        |

### 2. `team_details`
| Column     | Type    | Description          |
|------------|---------|----------------------|
| team_id    | INT     | Unique team id       |
| team_name  | TEXT    | Team name            |

---

## Expected Output
The result should rank teams in order with the following columns:
- `Rank`
- `Team name`

Example:
| Rank | Team Name            |
|------|-----------------------|
| 1    | Phillippiness Prates |
| 2    | Nickmiesters         |
| 3    | Smasher              |
| 4    | Sunrisers            |

---

## 📂 Files in This Repo
- **`schema.sql`** → Contains SQL scripts to create the tables  
- **`data.sql`** → Contains sample data inserts (from problem statement)  
- **`solution.sql`** → Final SQL query to compute tournament rankings  

---

## 🚀 How to Run
```bash
# 1. Clone the repository
git clone https://github.com/your-username/football-tournament-sql.git
cd football-tournament-sql

# 2. Connect to PostgreSQL
psql -U postgres -d your_database

# 3. Run schema and data
\i schema.sql
\i data.sql

# 4. Run solution query
\i solution.sql

