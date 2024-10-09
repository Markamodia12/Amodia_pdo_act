CREATE TABLE Guests (
    guest_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255)
);

CREATE TABLE Rooms (
    room_id INT PRIMARY KEY,
    room_type VARCHAR(50),
    price_per_night DECIMAL(10, 2)
);

CREATE TABLE Reservations (
    reservation_id INT PRIMARY KEY,
    guest_id INT,
    room_id INT,
    check_in_date DATE,
    check_out_date DATE,
    number_of_guests INT,
    total_cost DECIMAL(10, 2),
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);


CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    reservation_id INT,
    payment_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (reservation_id) REFERENCES Reservations(reservation_id)
);


CREATE TABLE Services (
    service_id INT PRIMARY KEY,
    service_name VARCHAR(100),
    service_price DECIMAL(10, 2)
);


CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(50),
    contact_information VARCHAR(15)
);


INSERT INTO Guests (guest_id, first_name, last_name, email, phone_number, address) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Elm St, Springfield'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '456 Oak St, Springfield'),
(3, 'Emily', 'Jones', 'emily.jones@example.com', '345-678-9012', '789 Pine St, Springfield'),
(4, 'Michael', 'Brown', 'michael.brown@example.com', '456-789-0123', '101 Maple St, Springfield'),
(5, 'Sarah', 'Davis', 'sarah.davis@example.com', '567-890-1234', '202 Birch St, Springfield');


INSERT INTO Rooms (room_id, room_type, price_per_night) VALUES
(1, 'Single', 100.00),
(2, 'Double', 150.00),
(3, 'Suite', 250.00),
(4, 'Single', 105.00),
(5, 'Double', 160.00);


INSERT INTO Reservations (reservation_id, guest_id, room_id, check_in_date, check_out_date, number_of_guests, total_cost) VALUES
(1, 1, 1, '2024-09-01', '2024-09-05', 1, 500.00),
(2, 2, 2, '2024-09-03', '2024-09-07', 2, 600.00),
(3, 3, 3, '2024-09-10', '2024-09-12', 2, 500.00),
(4, 4, 4, '2024-09-15', '2024-09-20', 1, 525.00),
(5, 5, 5, '2024-09-20', '2024-09-25', 3, 800.00);


INSERT INTO Payments (payment_id, reservation_id, payment_date, amount) VALUES
(1, 1, '2024-09-01', 250.00),
(2, 1, '2024-09-03', 250.00),
(3, 2, '2024-09-03', 300.00),
(4, 2, '2024-09-07', 300.00),
(5, 3, '2024-09-10', 500.00);


INSERT INTO Services (service_id, service_name, service_price) VALUES
(1, 'Room Cleaning', 50.00),
(2, 'Laundry Service', 30.00),
(3, 'Spa Treatment', 120.00),
(4, 'Airport Shuttle', 40.00),
(5, 'Guided City Tour', 75.00);


INSERT INTO Staff (staff_id, first_name, last_name, position, contact_information) VALUES
(1, 'Alice', 'Johnson', 'Manager', '111-222-3333'),
(2, 'Bob', 'Smith', 'Receptionist', '222-333-4444'),
(3, 'Charlie', 'Brown', 'Housekeeper', '333-444-5555'),
(4, 'Diana', 'Williams', 'Chef', '444-555-6666'),
(5, 'Ethan', 'Jones', 'Concierge', '555-666-7777');
