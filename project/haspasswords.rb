#certain methods grouped together can be named as a module , and can be used later
#we can do it by mixin that module in the class
=begin
require 'bundler/inline'
gemfile true do
 source 'http://rubygems.org'
  gem 'bcrypt'
  end
=end
  require 'bcrypt'

  users = [
           { username: "samyak", password: "password1" },
           { username: "jack", password: "password2" },
           { username: "arya", password: "password3" },
           { username: "jonshow", password: "password4" },
           { username: "heisenberg", password: "password5" }
          ]
  def create_hash_digest(password)
          BCrypt::Password.create(password)
  end
  def verify_hash_digest(password)
           BCrypt::Password.new(password)
  end
  def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
  user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
  end
  users.each {|info| puts info[:password] }                                                                          
    secure_version = create_secure_users(users)
  users.each {|info| puts info[:password] }                                                                          
  def auth_user(username, password, list_users)
    list_users.each do |user_name|
      if user_name[:username] == username && user_name[:password] == password
      return user_name
      end
    end
    "Crententials were not correct"
  end  
   p auth_user("samyak","password",secure_version)
   p auth_user("samyak","password1",secure_version)
#now to covert these to mmodules
