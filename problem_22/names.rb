def sort_names
  File.open(File.dirname(__FILE__) + '/p022_names.txt').read.gsub(/\w+/).sort
  # reads file and uses regex to to replace backslashes from string and sorts alphbetically
end

def name_score(name, index)
  score = name.each_char.inject(0) do |sum, char|
    sum + @map[char]
  end
  score * index
end

def total_score
  @map = {}
  ('A'..'Z').each_with_index do |letter, index|
    @map[letter] = index + 1
    # returns total score for each name
  end
  names = sort_names
  scores = []
  names.each_with_index do |name, index|
    scores << name_score(name, index + 1)
  end
  scores.inject { |sum, n| sum + n }
end

puts "The total of all the name scores in the file is #{total_score}" # total score = 871198282

