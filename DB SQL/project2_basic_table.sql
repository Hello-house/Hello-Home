drop table members cascade constraints;
drop table products cascade constraints;
drop sequence pro_id;


create table members(
mem_id varchar2(20),
mem_pw varchar2(20) not null,
mem_name varchar2(20) not null,
mem_age number not null,
mem_add varchar2(200) not null,
mem_tel varchar2(20) not null,
mem_gender varchar2(4) not null,
mem_style number,
mem_grade varchar2(10),
constraint member_id_pk primary key(mem_id),
constraint member_gender_ck check(mem_gender in('M','F'))
);

create sequence pro_id
increment by 1
start with 1;

create table products(
pro_id number,
pro_name varchar2(100) not null,
pro_price number not null,
pro_kind number,
pro_style number,
pro_coments varchar2(1000),
img_link varchar2(1000),
constraint product_id_pk primary key(pro_id)
);



