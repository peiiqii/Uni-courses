-- Top 5 Schuhmarken nach Häufigkeit
SELECT brand, COUNT(*) AS anzahl
FROM shoes
GROUP BY brand
ORDER BY anzahl DESC
LIMIT 5;


-- Größtes und geringstes Gewicht der Schuhe
SELECT MAX(weight) AS max_gewicht, MIN(weight) AS min_gewicht
FROM shoes;


-- Zustände der Schuhe
SELECT DISTINCT prices_condition FROM shoes WHERE prices_condition IS NOT NULL;


-- Anzahl der Schuhe pro Zustand
SELECT prices_condition, COUNT(*) AS anzahl
FROM shoes
GROUP BY prices_condition;


-- Währungen
SELECT DISTINCT prices_currency FROM shoes;


-- Häufigkeit der verschiedenen Währungen
SELECT prices_currency, COUNT(*) AS anzahl
FROM shoes
GROUP BY prices_currency;


-- Teuerste Schuhmarke im Durchschnitt (USD)
SELECT brand, AVG(price) AS durchschnittspreis
FROM shoes
WHERE prices_currency = 'USD'
GROUP BY brand
ORDER BY durchschnittspreis DESC LIMIT 1;


-- Top 5 Plattformen mit den meisten entdeckten Preisen
SELECT platform, COUNT(*) AS anzahl
FROM shoes
GROUP BY platform
ORDER BY anzahl DESC
LIMIT 5;
