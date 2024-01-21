-- إنشاء جدول لتخزين بيانات المنتجات
CREATE TABLE products (
    product_id NUMBER(5) PRIMARY KEY,
    product_name VARCHAR2(100),
    price NUMBER(10, 2),
    stock_quantity NUMBER(5)
);

-- إنشاء جدول لتخزين بيانات العملاء
CREATE TABLE customers (
    customer_id NUMBER(5) PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    email VARCHAR2(100),
    phone_number VARCHAR2(20)
);

-- إنشاء جدول لتخزين بيانات الطلبات
CREATE TABLE orders (
    order_id NUMBER(8) PRIMARY KEY,
    customer_id NUMBER(5) REFERENCES customers(customer_id),
    order_date DATE,
    total_amount NUMBER(10, 2)
);

-- إنشاء جدول لتخزين بيانات العناصر في الطلبات
CREATE TABLE order_items (
    order_item_id NUMBER(8) PRIMARY KEY,
    order_id NUMBER(8) REFERENCES orders(order_id),
    product_id NUMBER(5) REFERENCES products(product_id),
    quantity NUMBER(5),
    item_total NUMBER(10, 2)
);
-- إنشاء جدول لتخزين بيانات المنتجات
CREATE TABLE products (
    product_id NUMBER(5) PRIMARY KEY,
    product_name VARCHAR2(100),
    price NUMBER(10, 2),
    image_url VARCHAR2(255)
);

-- إنشاء جدول لتخزين بيانات الطلبات
CREATE TABLE orders (
    order_id NUMBER(8) PRIMARY KEY,
    product_id NUMBER(5) REFERENCES products(product_id),
    quantity NUMBER(5),
    total_amount NUMBER(10, 2)
);
