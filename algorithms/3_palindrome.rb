def palindrome(word)
  reverse = ""
  
  word.each_char do |letter|
    reverse = letter + reverse
  end
#   can replace lines below with just word == reverse
  if word == reverse
   puts "true"
  else
   puts "false"
  end
  puts reverse
end

palindrome("hello")
