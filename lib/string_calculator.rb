# lib/string_calculator.rb
class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    return input.to_i unless input.include?(",")
    input.split(',').map(&:to_i).sum  end
end
