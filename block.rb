def take_block
    puts "Before running the block.."
    yield if block_given?#to run a function to a method
    puts "After running the block.."
end
take_block do
    puts ".........Block being called...."
end

take_block