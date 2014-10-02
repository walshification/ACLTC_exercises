x = ["Bob", "Chris", "Janet", "Ash", "Matt", "Mark", "Kyle", "Sly"]

x.shuffle!

# even_pairs = []
# odd_pairs = []

# i = 0
#   while i < x.length
#   if i % 2 == 0
#     even_pairs << x[i]
#   else
#     odd_pairs << x[i]
#   end
#   i += 1
# end

# j = 0
# while j < even_pairs.length
#   puts "Group #{j+1}:"
#   puts even_pairs[j]
#   puts odd_pairs[j]
#   puts
#   j += 1
# end

n = 1
group = 1
x.each do |name|
  if n.even?
    puts name
    `say #{name}`
    puts ""
    group += 1
  else
    puts "Group #{group}:"
    `say "Group #{group}"`
    puts name
    `say #{name}`
  end
  n += 1
end
