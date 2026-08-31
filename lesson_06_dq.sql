-- Урок №6: Поиск дубликатов в заказах
SELECT 
    order_id, 
    customer_name, 
    COUNT(*) AS repeat_count
FROM orders
GROUP BY order_id, customer_name
HAVING COUNT(*) > 1;