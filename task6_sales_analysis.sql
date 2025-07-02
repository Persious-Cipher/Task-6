
DROP TABLE IF EXISTS Online_Sales;

CREATE TABLE Online_Sales (
  "Order ID" TEXT,
  "Order Date" TEXT,
  "Amount" REAL
);

INSERT INTO Online_Sales ("Order ID", "Order Date", "Amount") VALUES
('ORD-001', '2022-01-05', 100.0),
('ORD-002', '2022-01-12', 200.0),
('ORD-003', '2022-02-03', 150.0),
('ORD-004', '2022-02-15', 80.0),
('ORD-005', '2022-03-01', 220.0),
('ORD-006', '2022-03-25', 300.0),
('ORD-007', '2022-04-10', 170.0),
('ORD-008', '2022-04-20', 190.0),
('ORD-009', '2022-05-02', 210.0),
('ORD-010', '2022-05-18', 230.0),
('ORD-011', '2022-06-06', 150.0),
('ORD-012', '2022-06-15', 160.0),
('ORD-013', '2022-07-03', 240.0),
('ORD-014', '2022-07-25', 300.0),
('ORD-015', '2022-08-14', 180.0),
('ORD-016', '2022-08-22', 210.0),
('ORD-017', '2022-09-10', 130.0),
('ORD-018', '2022-09-29', 170.0),
('ORD-019', '2022-10-05', 250.0),
('ORD-020', '2022-10-22', 300.0),
('ORD-021', '2022-11-01', 400.0),
('ORD-022', '2022-11-19', 360.0),
('ORD-023', '2022-12-08', 320.0),
('ORD-024', '2022-12-25', 280.0),
('ORD-025', '2023-01-10', 190.0),
('ORD-026', '2023-01-22', 160.0),
('ORD-027', '2023-02-11', 220.0),
('ORD-028', '2023-02-25', 210.0),
('ORD-029', '2023-03-06', 300.0),
('ORD-030', '2023-03-15', 400.0),
('ORD-031', '2023-04-03', 310.0),
('ORD-032', '2023-04-28', 270.0),
('ORD-033', '2023-05-09', 180.0),
('ORD-034', '2023-05-21', 250.0),
('ORD-035', '2023-06-12', 260.0),
('ORD-036', '2023-06-30', 220.0),
('ORD-037', '2023-07-04', 210.0),
('ORD-038', '2023-07-25', 330.0),
('ORD-039', '2023-08-13', 180.0),
('ORD-040', '2023-08-29', 310.0),
('ORD-041', '2023-09-05', 290.0),
('ORD-042', '2023-09-18', 320.0),
('ORD-043', '2023-10-07', 350.0),
('ORD-044', '2023-10-23', 370.0),
('ORD-045', '2023-11-11', 410.0),
('ORD-046', '2023-11-29', 380.0),
('ORD-047', '2023-12-01', 430.0),
('ORD-048', '2023-12-19', 440.0),
('ORD-049', '2024-01-10', 390.0),
('ORD-050', '2024-01-25', 410.0);

-- Monthly revenue and order count (2023 only)
SELECT
  strftime('%Y', "Order Date") AS year,
  strftime('%m', "Order Date") AS month,
  SUM("Amount") AS monthly_revenue,
  COUNT(DISTINCT "Order ID") AS total_orders
FROM
  Online_Sales
WHERE
  strftime('%Y', "Order Date") = '2023'
GROUP BY
  year, month
ORDER BY
  year, month;

-- Top 3 months by revenue (all years)
SELECT
  strftime('%Y', "Order Date") AS year,
  strftime('%m', "Order Date") AS month,
  SUM("Amount") AS monthly_revenue
FROM
  Online_Sales
GROUP BY
  year, month
ORDER BY
  monthly_revenue DESC
LIMIT 3;
