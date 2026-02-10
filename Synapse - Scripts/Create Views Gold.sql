--- CREATE CALENDAR

CREATE VIEW gold.calendar
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://amazingworksdatalake.blob.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT = 'PARQUET'
    ) as QUERY1

--- CREATE CUSTOMERS

CREATE VIEW gold.customer
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://amazingworksdatalake.blob.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT = 'PARQUET'
    ) as QUERY1


--- CREATE PRODUCTS

CREATE VIEW gold.products
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://amazingworksdatalake.blob.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT = 'PARQUET'
    ) as QUERY1


--- CREATE RETURNS

CREATE VIEW gold.returns
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://amazingworksdatalake.blob.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'PARQUET'
    ) as QUERY1

--- CREATE PRODUCT SUBCATEGORIES
CREATE VIEW gold.subcategories
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://amazingworksdatalake.blob.core.windows.net/silver/AdventureWorks_SUbCategories/',
        FORMAT = 'PARQUET'
    ) as QUERY1

--- CREATE SALES

CREATE VIEW gold.sales
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://amazingworksdatalake.blob.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT = 'PARQUET'
    ) as QUERY1

--- CREATE TERRITORIES
CREATE VIEW gold.territories
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://amazingworksdatalake.blob.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT = 'PARQUET'
    ) as QUERY1
