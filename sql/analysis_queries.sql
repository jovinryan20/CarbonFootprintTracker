-- Analysis Queries 

-- 1. Which transport mode causes the most emissions?

SELECT mode, SUM(co2_emission_kg) AS total_emission
FROM transport_log
GROUP BY mode
ORDER BY total_emission DESC;

-- 2. Which diet type is most sustainable?

SELECT diet_type, AVG(co2_emission_kg) AS avg_emission
FROM diet_log
GROUP BY diet_type
ORDER BY avg_emission ASC;

-- 3. City with lowest carbon footprint

SELECT u.city, AVG(t.co2_emission_kg + e.co2_emission_kg + d.co2_emission_kg + s.co2_emission_kg) AS avg_emission
FROM users u
JOIN transport_log t ON u.user_id = t.user_id
JOIN energy_log e ON u.user_id = e.user_id
JOIN diet_log d ON u.user_id = d.user_id
JOIN shopping_log s ON u.user_id = s.user_id
GROUP BY u.city
ORDER BY avg_emission ASC;

-- 4. Average footprint by occupation
SELECT occupation, AVG(t.co2_emission_kg + e.co2_emission_kg + d.co2_emission_kg + s.co2_emission_kg) AS avg_emission
FROM users u
JOIN transport_log t ON u.user_id = t.user_id
JOIN energy_log e ON u.user_id = e.user_id
JOIN diet_log d ON u.user_id = d.user_id
JOIN shopping_log s ON u.user_id = s.user_id
GROUP BY occupation
ORDER BY avg_emission DESC;