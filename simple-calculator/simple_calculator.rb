

class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    unless first_operand.is_a?(Integer) && second_operand.is_a?(Integer)
      raise ArgumentError.new("Operands must be integers.")
    end

    begin
      case operation
        when '+' then "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
        when '/' then "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
        when '*' then "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
        else raise UnsupportedOperation.new("Unsupported operation")
      end
    rescue ZeroDivisionError => e
      "Division by zero is not allowed."
    end

  end
end
