
class BinarySearch
    def initialize(array)
        @array = array
    end

    def search_for(value)
        return nil if @array.empty?

        left = 0
        right = @array.length - 1
        while left <= right
            mid = (left + right) / 2
            return mid if @array[mid] == value

            if @array[mid] < value
                left = mid + 1
            else
                right = mid - 1
            end
        end
        nil
    end
end
