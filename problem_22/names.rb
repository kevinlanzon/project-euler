class NameCalc

  def initialize(filename)
    @names = File.read(filename).scan(/[\w]+/).sort
  end

  def find_value_of_all_names
    @names.map { |name| find_value_of name }.inject(&:+)
  end

  def find_value_of(name)
    letter_value_of(name) * pos_value_of(name)
  end

  def letter_value_of(name)
    name.split("").map { |letter| alphabet[letter] }.inject(&:+)
  end

  def pos_value_of(name)
    @names.find_index(name) + 1
  end

  def alphabet
    @alphabet ||= ('A'..'Z').to_a.zip((1..26).to_a).to_h
  end
end


# Instantiate the object

calc = NameCalc.new("names.txt")


# In the problem, it says COLIN should equal 49714

colin = calc.find_value_of("COLIN")

raise "Colin fails with #{colin}" unless colin == 49714


# Find the total

puts "The total is #{calc.find_value_of_all_names}"
