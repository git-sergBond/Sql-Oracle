-- Запросы - начало:
-- 1. Поиск туров в конеретные страны: 'Багамы', 'Армения' с сортировкой по цене, 
SELECT 
  t.name AS "tour name",
  t.price,
  c."name" AS "country name"
FROM trvl_country c
JOIN trvl_tours t ON t.id_country = c.id
WHERE 
  c."name" IN (
        SELECT DISTINCT column_value
        FROM TABLE(sys.odcivarchar2list('Багамы', 'Армения'))
        )
ORDER BY t.price ASC;

-- 2. Поиск туров со скидкой для многодетной семьи и расчет цены со скидкой.
SELECT 
  t.name AS "tour name",
  t.price,
  c."name" AS "country name",
  d."name" AS "dicount reason",
  d.discount_percent AS "dicount (%)",
  (t.price * (100-d.discount_percent)/100) AS "total price"
FROM trvl_discount d
JOIN trvl_tours t ON t.id_discount = d.id
JOIN trvl_country c ON t.id_country = c.id
WHERE lower(d."name") like lower('%Многодет%')
ORDER BY t.price ASC;

-- 3. ТОП причин отказов с сортировкой по их количеству
SELECT DISTINCT
	r.reason,
	SUM(r."count") OVER (PARTITION BY r.reason) AS total
FROM trvl_refunds r
GROUP BY r.reason, r."count"
ORDER BY total DESC;

-- 4. просмотр путевок которые принесли больше прибыли, и сортировка
WITH cnt_q AS (SELECT DISTINCT
	t.id,
	SUM(s."count") OVER (PARTITION BY t.id) AS "cnt"
FROM trvl_sales s
JOIN trvl_tours t ON s.id_tour = t.id
GROUP BY t.id, s."count")

SELECT 
	t.id,
	t.name,
	t.price,
	"cnt",
	"cnt" * price AS total
FROM cnt_q
JOIN trvl_tours t ON cnt_q.id = t.id
ORDER BY total DESC;

-- 5. Расчет прибыли: прибыль = сумма продаж -  сумма долгов
WITH
duty_id_q AS (
SELECT id_sale AS id
FROM trvl_refunds
GROUP BY id_sale
),

sale_id_q AS (SELECT id FROM trvl_sales),

prof_id_q AS (
SELECT id FROM sale_id_q
MINUS
SELECT id FROM duty_id_q
),

cnt_profit AS (
SELECT DISTINCT
  t.id,
  SUM(s."count") OVER (PARTITION BY t.id) AS "cnt"
FROM trvl_sales s
JOIN trvl_tours t ON s.id_tour = t.id
WHERE s.id IN (SELECT id FROM prof_id_q)
GROUP BY t.id, s."count"
),

sum_profit AS (
SELECT 
  SUM("cnt" * price) AS total
FROM cnt_profit prf
JOIN trvl_tours t ON prf.id = t.id
ORDER BY total DESC
)

SELECT
  sum_profit.total AS profit
FROM sum_profit;
 
-- Зпросы - конец.