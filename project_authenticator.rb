puts "Welcome to Authenticator"
30.times {print "___"} 
print "\n"
puts "The program will take input from the user and will compare your password"
authentication =[
                   {username: "samyak", password: "samyak1"},
                   {username: "lol" ,password: "samyak2"},
                   {username: "lmao" ,password: "samyak3"},
                   {username: "rofl" ,password: "samyak4"}
                   ]
def auth_user(username,passwordc,list_user)
                list_user.each do |user|

                if user[:username] == username && user[:password] == passwordc
                    puts "Credentials Matched"
                    return user
                else
                    p "Credentials weren't correct"
                    return
                end
                end             
end
        i=0
       while i < 3                            
             print "Username : "
             username = gets.chomp
             print "Password : "
             passwordc = gets.chomp
             auth_user(username,passwordc,authentication)
             i += 1
        print "If you wish to exit press n ,otherwise press any other key to continue :"
        input =gets.chomp.downcase
        break if input == "n"
    end



