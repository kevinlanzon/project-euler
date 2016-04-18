class EvenFibonacci

  def array_of_numbers
    (1..10).to_a
  end

  def even_numbers
    array_of_numbers.select { |n| n.even? }
  end

  def fibonacci
    array_of_numbers.inject([1]) { |arr, i| i > 2 ? arr << arr.last + arr[-2] : arr << 1 }
  end

end



calc = EvenFibonacci.new

# puts calc.array_of_numbers

# puts calc.even_numbers

puts calc.fibonacci


# 2.2.0 :001 > sum = 0
#  => 0
# 2.2.0 :002 > n1, n2 = 1, 2
#  => [1, 2]
# 2.2.0 :003 > sequence = []
#  => []
# 2.2.0 :004 > sequence.push(n1, n2)
#  => [1, 2]
# 2.2.0 :005 > next_number = n1+n2
#  => 3
# 2.2.0 :006 > begin
# 2.2.0 :007 >       sequence << next_number
# 2.2.0 :008?>     n1 = n2
# 2.2.0 :009?>     n2 = next_number
# 2.2.0 :010?>     next_number = n1+n2
# 2.2.0 :011?>   end while next_number < 4000000
#  => nil
# 2.2.0 :012 >
# 2.2.0 :013 >   sequence.each do |number|
# 2.2.0 :014 >       if(number%2 == 0)
# 2.2.0 :015?>         sum += number
# 2.2.0 :016?>       end
# 2.2.0 :017?>   end
#  => [1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578]
# 2.2.0 :018 > puts "Answer: " + sum.to_s