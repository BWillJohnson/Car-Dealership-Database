SELECT d.Name,v.vehicleType
FROM vehicle v
INNER JOIN inventory i ON i.Vin = v.Vin
INNER JOIN dealership d ON d.DealershipID = i.DealershipID
WHERE v.Make = 'Ford' AND v.Model = 'F-150';