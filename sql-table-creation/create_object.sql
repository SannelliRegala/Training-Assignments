CREATE TABLE admins (
admin_id varchar(10) PRIMARY KEY,
email varchar(50) NOT NULL UNIQUE,
password varchar(100) NOT NULL
);


CREATE TABLE customers (
user_id varchar(10) PRIMARY KEY,
username varchar(50) NOT NULL,
email varchar(50) NOT NULL UNIQUE,
password varchar(255) NOT NULL,
date_of_registration date DEFAULT sysdate,
address varchar(255) NOT NULL,
contact_number char(11) NOT NULL
);


CREATE TABLE products (
product_id varchar(10) PRIMARY KEY,
product_name varchar(100) NOT NULL,
category_id varchar(10),
product_price number(10,2),
product_image varchar2(100),
product_available_quantity number(10),

CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES categories(category_id)
);


CREATE TABLE categories (
category_id varchar(10) PRIMARY KEY,
category_name varchar(100) NOT NULL
);

CREATE TABLE carts (
cart_id varchar(10) PRIMARY KEY,
user_id varchar(10),

CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES customers(user_id)
);

CREATE TABLE cart_items (
cart_items_id varchar(10) PRIMARY KEY,
cart_id varchar(10) NOT NULL,
user_id varchar(10),
product_id varchar(10),
product_quantity number(10),

CONSTRAINT fk_cart_id FOREIGN KEY (cart_id) REFERENCES carts(cart_id),
CONSTRAINT fk_user_id_2 FOREIGN KEY (user_id) REFERENCES customers(user_id),
CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE orders (
order_id varchar(10) PRIMARY KEY,
cart_id varchar(10) NOT NULL,
user_id varchar(10) NOT NULL,
order_date date DEFAULT sysdate,
dispatch_date date DEFAULT (sysdate+7),
coupon_id varchar(10),
bill_amount number(10,2),
payment_method varchar(50),

CONSTRAINT fk_cart_id_2 FOREIGN KEY (cart_id) REFERENCES carts(cart_id),
CONSTRAINT fk_user_id_3 FOREIGN KEY (user_id) REFERENCES customers(user_id),
CONSTRAINT payment_method_const CHECK (payment_method in ('COD', 'Credit', 'Debit', 'Wallet'))
);

CREATE TABLE coupons (
coupon_id varchar(10) PRIMARY KEY,
coupon_name varchar(50) NOT NULL,
discount_value number(10,2),
expiry_date date
);
