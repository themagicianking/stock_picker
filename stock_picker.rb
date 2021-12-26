def stock_picker(stock_prices)
x = stock_prices.length - 1
  for i in 0..x
    range_start = i + 1
    max = stock_prices[range_start..x].max.to_i
    min = stock_prices[i].to_i
    puts max - min
  end
end