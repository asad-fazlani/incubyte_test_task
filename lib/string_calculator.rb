# lib/string_calculator.rb
class StringCalculator
  def self.add(input)
    numbers = input.scan(/-?\d+/).map(&:to_i)
    negatives = numbers.select { |n| n < 0 }
    unless negatives.empty?
      raise ArgumentError, "Negative numbers not allowed: #{negatives.join(', ')}"
    end
    numbers.sum
  end
end