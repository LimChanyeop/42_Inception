service mysql start;
echo "CREATE DATABASE $WP_NAME;" | mysql;
echo "CREATE USER '$WP_USER'@'%' IDENTIFIED BY '$WP_PWD';" | mysql;
echo "GRANT ALL PRIVILEGES ON $WP_NAME.* TO '$WP_USER'@'%';" | mysql;
echo "FLUSH PRIVILEGES;" | mysql;

mysql $WP_NAME -u $WP_USER -p$WP_PWD < /wp_users.sql

mysqld;
