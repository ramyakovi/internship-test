create database test;
use test;
create table main (SKU int,DESCRIPTION varchar(100),YEAR year,CAPACITY varchar(100),URL varchar(100),PRICE varchar(100),SELLER_INFORMATION varchar(100),OFFER_DESCRIPTION varchar(100),COUNTRY varchar(100));

select distinct SKU,case when x.ronum=1 then PRICE end As FIRST_MINIMUM_VALUE,case when x.rowum=2 then PRICE end AS SECOND_MINIMUM PRICE(select SKU,PRICE,row_number() over(partition by SKU)as rownum from test.main) as a;

