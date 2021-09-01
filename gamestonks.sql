/* Milena Zlaticanin
   CSCI 466 - 1
   Professor Lehuta
   Due: 02/12/21
*/

CREATE TABLE `BankAcc` (
  `Bank_ID`  varchar(20) PRIMARY KEY,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
);

CREATE TABLE `Customer` (
  `Cust_ID`  varchar(20) PRIMARY KEY,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
);

CREATE TABLE `ExchangeAcc` (
  `Exng_ID`  varchar(20) PRIMARY KEY,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
);

CREATE TABLE `Stock` (
  `Symbol_ID`      char(4)     PRIMARY KEY,
  `Full_Comp_Name` varchar(30) DEFAULT NULL
);

CREATE TABLE `LimitOrd` (
    `Lmt_ID`      varchar(15)  PRIMARY KEY,
    `Exng_ID`     varchar(20)  NOT NULL,
    `Symbol_ID`   char(4)      NOT NULL,
    `Limit_price` decimal(5,2) NOT NULL,
    `Status`      varchar(20)  NOT NULL,
    `Date`        date         NOT NULL,
    `Amount`      int,

    FOREIGN KEY (Exng_ID)   REFERENCES ExchangeAcc(Exng_ID),
    FOREIGN KEY (Symbol_ID) REFERENCES Stock(Symbol_ID)
);

CREATE TABLE `MarketOrd` (
    `Mkt_ID`       varchar(15)  PRIMARY KEY,
    `Exng_ID`      varchar(20)  NOT NULL,
    `Symbol_ID`    char(4)      NOT NULL,
    `Market_price` decimal(5,2) NOT NULL,
    `Status`       varchar(20)  NOT NULL,
    `Date`         date         NOT NULL,

    FOREIGN KEY (Exng_ID)   REFERENCES ExchangeAcc(Exng_ID),
    FOREIGN KEY (Symbol_ID) REFERENCES Stock(Symbol_ID)
);

CREATE TABLE `Holds` (
    `Price_ID`    decimal(5,2)  PRIMARY KEY,
    `Cust_ID`     varchar(20)   NOT NULL,
    `Symbol_ID`   char(4)       NOT NULL,
    `Shares`      int,

    FOREIGN KEY (Cust_ID)   REFERENCES Customer(Cust_ID),
    FOREIGN KEY (Symbol_ID) REFERENCES Stock(Symbol_ID)
);

CREATE TABLE `Transaction` (
    `Date`        date          PRIMARY KEY,
    `Exng_ID`     varchar(20)   NOT NULL,
    `Bank_ID`     varchar(20)   NOT NULL,
    `Deposit`     int           NOT NULL,
    `Withdraw`    int           NOT NULL,
    `Amount`      int           NOT NULL,

    FOREIGN KEY (Exng_ID)   REFERENCES ExchangeAcc(Exng_ID),
    FOREIGN KEY (Bank_ID)   REFERENCES BankAcc(Bank_ID)
);

CREATE TABLE `Buys` (
    `Date`        date          PRIMARY KEY,
    `Cust_ID`     varchar(20)   NOT NULL,
    `Symbol_ID`   varchar(20)   NOT NULL,
    `Shares`      int           NOT NULL,

    FOREIGN KEY (Cust_ID)    REFERENCES Customer(Cust_ID),
    FOREIGN KEY (Symbol_ID)  REFERENCES Stock(Symbol_ID)
);