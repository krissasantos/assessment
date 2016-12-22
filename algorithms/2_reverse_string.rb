def reverse(string)
  result = ""
  string.split("").each do |letter|
    result = letter + result
  end
end

