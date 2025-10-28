--Object creation

CREATE TABLE Sep2025JunkDB.adriana_cuellar.planned_makes(
    guest_number INT PRIMARY KEY IDENTITY (1,1),
    first_name VARCHAR (50),
    last_name VARCHAR (50),
    email VARCHAR (100), 
    number_guests VARCHAR (10),
    phone_number VARCHAR (12), 
);

--Adding rows 
INSERT INTO Sep2025JunkDB.adriana_cuellar.planned_makes (first_name, last_name, email, number_guests, phone_number)
VALUES ('Rocio', 'Ramirez', 'rocioramirez21@hotmail.com', '1', '3176197147' ),
    ('Kelly', 'Acosta', 'kyadiaz0115@gmail.com', '2', '7342771831'),
    ('Allen', 'Mattson', 'allenmattson8@gmail.com', '4', '5176106755');

SELECT * 
FROM Sep2025JunkDB.adriana_cuellar.planned_makes

-- Update a row
UPDATE Sep2025JunkDB.adriana_cuellar.planned_makes
SET phone_number = '7344963210'
WHERE guest_number = 

-- Delete a row
DELETE FROM Sep2025JunkDB.adriana_cuellar.planned_makes
WHERE guest_number = 3

-- Drop the table 
DROP TABLE Sep2025JunkDB.adriana_cuellar.planned_makes