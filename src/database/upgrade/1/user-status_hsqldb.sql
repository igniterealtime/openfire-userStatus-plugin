# expand lastIpAddress field to support IPv6 addresses
alter table userStatus alter column lastIpAddress VARCHAR(45);
alter table userStatusHistory alter column lastIpAddress VARCHAR(45);

# update version
UPDATE ofVersion SET version = 1 WHERE name = 'user-status';
