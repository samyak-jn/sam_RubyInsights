=begin
Information on bcrypt and the hashing algorithm
reference 
https://www.rubydoc.info/github/codahale/bcrypt-ruby
=end
require 'bcrypt'
password_self = BCrypt::Password.create("password_name")
p password_self #the way in which the password gets stored
p password_self.version
p password_self.cost
p password_self == "password_name"
p password_self == "password_self"

#can also check using reverse way 
 # password_self = BCrypt::Password.new("$2a$10$AcBDzmHHWYoMxjZ10SBbL.D.0yIFsXnonCF8GThvodgHZiJEhX3my"")
 # password_self == "my password"     #=> true
 # password_self == "not my password" #=> false
 
