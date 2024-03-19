-- Active: 1710683129930@@127.0.0.1@5432@ph

SHOW timezone;

-- create table

create table timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

-- create table

create table timeZ (ts TIMESTAMP without time zone , tsz TIMESTAMP with time zone);


INSERT into timez VALUES('2024-01-12 10:45:00', '2024-01-12 10:45:00');

SELECT * from timez;


DROP Table timez


SELECT now()

SELECT CURRENT_DATE; --current date ber korar jonno ai method use kora hoy.

SELECT now()::date --custom mead date

SELECT to_char(now(), 'dd-mm-yyyy')

SELECT CURRENT_DATE - interval '1 year';

SELECT age(CURRENT_DATE, '2010-07-03') --current age ber korar jonno.

SELECT extract(YEAR from  '2024-01-25'::date) as "Today"; -- just data or months or day ber korar jonno extract use kora hoy





