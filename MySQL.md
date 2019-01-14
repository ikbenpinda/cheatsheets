###### Fixing 'mysql access denied for user 'root'@'localhost' (using password NO)'
```sh
    mysql --user=username --password=password
    
    shorthand:
    
    # There's no space between the '-p' switch and the password!
    mysql -u root -ppassword
```
###### Fixing issues with privileges due to different authentication plugins
```mysql
    CREATE USER 'username'@'%' IDENTIFIED WITH mysql_native_plugin BY 'password';
    CREATE USER 'username'@'localhost' IDENTIFIED WITH mysql_native_plugin BY 'password';
```    
Don't forget to grant privileges to this user, for both remote connections('%') and localhost!
ALTER USER is also okay here.

##### Overview of all users
```mysql
    select host, user, authentication_string from mysql.users;
```
##### Grant all privileges on a user
```mysql
    GRANT ALL ON tablename.* TO 'username'@'%';
    GRANT ALL ON tablename.* TO 'username'@'localhost';
    FLUSH PRIVILEGES;
```
