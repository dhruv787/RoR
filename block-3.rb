def take_block (num, &block)
    p block
    puts "before block"
    block.call(num)
    i=0
    while i<num do
        block.call(i)
        i = i.send(:+,1)
    end
            puts "After block"
end

take_block(50) do |num|
    puts "block being called in the method,,,#{num}"
end