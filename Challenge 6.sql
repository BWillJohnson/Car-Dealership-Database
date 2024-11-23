SELECT *
FROM sales_contract sc
INNER JOIN inventory i ON i.Vin = sc.Vin
INNER JOIN Dealership d ON i.dealershipID = d.dealershipID
WHERE DATE <= '2024-11-10';