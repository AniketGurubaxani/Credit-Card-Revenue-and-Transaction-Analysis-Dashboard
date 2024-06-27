-- SQL Query to create and import data from csv files:

-- Database Creation
CREATE DATABASE ccdb;
use ccdb;
-- Credit Card Detail Table Creation

CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);


-- Customer Detail Table Creation

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

-- Extracting Data from CSV file of Credit Card

LOAD DATA INFILE 'C:/cccc.csv' INTO TABLE cc_detail
fields terminated by ','
iGNORE 1 lines;


-- Extracting Data from CSV file of Customer 
LOAD DATA INFILE 'C:/customer.csv' INTO TABLE cust_detail
fields terminated by ','
iGNORE 1 lines;

-- Adding more data to Credit Card Table

LOAD DATA INFILE 'C:/ccadd.csv' INTO TABLE cc_detail
fields terminated by ','
iGNORE 1 lines;

-- Adding more data to Customer Table

LOAD DATA INFILE 'C:/cust_add.csv' INTO TABLE cust_detail
fields terminated by ','
iGNORE 1 lines;