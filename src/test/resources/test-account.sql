CREATE TABLE Account (
  Id varchar(255) NOT NULL PRIMARY KEY,
  BillingCity varchar(255) DEFAULT NULL,
  BillingCountry varchar(255) DEFAULT NULL,
  BillingPostalCode varchar(255) DEFAULT NULL,
  BillingState varchar(255) DEFAULT NULL,
  BillingStreet varchar(255) DEFAULT NULL,
  Fax varchar(255) DEFAULT NULL,
  LastModifiedDate timestamp AS CURRENT_TIMESTAMP(),
  LastModifiedById varchar(255) AS CURRENT_USER(),
  Name varchar(255) DEFAULT NULL,
  Phone varchar(255) DEFAULT NULL,
  ShippingCity varchar(255) DEFAULT NULL,
  ShippingCountry varchar(255) DEFAULT NULL,
  ShippingPostalCode varchar(255) DEFAULT NULL,
  ShippingState varchar(255) DEFAULT NULL,
  ShippingStreet varchar(255) DEFAULT NULL
);

CREATE ALIAS UUID FOR "org.h2.value.ValueUuid.getNewRandom";