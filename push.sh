#!/usr/bin/expect
spawn git push origin gh-pages
#expect "[sudo] password for cunninglearner:" {send "H4I1man.\r"}
expect "Username for 'https://github.com':" {send "cunninglearner\r"}
expect "Password for 'https://cunninglearner@github.com':" {send "H4I1man.\r"}

interact
