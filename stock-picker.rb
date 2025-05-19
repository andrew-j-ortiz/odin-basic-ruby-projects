# Stock Picker by Andrew Ortiz for the Odin Project

def main()
  puts "================"
  puts "  STOCK PICKER  "
  puts "================"
  puts

  puts "Please enter your stock prices by days (separate with comma)"
  puts "e.g. 17,3,6,9,15,8,6,1,10"
  print ">"
  user_input = gets.chomp
  puts

  arr_buy_and_sell_days = stock_picker(user_input.split(',').map(&:to_i))
  puts "You should buy on day: " + arr_buy_and_sell_days[0].to_s
  puts "You should sell on day: " + arr_buy_and_sell_days[1].to_s
end

def stock_picker(arr_stocks)
  int_sell_day = arr_stocks.drop(1).max()
  int_buy_day = arr_stocks[0..arr_stocks.find_index(int_sell_day)].min()
  return [arr_stocks.find_index(int_buy_day), arr_stocks.find_index(int_sell_day)]
end

main()