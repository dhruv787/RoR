
class Dog
#    attr_reader :type
#    attr_writer :type

# micro methods
attr_accessor :type
attr_reader :id

    def name
        @name
    end

    def name=value
        @name=value
    end 

    def initialize
         @name = "noname"
         @id=12344
        puts "Creating #{@name} object"
    end

    def bark
        "#{@name} barks loudly..."
    end

    def feed (food)
        if food == "biscuit"
            bark
        else 
            "Dog is beign fed with #{food}"
        end
    end
end