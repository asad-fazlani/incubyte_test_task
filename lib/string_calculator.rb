# lib/string_calculator.rb
class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    delimiter = /,|\n/
      if input.start_with?("//")
        header, input = input.split("\n", 2)
        delimiter = Regexp.escape(header[2])
      end
    numbers = input.split(/#{delimiter}/).map(&:to_i)
      negatives = numbers.select { |n| n < 0 }
      unless negatives.empty?
        raise "Negative numbers not allowed: #{negatives.join(', ')}"
      end
    numbers.sum
  end
end
