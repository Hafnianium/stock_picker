# Iterate through all indexed period ensuring only checking positive differences (must buy before sell)
def interval_maker(stock_prices)
  interval_hash = {}
  i = 0
  while i < stock_prices.length
    j = 1 + i
    while j <stock_prices.length
      interval_hash["#{i} - #{j}"] = stock_prices[j] - stock_prices[i]
      j += 1
    end
    i += 1
  end
  return interval_hash
end

def optimal_interval(stock_prices)
  interval_maker(stock_prices).max_by{|key, value| value}
end

puts optimal_interval([17,3,6,9,15,8,6,1,10])
