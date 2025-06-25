# spec/string_calculator_spec.rb
require 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number for a single number input' do
      expect(StringCalculator.add("4")).to eq(4)
    end

    it 'returns sum for two comma-separated numbers' do
      expect(StringCalculator.add("1,2")).to eq(3)
    end

    it 'returns sum for multiple comma-separated numbers' do
      expect(StringCalculator.add("1,2,3,4")).to eq(10)
    end

    it 'handles newlines between numbers' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiter using // syntax' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it 'raises an exception for negative numbers' do
      expect {
        StringCalculator.add("1,-2,3,-5")
      }.to raise_error("Negative numbers not allowed: -2, -5")
    end
  end
end
