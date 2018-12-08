###### Fixing 'mysql access denied for user 'root'@'localhost' (using password NO)'

    mysql --user=root --password='password'
    
    shorthand:
    
    mysql -u root -p password
   
##### Overview of all users

    select host, user, authentication_string from mysql.users;

##### Grant all privileges on a user

    GRANT ALL ON tablename.* TO 'username'@'%';
    GRANT ALL ON tablename.* TO 'username'@'localhost';
    FLUSH PRIVILEGES;
