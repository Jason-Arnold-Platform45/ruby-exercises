def stock_picker(prices)
  best_day = [0,0]
  max_profit = 0

  prices.each_with_index do |buy_price, buy_day|
    prices[buy_day..-1].each_with_index do |selling_price, index|
      sell_day = index + buy_day
      profit = selling_price - buy_price

      if profit > max_profit
        max_profit = profit
        best_day = [buy_day,sell_day]
      end
    end
  end
  best_day
end