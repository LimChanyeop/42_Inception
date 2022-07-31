sed -i "s/database_name_here/$WP_NAME/g" /var/www/html/wp-config.php;
sed -i "s/username_here/$WP_USER/g" /var/www/html/wp-config.php;
sed -i "s/password_here/$WP_PWD/g" /var/www/html/wp-config.php;
sed -i "s/localhost/mariadb/g" /var/www/html/wp-config.php;

/usr/sbin/php-fpm7.3;