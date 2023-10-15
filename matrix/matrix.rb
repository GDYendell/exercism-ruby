
class Matrix

    def initialize(matrix)
        @matrix = matrix.split("\n").map do |line|
            line.split.map(&:to_i)
        end
    end

    def row(row)
        @matrix[row - 1]
    end

    def column(column)
        @matrix.map do |row|
            row[column - 1]
        end
    end

end
