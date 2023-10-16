
class CircularBuffer

    class BufferEmptyException < StandardError; end
    class BufferFullException < StandardError; end

    def initialize(size)
        @buffer = Array.new(size)
        @in = 0
        @out = 0
    end

    def clear()
        @buffer = Array.new(@buffer.size)
    end

    def write(item)
        raise BufferFullException if full?

        @buffer[@in] = item
        @in = shift(@in)

        @out = @in if empty?
    end

    def write!(item)
        if full?
            @buffer[@in] = nil
            @out = shift(@out)
        end

        write(item)
    end

    def read()
        raise BufferEmptyException if empty?

        item = @buffer[@out]
        @buffer[@out] = nil
        @out = shift(@out)

        item
    end

    def empty?
        @buffer[@out] == nil
    end

    def full?
        @out == @in && @buffer[@out] != nil
    end

    def shift(index)
        (index + 1) % @buffer.size
    end
end