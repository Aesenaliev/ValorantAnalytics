SELECT * FROM val

-- Gets average KD and HS percentage by Role
SELECT Role, AVG(K_D) AS avg_kd, AVG(HS) AS avg_hs
FROM val 
GROUP BY Role

-- Gets country representation
SELECT Nationality, COUNT(Nationality) as Count
FROM val
GROUP BY Nationality

-- Gets prize winnings for each team, ordered
SELECT Team, SUM(Prize) as total_winnings
FROM val
GROUP BY Team
ORDER BY total_winnings DESC

-- Gets the average KD from each team
SELECT Team, AVG(K_D) AS avg_kd
FROM val
GROUP BY Team

-- Gets the player and rank and orders by KAST score
SELECT Player, CAST(Rank AS decimal(2,1)) AS Rank, Role, KAST
FROM val
ORDER BY KAST DESC

-- Top 3 team with prize
SELECT TOP 3 Team, SUM(Prize) as Prize
FROM val
GROUP BY Team
ORDER BY SUM(Prize) DESC

SELECT REPLACE(KAST, '%', '') FROM val