def sort_names
  file = File.open(File.dirname(__FILE__) + '/p022_names.txt')
  names = file.read.gsub(/\w+/) # reads file and uses regex to to replace backslashes from string
  names.sort # sort alphabetically names into an array
end
