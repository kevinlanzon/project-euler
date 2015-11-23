class Multiples

  def initialize(number)
    @number = number
  end

  def natural_numbers
    (1...@number).to_a
  end

  def of_three_and_five
    natural_numbers.select { |n| n % 3 == 0 || n % 5 == 0 }
  end

  def sum_of_all_multiples
    num = of_three_and_five
    num.inject(:+)
  end
end

calc = Multiples.new(1000)

puts calc.sum_of_all_multiples
