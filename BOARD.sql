create table member
(userid varchar(20) not null primary key,
name varchar2(20) not null,
password varchar2(32) not null,
email varchar2(50) not null,
address varchar2(100) );

CREATE TABLE BOARD (
BBSNO NUMBER NOT NULL PRIMARY KEY,
USERID VARCHAR2(20) NOT NULL ,
PASSWORD VARCHAR2(12) NOT NULL,
SUBJECT VARCHAR(50) NOT NULL,
CONTENT VARCHAR2(4000) NULL,
WRITEDATE DATE NOT NULL,
MASTERID NUMBER NULL,
READCOUNT NUMBER NULL,
REPLYNUMBER NUMBER NULL,
REPLYSTEP NUMBER NULL,
CONSTRAINT FK_MEM_ID FOREIGN KEY(USERID) REFERENCES MEMBER(USERID)
);

alter table board add(updatefile BLOB);
select * from board;