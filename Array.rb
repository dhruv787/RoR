age =[10,20,30,40]
age.push 30
puts age
puts age[1]

age<<60 # push more item in an array
puts age

cities = Array.new[3]
puts cities

#Add at begining 
age.unshift(0);
puts age 

age.delete_at(2)
puts age

display = " this is an array #{age.size} emem" 
puts display

puts " Array iterator!!!!"

age.each{|e| puts e}

age.each do |e|
    puts e
end

puts "arrays of map"
double_ages = age.map do|e|
    e*e
end 
puts "After array,map"
p double_ages

tripple_ages = age.map{|e| e*e*3}
puts tripple_ages

puts tripple_ages.inspect

#filter records

age_g_20 = age.select{|e| e>20}
puts age_g_20

puts "array with index in sigle line"
new_ages = age.map.with_index{|e,i|e*i}
puts new_ages

puts "array with index in a block"
new_ages = age.map.with_index do |e,i|
    puts "index:",i
    e*i
end 

puts new_ages

