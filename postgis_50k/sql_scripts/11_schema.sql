CREATE TABLE Stores (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(3) NOT NULL,
    postal_code VARCHAR(7) NOT NULL,
    location GEOGRAPHY(POINT, 4326) NOT NULL
);

CREATE TABLE Products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    calories INTEGER NOT NULL,
    protein NUMERIC(10, 2) NOT NULL,
    carbs NUMERIC(10, 2) NOT NULL,
    fat NUMERIC(10, 2) NOT NULL,
    store_id INTEGER REFERENCES Stores(id) ON DELETE CASCADE
);
