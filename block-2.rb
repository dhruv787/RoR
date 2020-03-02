def take_block (&block)
    p block
    puts "before block"
    block.call
    puts "After block"
end

take_block do
    puts "block being called in the method,,,"
end