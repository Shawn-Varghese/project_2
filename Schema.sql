-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

drop table if exists "Redfin" ;
drop table if exists "Covid_Counties";
drop table if exists "County_List"; 
CREATE TABLE "County_List" (
    "name" VARCHAR   NOT NULL,
    "state" VARCHAR   NOT NULL,
    "region" VARCHAR PRIMARY KEY  NOT NULL
);

drop table if exists "Redfin" ;
 CREATE TABLE "Redfin" (
     "period_begin" date   NOT NULL,
     "period_end" date   NOT NULL,
     "Region" VARCHAR   NOT NULL,
     "state" VARCHAR   NOT NULL,
     "state_code" VARCHAR   NOT NULL,
     "property_type" VARCHAR   NOT NULL,
     "median_sales_price" int   NOT NULL,
     "median_list_price" int   NOT NULL,
     "median_ppsf" int   NOT NULL,
     "median_list_ppsf" int   NOT NULL,
     "homes_sold" int   NOT NULL,
     "pending_sales" int   NOT NULL,
     "new_listings" int   NOT NULL,
     "inventory" int   NOT NULL,
     "months_of_supply" decimal   NOT NULL,
     "median_dom" int   NOT NULL,
     "avg_sale_to_list" decimal   NOT NULL,
     "sold_above_list" decimal   NOT NULL,
     "price_drops" decimal   NOT NULL,
     "off_market_in_two_weeks" decimal   NOT NULL,
     "parent_metro_region" VARCHAR   NOT NULL,
     "parent_metro_region_metro_code" int   NOT NULL,
	 FOREIGN KEY("Region") REFERENCES "County_List" ("region")
 );


drop table if exists "Covid_Counties";
 CREATE TABLE "Covid_Counties" (
 	 "date" date  NOT NULL,
	 "county" VARCHAR NOT NULL,
	 "state" VARCHAR NOT NULL,
     "cases" int   NOT NULL,
     "deaths" decimal,
 	 "region" VARCHAR   NOT NULL,
	 FOREIGN KEY("region") REFERENCES "County_List" ("region")
 );
 


 

