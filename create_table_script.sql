-- Create Authors table
CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    bio TEXT,
    birth_date DATE,
    death_date DATE
);

-- Create Books table
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    author_id INT REFERENCES authors(author_id),
    price DECIMAL(10, 2),
    publication_date DATE,
    genre VARCHAR(50),
    stock_quantity INT
);

-- Create Customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    address TEXT,
    phone VARCHAR(20)
);

-- Create Orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE,
    total_amount DECIMAL(10, 2),
    status VARCHAR(20)
);

-- Create OrderItems table
CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    book_id INT REFERENCES books(book_id),
    quantity INT,
    subtotal DECIMAL(10, 2)
);
