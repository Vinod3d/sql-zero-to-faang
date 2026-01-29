-- Running Total using Window Functions

SELECT date, amount, SUM(amount) OVER (ORDER BY date) AS running_total FROM transactions;
