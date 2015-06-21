use bbs;
drop table if exists ReplyInfo;
create table ReplyInfo
(
	Floors int not null,
	TopicId varchar(50) null,
	ReContents varchar(200) null,
	ReTime Date null,
	UserName varchar(20) null
);

insert into ReplyInfo values(1, 33, 'congratulations', now(), 'IBM');
insert into ReplyInfo values(2, 33, 'haha', now(), 'IBM');
insert into ReplyInfo values(3, 33, 'dddlations', now(), 'IBM');
insert into ReplyInfo values(4, 33, '哈哈去打猎', now(), '光头强');

