create table member(
    num int primary key auto_increment, 
    id varchar(20) not null, 
    pw varchar(20) not null,
    name varchar(20) not null,
    age int not null,
    email varchar(30) not null,
    phone varchar(30) not null,
    gender varchar(10) not null,
    unique key(id)
);
select*from member;

create table board(
    num int primary key auto_increment, 
    writer varchar(20) not null,
    title varchar(50) not null, 
    content varchar(500) not null,
    regDate varchar(10) not null
);
select * from board;