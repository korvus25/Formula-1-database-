UPDATE Drivers d
SET d.career_points = (
    SELECT COALESCE(SUM(res.points_awarded), 0)
    FROM Results res
    WHERE res.driver_id = d.driver_id
)
WHERE EXISTS (
    SELECT 1
    FROM Results res2
    WHERE res2.driver_id = d.driver_id
);
COMMIT;

DELETE FROM Pit_Stops
WHERE race_id IN (
    SELECT r.race_id
    FROM Races r
    WHERE r.status = 'cancelled'
)
OR driver_id NOT IN (
    SELECT DISTINCT ch.driver_id
    FROM Championships ch
    WHERE ch.season_year = 2024
      AND ch.type        = 'Drivers'
);
COMMIT;