SELECT d.first_name || ' ' || d.last_name  AS driver_name, r.name AS race_name, r.race_date, res.finish_position, res.points_awarded, res.status
FROM Results res
JOIN Drivers d  ON res.driver_id = d.driver_id
JOIN Races   r  ON res.race_id   = r.race_id
WHERE res.status = 'finished' AND r.status   = 'completed'
ORDER BY r.race_date, res.finish_position;

SELECT d.first_name || ' ' || d.last_name  AS driver_name, c.name AS circuit_name, c.circuit_type, ps.stop_number, ps.lap_number, ps.duration_seconds, ps.tyre_compound
FROM Pit_Stops ps
JOIN Drivers  d  ON ps.driver_id  = d.driver_id
JOIN Races    r  ON ps.race_id    = r.race_id
JOIN Circuits c  ON r.circuit_id  = c.circuit_id
WHERE c.circuit_type = 'street'
ORDER BY d.last_name, ps.stop_number;

SELECT t.name AS team_name,
    COUNT(res.result_id) AS total_entries,
    SUM(res.points_awarded) AS total_points,
    COUNT(CASE WHEN res.finish_position = 1 THEN 1 END) AS total_wins,
    AVG(res.points_awarded) AS avg_points_per_race,
    MIN(res.finish_position) AS best_finish
FROM Results res
JOIN Teams t ON res.team_id = t.team_id
JOIN Races r ON res.race_id  = r.race_id
WHERE r.status = 'completed'
GROUP BY t.name
ORDER BY total_points DESC;

SELECT d.first_name || ' ' || d.last_name AS driver_name, r.name AS race_name,
COUNT(ps.pit_stop_id)  AS number_of_stops,
    ROUND(AVG(ps.duration_seconds), 3) AS avg_stop_duration_sec,
    MIN(ps.duration_seconds) AS fastest_stop_sec,
    MAX(ps.duration_seconds) AS slowest_stop_sec
FROM Pit_Stops ps
JOIN Drivers d ON ps.driver_id = d.driver_id
JOIN Races   r ON ps.race_id   = r.race_id
GROUP BY d.first_name, d.last_name, r.name
ORDER BY avg_stop_duration_sec ASC;

SELECT d.driver_id, d.first_name || ' ' || d.last_name  AS driver_name, d.nationality, d.career_points
FROM Drivers d
WHERE d.driver_id IN (
    SELECT DISTINCT res.driver_id
    FROM Results res
    WHERE res.finish_position = 1
)
ORDER BY d.career_points DESC;

SELECT r.name        AS race_name, r.race_date, r.season_year, c.name AS circuit_name, c.length_km, c.circuit_type
FROM Races r
JOIN Circuits c ON r.circuit_id = c.circuit_id
WHERE c.length_km > (
    SELECT AVG(length_km)
    FROM Circuits
)
ORDER BY c.length_km DESC;

SELECT d.first_name || ' ' || d.last_name  AS driver_name, d.nationality, d.career_points,
    (
        SELECT MIN(res_inner.finish_position)
        FROM Results res_inner
        WHERE res_inner.driver_id = d.driver_id
          AND res_inner.finish_position IS NOT NULL
    ) AS best_finish_position,
    (
        SELECT r_inner.name
        FROM Results res_inner2
        JOIN Races r_inner ON res_inner2.race_id = r_inner.race_id
        WHERE res_inner2.driver_id = d.driver_id
          AND res_inner2.finish_position = (
              SELECT MIN(res_min.finish_position)
              FROM Results res_min
              WHERE res_min.driver_id = d.driver_id AND res_min.finish_position IS NOT NULL
          )
          AND ROWNUM = 1
    ) AS race_of_best_finish,
    ch.rank AS championship_rank_2024
FROM Drivers d
LEFT JOIN Championships ch
    ON ch.driver_id   = d.driver_id
   AND ch.season_year = 2024
ORDER BY best_finish_position ASC NULLS LAST, d.career_points DESC;

