-- Compares a customer’s current transaction to their previous transaction.
SELECT
    Sale_Month,
    Monthly_Sales,
    LAG(Monthly_Sales) OVER (ORDER BY Sale_Month) AS Previous_Month_Sales,
    Monthly_Sales
      - LAG(Monthly_Sales) OVER (ORDER BY Sale_Month) AS Sales_Change
FROM (
    SELECT
        TO_CHAR(Sale_Date, 'YYYY-MM') AS Sale_Month,
        SUM(Sale_Price) AS Monthly_Sales
    FROM Sales
    GROUP BY TO_CHAR(Sale_Date, 'YYYY-MM')
)
ORDER BY Sale_Month;
