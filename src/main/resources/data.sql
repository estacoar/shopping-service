delete from tbl_invoices;

INSERT INTO tbl_invoices (id, number_invoice, description, customer_id, create_at, state) VALUES(1, '0001', 'invoice office items', 1, NOW(),'CREATED');

delete from tbl_invoice_items;

INSERT INTO tbl_invoice_items ( invoice_id, product_id, quantity, price ) VALUES(1, 1 , 1, 178.89);
INSERT INTO tbl_invoice_items ( invoice_id, product_id, quantity, price)  VALUES(1, 2 , 2, 12.5);
INSERT INTO tbl_invoice_items ( invoice_id, product_id, quantity, price)  VALUES(1, 3 , 1, 40.06);
