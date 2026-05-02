-- =========================================
-- 🟢 ORDER & CART MODULE
-- =========================================

-- Latest Order
SELECT * FROM oc_order ORDER BY order_id DESC LIMIT 1;

-- Order Products
SELECT * FROM oc_order_product 
WHERE order_id = (SELECT MAX(order_id) FROM oc_order);

-- Order Total
SELECT total FROM oc_order ORDER BY order_id DESC LIMIT 1;

-- Cart Validation
SELECT * FROM oc_cart WHERE customer_id = 1;

-- Order Customer Link
SELECT customer_id FROM oc_order ORDER BY order_id DESC LIMIT 1;

-- Coupon Usage
SELECT * FROM oc_coupon_history;

-- Order Status
SELECT order_status_id FROM oc_order ORDER BY order_id DESC LIMIT 1;

-- Order Date
SELECT date_added FROM oc_order ORDER BY order_id DESC LIMIT 1;

-- Product Quantity in Order
SELECT quantity FROM oc_order_product 
WHERE order_id = (SELECT MAX(order_id) FROM oc_order);

-- Referential Integrity (Order ↔ Order_Product)
SELECT * FROM oc_order_product 
WHERE order_id NOT IN (SELECT order_id FROM oc_order);


-- =========================================
-- 🔵 PRODUCT & CATEGORY MODULE
-- =========================================

-- Product Creation
SELECT * FROM oc_product ORDER BY product_id DESC;

-- Product Category Mapping
SELECT * FROM oc_product_to_category WHERE product_id = 50;

-- Product Attributes
SELECT * FROM oc_product_attribute WHERE product_id = 50;

-- Product Description
SELECT * FROM oc_product_description WHERE product_id = 50;

-- Category Validation
SELECT * FROM oc_category WHERE category_id = 33;

-- Category Description
SELECT * FROM oc_category_description WHERE category_id = 33;

-- Orphan Products Check
SELECT p.product_id 
FROM oc_product p
LEFT JOIN oc_product_to_category pc 
ON p.product_id = pc.product_id
WHERE pc.category_id IS NULL;

-- Duplicate Products Check
SELECT model, COUNT(*) 
FROM oc_product 
GROUP BY model 
HAVING COUNT(*) > 1;


-- =========================================
-- 🔴 NEGATIVE & EDGE CASES
-- =========================================

-- Duplicate Email
SELECT COUNT(*) FROM oc_customer WHERE email = 'test@test.com';

-- NULL Email Check
SELECT * FROM oc_customer WHERE email IS NULL;

-- Invalid Email
SELECT * FROM oc_customer WHERE email = 'abc123';

-- Negative Quantity
SELECT * FROM oc_cart WHERE quantity < 0;

-- Invalid Product ID
SELECT * FROM oc_cart 
WHERE product_id NOT IN (SELECT product_id FROM oc_product);

-- Order Without Customer
SELECT * FROM oc_order WHERE customer_id IS NULL;

-- Negative Price
SELECT * FROM oc_product WHERE price < 0;

-- Duplicate Order Submission
SELECT COUNT(*) 
FROM oc_order 
WHERE customer_id = 1 
AND date_added > NOW() - INTERVAL 1 MINUTE;

-- Coupon Limit Check
SELECT COUNT(*) FROM oc_coupon_history WHERE coupon_id = 1;


-- =========================================
-- 🟣 SYSTEM / CONFIG MODULE
-- =========================================

-- DB Connection Test
SELECT 'Database Connected';

-- Active Currencies
SELECT currency_id, title, code, value
FROM oc_currency
WHERE status = 1;

-- Countries Validation
SELECT country_id, name, iso_code_2, iso_code_3
FROM oc_country
WHERE status = 1;

-- API Validation
SELECT api_id, username, `key`, status
FROM oc_api
WHERE status = 1;

-- Cron Jobs
SELECT cron_id, code, cycle, date_next
FROM oc_cron
WHERE status = 1;


-- =========================================
-- 🟢 DATA INTEGRITY CHECKS
-- =========================================

-- Orphan Orders
SELECT o.order_id
FROM oc_order o
LEFT JOIN oc_customer c
ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- Duplicate Emails
SELECT email, COUNT(*) AS cnt
FROM oc_customer
GROUP BY email
HAVING cnt > 1;

-- Cart Cleared After Order
SELECT c.*
FROM oc_cart c
INNER JOIN oc_order o
ON c.customer_id = o.customer_id
WHERE o.order_status_id = 5;

-- Order Total Validation
SELECT o.order_id,
o.total AS order_total,
SUM(op.price * op.quantity) AS calc_total
FROM oc_order o
JOIN oc_order_product op
ON o.order_id = op.order_id
GROUP BY o.order_id
HAVING ABS(order_total - calc_total) > 0.01;

-- Coupon Validation
SELECT ch.order_id, c.discount, ch.amount
FROM oc_coupon_history ch
JOIN oc_coupon c
ON ch.coupon_id = c.coupon_id
WHERE c.type = 'P';


-- =========================================
-- 🟢 CUSTOMER MODULE (YOUR PART 🔥)
-- =========================================

-- Customer Exists
SELECT * FROM oc_customer 
WHERE email = 'mohamed@test.com';

-- Address Linked
SELECT * FROM oc_address 
WHERE customer_id = (
  SELECT customer_id FROM oc_customer 
  WHERE email = 'mohamed@test.com'
);

-- Login Tracking
SELECT * FROM oc_customer_login 
WHERE email = 'mohamed@test.com'
ORDER BY date_added DESC LIMIT 1;

-- IP Tracking
SELECT * FROM oc_customer_ip 
WHERE customer_id = (
  SELECT customer_id FROM oc_customer 
  WHERE email = 'mohamed@test.com'
);

-- Wishlist
SELECT * FROM oc_customer_wishlist 
WHERE customer_id = (
  SELECT customer_id FROM oc_customer 
  WHERE email = 'mohamed@test.com'
);

-- Customer Group
SELECT customer_group_id FROM oc_customer 
WHERE email = 'mohamed@test.com';

-- Transactions
SELECT * FROM oc_customer_transaction 
WHERE customer_id = (
  SELECT customer_id FROM oc_customer 
  WHERE email = 'mohamed@test.com'
);

-- Duplicate Email Prevention
SELECT COUNT(*) FROM oc_customer 
WHERE email = 'mohamed@test.com';

-- NULL Validation
SELECT * FROM oc_customer 
WHERE firstname IS NULL OR email IS NULL;

-- Customer Deletion Check
SELECT * FROM oc_customer 
WHERE email = 'mohamed@test.com';
