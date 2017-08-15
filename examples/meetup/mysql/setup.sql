# ./mysql/setup.sql
# CREATE SCHEMA 'meetup_dev';
DROP USER 'meetup';
CREATE USER 'meetup'@'%' IDENTIFIED BY 'pASSword';
GRANT ALL PRIVILEGES ON *.* TO 'meetup'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;