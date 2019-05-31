# expand lastIpAddress field to support IPv6 addresses
alter table userStatus modify column lastIpAddress NVARCHAR(45);
alter table userStatusHistory modify column lastIpAddress NVARCHAR(45);

# update version
UPDATE ofVersion SET version = 1 WHERE name = 'user-status';
