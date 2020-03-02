require "./small_dog.rb"
require "./dog.rb"



#inheritance class





dog1 = Dog.new
puts "#{dog1} #{dog1.bark}" # parenthesis are optional

puts dog1.feed "pedigree"
puts dog1.feed "biscuit"
puts dog1.name

dog1.name="Fido"
puts dog1.name


dog1.type="Test1"
puts dog1.type

puts dog1.id

#inheritance object..
sdog1 = SmallDog.new
puts sdog1.bark