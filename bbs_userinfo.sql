use bbs;
drop table if exists UserInfo;

create table UserInfo
(
 UserName varchar(20) not null,
 PassWord varchar(20) null,
 UserSex char(1) null,
 Hobby nvarchar(20) null,
 email varchar(20) null,
 Portrait nvarchar(30) null,
 TopicCount int null,
 PersonalNote varchar(20) null,
 GroupNo smallint null
)