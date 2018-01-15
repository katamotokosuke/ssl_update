# coding: utf-8
puts '出力file名を入力してください. ex: uniquevision201701'
out_name = gets.chomp
puts <<-STR
example:
##############
Country Name (2 letter code) []:JP
State or Province Name (full name) []:Tokyo
Locality Name (eg, city) []:Shinjuku-ku
Organization Name (eg, company) []:Unique Vision Company
Organizational Unit Name (eg, section) []:
Common Name (eg, fully qualified host name) []:www.uniquevision.jp
Email Address []:

Please enter the following 'extra' attributes
to be sent with your certificate request
A challenge password []:
###############
STR
`openssl req -new -newkey rsa:2048 -keyout #{out_name}.key -nodes -sha256 -out #{out_name}.csr`
