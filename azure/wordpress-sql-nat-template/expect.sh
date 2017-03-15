#!/usr/bin/expect -f

spawn mysql -u root -p
expect "Enter password: "
send "\r"
expect "mysql> "
send "exit\r"

