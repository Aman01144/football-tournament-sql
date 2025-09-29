WITH points AS (
    SELECT winning_team_id AS team_id, 
           1 AS point,
           goals_worthy_team AS goals
    FROM matches_record
    UNION ALL
    SELECT loosing_team_id AS team_id, 
           -1 AS point,
           0 AS goals
    FROM matches_record
),
team_summary AS (
    SELECT t.team_id,
           t.team_name,
           SUM(p.point) AS total_points,
           SUM(p.goals) AS total_goals
    FROM team_details t
    LEFT JOIN points p ON t.team_id = p.team_id
    GROUP BY t.team_id, t.team_name
)
SELECT RANK() OVER (ORDER BY total_points DESC, total_goals DESC) AS rank,
       team_name
FROM team_summary
ORDER BY rank;
