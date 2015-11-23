class Multiples

  def initialize(number)
    @number = number
  end

  def of_three_and_five
    @number % 3 == 0 && @number % 5 == 0
  end
end


list = Multiples.new(15)

puts list.of_three_and_five