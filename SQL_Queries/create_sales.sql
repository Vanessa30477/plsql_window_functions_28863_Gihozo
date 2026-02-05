-- Defining Sales table and adding foreign keys.
CREATE TABLE Sales (
    Sale_ID NUMBER PRIMARY KEY,
    Car_ID NUMBER,
    Customer_ID NUMBER,
    Sale_Price NUMBER(10,2),
    Transaction_Type VARCHAR2(20),
    Sale_Date DATE,
    CONSTRAINT fk_car
        FOREIGN KEY (Car_ID) REFERENCES Inventory(Car_ID),
    CONSTRAINT fk_customer
        FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);
