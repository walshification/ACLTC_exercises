require 'weather-api'

puts "What Yahoo ID would you like to lookup?"
query = gets.chomp.to_i

response = Weather.lookup(query, Weather::Units::FARENHEIT)

print <<EOT
#{response.title}
#{response.condition.temp} degrees
#{response.condition.text}
EOT
