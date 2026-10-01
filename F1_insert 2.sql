INSERT INTO Circuits (circuit_id, name, location, country, length_km, total_laps, circuit_type)
VALUES (1, 'Silverstone Circuit', 'Silverstone', 'United Kingdom', 5.891, 52, 'permanent');

INSERT INTO Circuits (circuit_id, name, location, country, length_km, total_laps, circuit_type)
VALUES (2, 'Circuit de Monaco', 'Monte Carlo', 'Monaco', 3.337, 78, 'street');

INSERT INTO Circuits (circuit_id, name, location, country, length_km, total_laps, circuit_type)
VALUES (3, 'Monza Circuit', 'Monza', 'Italy', 5.793, 53, 'permanent');

INSERT INTO Circuits (circuit_id, name, location, country, length_km, total_laps, circuit_type)
VALUES (4, 'Circuit de Spa-Francorchamps', 'Stavelot', 'Belgium', 7.004, 44, 'permanent');

INSERT INTO Circuits (circuit_id, name, location, country, length_km, total_laps, circuit_type)
VALUES (5, 'Suzuka International Racing Course', 'Suzuka', 'Japan', 5.807, 53, 'permanent');

INSERT INTO Teams (team_id, name, base_country, constructors_championships, founded_year)
VALUES (1, 'Red Bull Racing', 'Austria', 6, 2005);

INSERT INTO Teams (team_id, name, base_country, constructors_championships, founded_year)
VALUES (2, 'Scuderia Ferrari', 'Italy', 16, 1950);

INSERT INTO Teams (team_id, name, base_country, constructors_championships, founded_year)
VALUES (3, 'Mercedes-AMG Petronas', 'Germany', 8, 1954);

INSERT INTO Teams (team_id, name, base_country, constructors_championships, founded_year)
VALUES (4, 'McLaren Racing', 'United Kingdom', 8, 1963);

INSERT INTO Teams (team_id, name, base_country, constructors_championships, founded_year)
VALUES (5, 'Aston Martin Aramco', 'United Kingdom', 0, 2021);

INSERT INTO Drivers (driver_id, first_name, last_name, date_of_birth, nationality, license_number, career_points)
VALUES (1, 'Max', 'Verstappen', DATE '1997-09-30', 'Dutch', 'LIC-NL-0001', 2586.5);

INSERT INTO Drivers (driver_id, first_name, last_name, date_of_birth, nationality, license_number, career_points)
VALUES (2, 'Lewis', 'Hamilton', DATE '1985-01-07', 'British', 'LIC-GB-0001', 4639.5);

INSERT INTO Drivers (driver_id, first_name, last_name, date_of_birth, nationality, license_number, career_points)
VALUES (3, 'Charles', 'Leclerc', DATE '1997-10-16', 'Monegasque', 'LIC-MC-0001', 1064.0);

INSERT INTO Drivers (driver_id, first_name, last_name, date_of_birth, nationality, license_number, career_points)
VALUES (4, 'Lando', 'Norris', DATE '1999-11-13', 'British', 'LIC-GB-0002', 770.0);

INSERT INTO Drivers (driver_id, first_name, last_name, date_of_birth, nationality, license_number, career_points)
VALUES (5, 'Carlos', 'Sainz', DATE '1994-09-01', 'Spanish', 'LIC-ES-0001', 1116.5);

INSERT INTO Driver_Team (driver_team_id, driver_id, team_id, season_year, car_number, joined_date, left_date)
VALUES (1, 1, 1, 2024, 1, DATE '2024-01-01', NULL);

INSERT INTO Driver_Team (driver_team_id, driver_id, team_id, season_year, car_number, joined_date, left_date)
VALUES (2, 4, 4, 2024, 4, DATE '2024-01-01', NULL);

INSERT INTO Driver_Team (driver_team_id, driver_id, team_id, season_year, car_number, joined_date, left_date)
VALUES (3, 3, 2, 2024, 16, DATE '2024-01-01', NULL);

INSERT INTO Races (race_id, circuit_id, season_year, round_number, name, race_date, status)
VALUES (1, 1, 2024, 12, 'British Grand Prix', DATE '2024-07-07', 'completed');

INSERT INTO Races (race_id, circuit_id, season_year, round_number, name, race_date, status)
VALUES (2, 2, 2024, 8, 'Monaco Grand Prix', DATE '2024-05-26', 'completed');

INSERT INTO Races (race_id, circuit_id, season_year, round_number, name, race_date, status)
VALUES (3, 3, 2024, 16, 'Italian Grand Prix', DATE '2024-09-01', 'completed');

INSERT INTO Races (race_id, circuit_id, season_year, round_number, name, race_date, status)
VALUES (4, 4, 2024, 14, 'Belgian Grand Prix', DATE '2024-07-28', 'completed');

INSERT INTO Races (race_id, circuit_id, season_year, round_number, name, race_date, status)
VALUES (5, 5, 2024, 4, 'Japanese Grand Prix', DATE '2024-04-07', 'scheduled');


INSERT INTO Results (result_id, race_id, driver_id, team_id, grid_position, finish_position, points_awarded, status, fastest_lap_rank, race_time_seconds)
VALUES (1, 1, 4, 4, 2, 1, 25, 'finished', 1, 5567.123);

INSERT INTO Results (result_id, race_id, driver_id, team_id, grid_position, finish_position, points_awarded, status, fastest_lap_rank, race_time_seconds)
VALUES (2, 1, 3, 2, 1, 2, 18, 'finished', 2, 5579.812);

INSERT INTO Results (result_id, race_id, driver_id, team_id, grid_position, finish_position, points_awarded, status, fastest_lap_rank, race_time_seconds)
VALUES (3, 1, 1, 1, 3, 3, 15, 'finished', 3, 5581.234);

INSERT INTO Pit_Stops (pit_stop_id, stop_number, lap_number, duration_seconds, tyre_compound, driver_id, race_id, result_id)
VALUES (1, 1, 14, 23.456, 'Medium', 4, 1, 1);

INSERT INTO Pit_Stops (pit_stop_id, stop_number, lap_number, duration_seconds, tyre_compound, driver_id, race_id, result_id)
VALUES (2, 1, 18, 25.001, 'Hard', 3, 1, 2);

INSERT INTO Pit_Stops (pit_stop_id, stop_number, lap_number, duration_seconds, tyre_compound, driver_id, race_id, result_id)
VALUES (3, 1, 20, 23.900, 'Medium', 1, 1, 3);

INSERT INTO Race_Officials (race_officials_id, first_name, last_name, role, nationality, license_number)
VALUES (1, 'Niels', 'Wittich', 'Race Director', 'German', 1001);

INSERT INTO Race_Officials (race_officials_id, first_name, last_name, role, nationality, license_number)
VALUES (2, 'Eduardo', 'Freitas', 'Race Director', 'Portuguese', 1002);

INSERT INTO Race_Officials (race_officials_id, first_name, last_name, role, nationality, license_number)
VALUES (3, 'Garry', 'Connelly', 'Steward', 'Australian', 1003);

INSERT INTO Race_Officials (race_officials_id, first_name, last_name, role, nationality, license_number)
VALUES (4, 'Mathieu', 'Remmerie', 'Steward', 'Belgian', 1004);

INSERT INTO Race_Officials (race_officials_id, first_name, last_name, role, nationality, license_number)
VALUES (5, 'Tim', 'Mayer', 'Steward', 'American', 1005);

INSERT INTO Race_Stewards (steward_id, race_officials_id, race_id, assigned_date, notes)
VALUES (1, 1, 1, DATE '2024-07-05', 'Race Director for British GP 2024');

INSERT INTO Race_Stewards (steward_id, race_officials_id, race_id, assigned_date, notes)
VALUES (2, 3, 1, DATE '2024-07-05', 'Lead steward for British GP 2024');

INSERT INTO Race_Stewards (steward_id, race_officials_id, race_id, assigned_date, notes)
VALUES (3, 4, 1, DATE '2024-07-05', 'Panel steward for British GP 2024');

INSERT INTO Championships (championships_id, driver_id, driver_team_id, season_year, type, total_points, wins, rank)
VALUES (1, 4, 2, 2024, 'Drivers', 356, 4, 1);

INSERT INTO Championships (championships_id, driver_id, driver_team_id, season_year, type, total_points, wins, rank)
VALUES (2, 3, 3, 2024, 'Drivers', 341, 5, 2);

INSERT INTO Championships (championships_id, driver_id, driver_team_id, season_year, type, total_points, wins, rank)
VALUES (3, 1, 1, 2024, 'Drivers', 575, 9, 3);

COMMIT;
