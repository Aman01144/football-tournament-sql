
---

## 📄 schema.sql  

```sql
CREATE TABLE team_details (
    team_id    INTEGER PRIMARY KEY,
    team_name  TEXT NOT NULL
);

CREATE TABLE matches_record (
    match_id          INTEGER PRIMARY KEY,
    winning_team_id   INTEGER NOT NULL REFERENCES team_details(team_id),
    loosing_team_id   INTEGER NOT NULL REFERENCES team_details(team_id),
    goals_worthy_team INTEGER NOT NULL
);

