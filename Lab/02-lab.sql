-- ============================================
-- Lab Task #01 : Schema Definition
-- ============================================

-- Create ACCOUNT table
CREATE TABLE account (
    account_no CHAR(5) PRIMARY KEY,
    balance NUMBER NOT NULL,
    CONSTRAINT account_balance_chk
        CHECK (balance >= 0)
);

DESC account;

-- Create CUSTOMER table
CREATE TABLE customer (
    customer_no CHAR(5) PRIMARY KEY,
    customer_name VARCHAR2(20) NOT NULL,
    customer_city VARCHAR2(10)
);

DESC customer;

-- Create DEPOSITOR table
CREATE TABLE depositor (
    account_no CHAR(5),
    customer_no CHAR(5),
    PRIMARY KEY (account_no, customer_no)
);

DESC depositor;


-- ============================================
-- Lab Task #02 : Schema Modification
-- ============================================

-- (i) Add date_of_birth attribute
ALTER TABLE customer
ADD date_of_birth DATE;

DESC customer;

-- (ii) Drop date_of_birth attribute
ALTER TABLE customer
DROP COLUMN date_of_birth;

DESC customer;

-- (iii) Rename columns
ALTER TABLE depositor
RENAME COLUMN account_no TO a_no;

ALTER TABLE depositor
RENAME COLUMN customer_no TO c_no;

DESC depositor;

-- (iv) Add foreign key constraints
ALTER TABLE depositor
ADD CONSTRAINT depositor_fk1
FOREIGN KEY (a_no)
REFERENCES account(account_no);

ALTER TABLE depositor
ADD CONSTRAINT depositor_fk2
FOREIGN KEY (c_no)
REFERENCES customer(customer_no);

DESC depositor;