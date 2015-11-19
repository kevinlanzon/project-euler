def sort_names
  File.open(File.dirname(__FILE__) + '/p022_names.txt').read.gsub(/\w+/).sort
  # reads file and uses regex to to replace backslashes from string and sorts alphbetically into array
end

def name_score(name, index)
  score = name.each_char.inject(0) do |sum, char| # each_char passes each character in the string to the given block
    sum + @map[char]
  end
  score * index
  # returns total score for each name
end

def total_score
  @map = {}
  ('A'..'Z').each_with_index do |letter, value| # each_with_index calls block with two arguments, the item and its index.
    @map[letter] = value + 1
  end
  names = sort_names
  scores = []
  names.each_with_index do |name, index|
    scores << name_score(name, index + 1)
  end
  scores.inject(:+) # inject method sums all the names scores
end

puts "The total of all the name scores in the file is #{total_score}" # total score = 871198282
