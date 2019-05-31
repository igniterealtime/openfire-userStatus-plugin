# expand lastIpAddress field to support IPv6 addresses
alter table userStatus alter column lastIpAddress type char(45);
alter table userStatusHistory alter column lastIpAddress type char(45);;

# update version
UPDATE ofVersion SET version = 1 WHERE name = 'user-status';
