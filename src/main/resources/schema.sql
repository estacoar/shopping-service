
DROP TABLE IF EXISTS tbl_invoices;

CREATE TABLE tbl_invoices (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    number_invoice VARCHAR(50) NOT NULL,
    description VARCHAR(255),
    customer_id BIGINT NOT NULL,
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    state VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_invoice_items (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    invoice_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (invoice_id) REFERENCES tbl_invoices(id)
);