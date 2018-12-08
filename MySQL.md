###### Fixing 'mysql access denied for user 'root'@'localhost' (using password NO)'

    mysql --user=root --password='password'
    
    shorthand:
    
    mysql -u root -p password

###### Fixing issues with privileges due to different authentication plugins

    CREATE USER 'root'@'%' IDENTIFIED WITH mysql_native_plugin BY 'password';
    CREATE USER 'root'@'localhost' IDENTIFIED WITH mysql_native_plugin BY 'password';

ALTER USER is also okay here.

##### Overview of all users

    select host, user, authentication_string from mysql.users;

##### Grant all privileges on a user

    GRANT ALL ON tablename.* TO 'username'@'%';
    GRANT ALL ON tablename.* TO 'username'@'localhost';
    FLUSH PRIVILEGES;
