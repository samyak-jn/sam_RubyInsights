loop do                 
puts "Do you want to look an area code based on a city name?(Y/N): "
            dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
  }                 
  def get_city_names(hash)
           puts "Which city do you want the area code for?"
           hash.each {|keys,values| puts "=> #{keys}"}
        end
  input =gets.chomp.downcase
  def get_area_code(somehash, key)
           somehash.each {|keys,values| puts "=> #{values}" if keys == key}
         end

  if input == "y"
  get_city_names(dial_book)
  puts "Enter your selection :"
  area=gets.chomp
  print "The area code for #{area} is " 
  get_area_code(dial_book, area)
  print "\n"
else
  return
  end
end
