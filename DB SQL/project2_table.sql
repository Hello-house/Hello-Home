drop table baskets cascade constraints;
drop table orders cascade constraints;
drop table boards cascade constraints;
drop table surveys cascade constraints;
drop sequence order_num;
drop sequence boa_num;

create table baskets(
mem_id varchar2(20),
pro_id number,
constraint basket_mem_fk foreign key(mem_id) references members(mem_id),
constraint basket_pro_fk foreign key(pro_id) references products(pro_id)
);

alter table baskets
add constraint baskets_id_pk primary key(mem_id,pro_id);

alter  table  baskets
add  amount  number;

create sequence order_num
increment by 1
start with 1;

create table orders(
ord_num number,
ord_price number,
ord_date date,
ord_add varchar2(200),
mem_id varchar2(20),
pro_id number,
constraint orders_mem_fk foreign key(mem_id) references members(mem_id),
constraint orders_pro_fk foreign key(pro_id) references products(pro_id)
);

alter table orders
add constraint orders_num_pk primary key(ord_num);

create sequence boa_num
increment by 1
start with 1;

create table boards(
boa_num number,
boa_title varchar2(30),
mem_id varchar2(20),
pro_id number,
content varchar2(1000),
img_link varchar2(1000),
boa_date date,
constraint boards_num_pk primary key(boa_num),
constraint boards_id_fk foreign key(mem_id) references members(mem_id),
constraint boards_pid_fk foreign key(pro_id) references products(pro_id) 
);

create table surveys(
q1 number,	
q2 number,	
q3 number,	
q4 number, 	
q5 number,	
q6 number,	
q7 number,	
classic number,	
profound  number,	
luxury number,	
fancy number,	
warm number,	
soft number,	
simple number,	
comfortable number,	
relax number,	
feminine number,	
romantic number,	
bright number,	
light number,	
dynamic number,	
friendly number,	
pattern1_casual number,	
pattern1_classic number,	
pattern1_modern number,	
pattern1_natural number,	
pattern1_romantic number,	
pattern2_casual number,	
pattern2_classic number,	
pattern2_modern number,	
pattern2_natural number,	
pattern2_romantic number,	
pattern3_casual number,	
pattern3_classic number,	
pattern3_modern number,	
pattern3_natural number,	
pattern3_romantic number,	
color1_casual number,	
color1_classic number,
color1_modern number,	
color1_natural number,	
color1_romantic number,
color2_casual number,	
color2_classic number,	
color2_modern number,	
color2_natural number,	
color2_romantic number,
mem_id varchar2(20),
constraint surveys_id_fk foreign key(mem_id) references members(mem_id)
);

