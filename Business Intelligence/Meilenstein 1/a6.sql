SELECT
    p.brand,
    MAX(f.prices_amountmax) - MIN(f.prices_amountmin) AS price_range
FROM
    fact_prices f
        JOIN
    dim_products p ON f.id = p.id
GROUP BY
    p.brand
ORDER BY
    price_range DESC
    LIMIT 1;

