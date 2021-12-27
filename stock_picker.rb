def stock_picker(stock_prices)
x = stock_prices.length - 1
possible_combos = []
profit_list = []
best_combo = {}
  for i in 0..x
    range_start = i + 1
    max = stock_prices[range_start..x].max.to_i
    min = stock_prices[i].to_i
    profit = max - min
    profit_list.push(profit)
    possible_combos.push({max: max, min: min, profit: profit})
  end
  best_profit = profit_list.max
  possible_combos.each do |hash|
    if hash.dig(:profit) == best_profit
     best_combo = hash
    end
  end
  solution = [stock_prices.index(best_combo[:min]), stock_prices.index(best_combo[:max])]
  solution
end