-- Defining inventory table.
CREATE TABLE Inventory (
    Car_ID NUMBER PRIMARY KEY,
    Manufacturer VARCHAR2(50),
    Model_Yr VARCHAR2(50),
    Purchase_Price NUMBER(10,2)
);
