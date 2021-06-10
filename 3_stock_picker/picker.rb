def stock_picker (prices)
  best_profit = 0
  best_buy_day = nil
  best_sell_day = nil
  prices.each_with_index do | buy_price, buy_index |
    prices[buy_index..prices.length].each_with_index do | sell_price, sell_index |
      profit = sell_price - buy_price
      if profit > best_profit
        best_profit = profit
        best_buy_day = buy_index
        best_sell_day = sell_index + buy_index # because the sell index is offset
      end
    end
  end
  [best_buy_day, best_sell_day]
end