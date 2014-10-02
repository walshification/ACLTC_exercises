x = [["a", "b", "x"], ["c", "d"], ["e","f"], ["g", "h", "y", "z"]]

x.each do |inner_array|
  inner_array.each do |entry|
    print entry
  end
  puts
end
