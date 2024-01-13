-- Generate 100 records for Authors table
INSERT INTO authors (first_name, last_name, bio, birth_date, death_date)
SELECT
    'FirstName' || i,
    'LastName' || i,
    'Biography for author ' || i,
    TO_DATE(
        (1920 + (i % 50)) || '-' || LPAD((i % 12 + 1)::TEXT, 2, '0') || '-' || LPAD((i % 28 + 1)::TEXT, 2, '0'),
        'YYYY-MM-DD'
    ),
    NULL
FROM generate_series(1, 100) AS i;


-- Generate 100 records for Books table
INSERT INTO books (title, author_id, price, publication_date, genre, stock_quantity)
SELECT
    'BookTitle' || i,
    (i % 10 + 1),
    ROUND(RANDOM() * 50 + 10, 2),
    '20' || LPAD((i % 22 + 1)::TEXT, 2, '0') || '-'
    || LPAD((i % 11 + 1)::TEXT, 2, '0') || '-'
    || LPAD((2000 + (i % 20))::TEXT, 4, '0')::DATE,
    CASE
        WHEN i % 3 = 0 THEN 'Fiction'
        WHEN i % 3 = 1 THEN 'Non-Fiction'
        ELSE 'Science Fiction'
    END,
    (i % 50 + 1)
FROM generate_series(1, 100) AS i;

-- Generate 100 records for Customers table
INSERT INTO customers (first_name, last_name, email, address, phone)
SELECT
    'CustomerFirstName' || i,
    'CustomerLastName' || i,
    'customer' || i || '@email.com',
    'Address' || i,
    '555-' || LPAD((i % 900 + 100)::TEXT, 4, '0')
FROM generate_series(1, 100) AS i;

-- Generate 100 records for Orders table
INSERT INTO orders (customer_id, order_date, total_amount, status)
SELECT
    (i % 20 + 1),
    CURRENT_DATE - (i % 30 + 1),
    ROUND(RANDOM() * 100 + 20, 2),
    CASE
        WHEN i % 4 = 0 THEN 'Shipped'
        WHEN i % 4 = 1 THEN 'Processing'
        WHEN i % 4 = 2 THEN 'Delivered'
        ELSE 'Cancelled'
    END
FROM generate_series(1, 100) AS i;

-- Generate 100 records for OrderItems table
INSERT INTO order_items (order_id, book_id, quantity, subtotal)
SELECT
    (i % 50 + 1),
    (i % 100 + 1),
    (i % 5 + 1),
    ROUND(RANDOM() * 50 + 10, 2)
FROM generate_series(1, 100) AS i;
