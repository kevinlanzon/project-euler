class EvenFibonacci

  def initialize(number)
    @number = number
  end

  def array_of_numbers
    (1..@number).to_a
  end

  def even_numbers
    array_of_numbers.select { |n| n % 2 == 0 }
  end

end

calc = EvenFibonacci.new(10)

puts calc.array_of_numbers

puts calc.even_numbers