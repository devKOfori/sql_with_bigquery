-- Insert into Authors table
INSERT INTO authors (first_name, last_name, bio, birth_date, death_date)
VALUES
    ('Jane', 'Doe', 'An accomplished author', '1980-01-01', NULL),
    ('John', 'Smith', 'Bestselling author and speaker', '1975-03-15', NULL),
    ('Alice', 'Johnson', 'Sci-fi enthusiast and writer', '1990-07-22', NULL),
    ('Michael', 'Brown', 'Historical fiction writer', '1985-05-10', NULL),
    ('Emily', 'Williams', 'Poet and novelist', '1988-12-18', NULL);

-- Insert into Books table
INSERT INTO books (title, author_id, price, publication_date, genre, stock_quantity)
VALUES
    ('The Hidden Gem', 107, 29.99, '2022-02-15', 'Mystery', 100),
    ('Beyond the Stars', 109, 19.99, '2021-05-20', 'Sci-Fi', 75),
    ('Timeless Tales', 110, 24.99, '2020-10-10', 'Historical Fiction', 120),
    ('Whispers of the Wind', 108, 34.99, '2023-01-08', 'Thriller', 50),
    ('Eternal Echoes', 111, 14.99, '2022-07-01', 'Poetry', 90);

-- Insert into Customers table
INSERT INTO customers (first_name, last_name, email, address, phone)
VALUES
    ('David', 'Miller', 'david@email.com', '123 Main St, Cityville', '555-1234'),
    ('Sophie', 'Taylor', 'sophie@email.com', '456 Oak St, Townsville', '555-5678'),
    ('Robert', 'Johnson', 'robert@email.com', '789 Pine St, Villagetown', '555-9876'),
    ('Emma', 'Davis', 'emma@email.com', '101 Cedar St, Hamletville', '555-4321'),
    ('Chris', 'Wilson', 'chris@email.com', '202 Elm St, Boroughburg', '555-8765');

-- Insert into Orders table
INSERT INTO orders (customer_id, order_date, total_amount, status)
VALUES
    (1, '2023-02-10', 89.97, 'Shipped'),
    (2, '2023-01-25', 44.98, 'Processing'),
    (3, '2022-12-05', 74.95, 'Delivered'),
    (4, '2022-11-18', 59.96, 'Shipped'),
    (5, '2022-10-02', 29.98, 'Processing');

-- Insert into OrderItems table
INSERT INTO order_items (order_id, book_id, quantity, subtotal)
VALUES
    (1, 11, 3, 89.97),
    (2, 13, 2, 44.98),
    (3, 15, 1, 29.99),
    (4, 12, 4, 139.96),
    (5, 14, 1, 34.99);

