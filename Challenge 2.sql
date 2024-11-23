SELECT d.Name, v.Vin, v.Make
FROM dealership d
INNER JOIN inventory i ON d.DealershipID = i.DealershipID
INNER JOIN vehicle v ON v.Vin = i.Vin
WHERE d.Name = 'Luxury Wheels';