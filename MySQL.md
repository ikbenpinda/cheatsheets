###### Fixing 'mysql access denied for user 'root'@'localhost' (using password NO)'

    mysql --username=root --password=password
    
    shorthand:
    
    mysql -u root -p password
   
##### Overview of all users

    select * from mysql.users;
