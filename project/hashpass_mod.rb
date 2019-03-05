#we can do it by mixin that module in the class
  require 'bcrypt'
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
                                                                           
                                                                        
  def auth_user(username, password, list_users)
    list_users.each do |user_name|
      if user_name[:username] == username && user_name[:password] == password
      return user_name
      end
    end
    "Crententials were not correct"
    end  
 
=begin
        how to access
        same _ directory = require_relative 'name'
        another directory = 
                    $LOAD_PATH << "current directory(.)"
                    require 'name'
=end
