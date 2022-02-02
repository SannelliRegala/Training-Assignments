INSERT INTO admins (admin_id, email, password) VALUES ('A0001', 'admin.000@gmail.com', 'adminpassword');

insert into categories values ('C001', 'Electronics');
insert into categories values ('C002', 'Cosmetics');
insert into categories values ('C003', 'Food Supplies');


INSERT INTO products (product_id, product_name, category_id, product_price, product_image, product_available_quantity) VALUES ('P0001', 'Microphone', 'C001', '1500', 'p_mic.jpg', '30');
INSERT INTO products (product_id, product_name, category_id, product_price, product_image, product_available_quantity) VALUES ('P0002', 'Shampoo', 'C002', '30', 'p_shampoo.jpg', '100');
INSERT INTO products (product_id, product_name, category_id, product_price, product_image, product_available_quantity) VALUES ('P0003', 'Laptop', 'C001', '55000', 'p_laptop.jpg', '10');
INSERT INTO products (product_id, product_name, category_id, product_price, product_image, product_available_quantity) VALUES ('P0004', 'Canned Sardines', 'C003', '20', 'p_canned_sardines.jpg', '40');
INSERT INTO products (product_id, product_name, category_id, product_price, product_image, product_available_quantity) VALUES ('P0005', 'Cup Noodles', 'C003', '30', 'p_cup_noodles.jpg', '50');