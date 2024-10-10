-- Faktentabelle
CREATE TABLE fact_prices (
     id SERIAL PRIMARY KEY REFERENCES dim_products(id),
     prices_amountmin NUMERIC REFERENCES dim_prices(prices_amountmin),
     prices_amountmax NUMERIC REFERENCES dim_prices(prices_amountmax),
     dateadded DATE REFERENCES dim_time(dateadded),
     manufacturer VARCHAR(255) REFERENCES dim_manufacturer(manufacturer)
);


-- Dimensionstabelle: Produkte
CREATE TABLE dim_products (
      id SERIAL PRIMARY KEY,
      brand VARCHAR(255),
      name VARCHAR(255),
      colors VARCHAR(255),
      categories VARCHAR(255),
      weight VARCHAR(255),
      imageurls TEXT,
      merchants_name VARCHAR(255)
);


-- Dimensionstabelle: Preis
CREATE TABLE dim_prices (
     prices_amountmin NUMERIC,
     prices_amountmax NUMERIC,
     prices_currency VARCHAR(10),
     prices_condition VARCHAR(50),
);


-- Dimensionstabelle Zeit
CREATE TABLE dim_time (
    dateadded DATE,
    dateupdated DATE,
    year INT,
    month INT,
    day INT,
    quarter INT
);


-- Dimensionstabelle: Hersteller
CREATE TABLE dim_manufacturer (
    manufacturer VARCHAR(255) PRIMARY KEY,
    manufacturernumber VARCHAR(255),
)
