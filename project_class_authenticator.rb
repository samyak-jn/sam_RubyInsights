#take a case for student class :authenticator systems in web applications
require 'bcrypt'
class Student
attr_accessor :first_name, :last_name, :age , :email_id , :username , :password
 @first_name
 @last_name
 @age
 @email_id
 @username
 @password
end
#password are never stored there is virtually stores in hashing digest , like Md5 is used to it , bycrpt is used to take
#mportion of gems ,how to include gems
user1= Student.new
    puts "enter your username"
    u_name =gets.chomp
    user1.username = u_name
    puts "enter your password"
    passwd =gets.chomp
    user1.password = BCrypt::Password.create(passwd)
    puts "username and password created"
    p "Do you want to add your details?"
    ans =gets.chomp
    ans.downcase!
    if ans == "yes" 
    puts "enter your firstname"
    f_name =gets.chomp
    user1.first_name = f_name
    puts "enter your lastname"
    l_name =gets.chomp
    user1.username = l_name
    puts "enter your age"
    age =gets.chomp
    user1.age = age.to_i
    puts "enter your email-id"
    e_id =gets.chomp
    user1.email_id = e_id
    end
        puts "Do you want to access your details?"
        ans1 =gets.chomp
        ans1.downcase!
        if ans1 == "yes" 
        print "Enter username and password \n"
        print "Username :"
        check_name =gets.chomp
        puts 
        print "Password :"
        check_passwd = gets.chomp
        puts
              if user1.username == check_name && user1.password == check_passwd
                puts "Crendentials Matched"
                p "first_name #{user1.first_name}"
                p "last_name #{user1.last_name}"
                p "age #{user1.age}"
                p "email_id #{user1.email_id}"
              else
                puts "Crendentials not matched,try again later!"
              end
          end
                               
