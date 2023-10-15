
class Bst
    def initialize(data)
        @data = data
        @left = nil
        @right = nil

    end

    def data
        @data
    end

    def left
        @left
    end

    def right
        @right
    end

    def insert(data)
        if data <= @data
            if @left.nil?
                @left = Bst.new(data)
            else
                @left.insert(data)
            end
        else
            if @right.nil?
                @right = Bst.new(data)
            else
                @right.insert(data)
            end
        end

        each { |x| print(x) }
        print("\n")
    end

    def each
        return to_enum(:each) unless block_given?

        if !@left.nil?
            @left.each { |x| yield x }
        end
        yield @data
        if !@right.nil?
            @right.each { |x| yield x }
        end
    end
end
