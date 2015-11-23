class Multiples

  def initialize(number)
    @number = number
  end

  def list_of_numbers
    (1..@number).to_a
  end

  def of_three_and_five
    @number % 3 == 0 && @number % 5 == 0
  end
end


multiples = Multiples.new(23)

puts multiples.list_of_numbers

puts multiples.of_three_and_five