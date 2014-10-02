dictionary = {}

puts "Welcome to the dictionary!"
learning = true

while learning == true
  puts "Enter one of the following commands:"
  puts "define"
  puts "lookup"
  puts "all"
  command = gets.chomp.downcase

  case 
    when command == "define"
      i = 0
      puts "What word would you like to define?"
      new_word = gets.chomp
      puts "What is the definition of that word?"
      definition = gets.chomp
      dictionary[new_word] = [definition]
      puts "Thanks! Does that word have another definition? (yes or no)"
      another_definition = gets.chomp
      while another_definition == "yes"
        i += 1
        puts "What is the definition?"
        definition = gets.chomp
        dictionary[new_word] << definition
        puts "Thanks! Does that word have another definition? (yes or no)"
        another_definition = gets.chomp
      end
    when command == "lookup"
      puts "Choose a word to look up:"
      if dictionary.length == 0
        puts "Sorry, I don't know the definition of any words.\n\n"
      else
        dictionary.each do |word, definition|
          puts word
        end
        puts
      end

      word = gets.chomp.downcase
      if dictionary[word] == nil
        puts "Sorry, I don't know the definition of that word.\n\n"
      else
        puts "The definition of #{word} is:"
        puts "#{dictionary[word]}\n\n"
      end

    when command == "all"
      if dictionary.length == 0
        puts "Sorry, I don't know the definition of any words.\n\n"
      else
        puts "The definitions of all the words I know are:"
        dictionary.each do |word, definition|
          puts "#{word}: #{definition}\n\n"
        end
      end
  end

  puts "Would you like to continue with the dictionary? (yes or no)"
  choice = gets.chomp.downcase
  if choice == "no"
    learning = false
  end
end