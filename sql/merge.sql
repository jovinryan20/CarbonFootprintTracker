CREATE VIEW user_total_emissions AS
SELECT u.user_id, u.name, u.city, u.occupation,
       SUM(t.co2_emission_kg) AS transport_emission,
       SUM(e.co2_emission_kg) AS energy_emission,
       SUM(d.co2_emission_kg) AS diet_emission,
       SUM(s.co2_emission_kg) AS shopping_emission,
       SUM(t.co2_emission_kg + e.co2_emission_kg + d.co2_emission_kg + s.co2_emission_kg) AS total_emission
FROM users u
LEFT JOIN transport_log t ON u.user_id = t.user_id
LEFT JOIN energy_log e ON u.user_id = e.user_id
LEFT JOIN diet_log d ON u.user_id = d.user_id
LEFT JOIN shopping_log s ON u.user_id = s.user_id
GROUP BY u.user_id, u.name, u.city, u.occupation;

SELECT * FROM user_total_emissions;