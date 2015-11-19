def sort_names
  file = File.open(File.dirname(__FILE__) + '/p022_names.txt')
  names = file.read.gsub(/\w+/) # reads file and uses regex to to replace backslashes from string
  names.sort # sort alphabetically names into an array
end

# COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

def letter_value
  @map = {}
  ('A'..'Z').each_with_index do |letter, index|
    @map[letter] = index + 1
  end
  puts @map # method return a hash of key, value pairs for letters {"A"=>1, "B"=>2 etc...}
end
