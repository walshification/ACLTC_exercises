require 'stock_quote'

puts "Welcome to the Stock Quote Extraordinaire!"
puts
puts "What stock would you like advice on?"
symbol = gets.chomp

stock = StockQuote::Stock.quote(symbol)

puts "The stock price for #{stock.name} is: $#{stock.bid_realtime}!"

if stock.bid_realtime > 50
  puts "I don't know, man, that's a lot of money, and I'm kinda drunk. Whatevs, buy it!"
else
  puts "Not worth it, dude. What else you want?"
end
