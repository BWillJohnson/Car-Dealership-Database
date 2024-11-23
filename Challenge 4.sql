SELECT d.Name, d.Address,v.Make,v.vehicleType
FROM dealership d
INNER JOIN inventory i ON d.DealershipID = i.DealershipID
INNER JOIN vehicle v ON i.Vin = v.Vin
WHERE i.Vin = '3N7PQRSYZ24681094';