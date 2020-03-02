class MathFunction
    def self.double(arg) #static method
        times_called
        arg*2
    end

    def self.called_cnt=val
        @@called_cnt=val
    end

    @@called_cnt ||=0 # static variable declartion
    class << self
        def times_called
            @@called_cnt += 1
        end
        # def called_cnt=value
        #     @@called_cnt=value
        # end
    end
end

MathFunction.called_cnt=100
puts MathFunction.double 5 #=>10
puts MathFunction.double 10 #=>10
puts MathFunction.times_called #=> 