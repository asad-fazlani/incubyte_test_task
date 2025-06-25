# lib/string_calculator.rb
class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    delimiter = /,|\n/
      if input.start_with?("//")
        header, input = input.split("\n", 2)
        delimiter = Regexp.escape(header[2])
      end
    input.split(/#{delimiter}/).map(&:to_i).sum
  end
end
