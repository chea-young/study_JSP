select * from members;

drop table if exists members;
create table members(
	id varchar(20) primary key,
    pw varchar(20) not null,
    username varchar(20) not null,
    phone varchar(20)
);

delete from members;
alter table members
	drop column phone;