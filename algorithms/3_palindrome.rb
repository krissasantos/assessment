def palindrome(word)
  reverse = ""
  
  word.each_char do |letter|
    reverse = letter + reverse
  end
  
  if word == reverse
   puts "true"
  else
   puts "false"
  end
  puts reverse
end

palindrome("hello")