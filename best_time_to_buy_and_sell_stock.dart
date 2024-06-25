void main() {
  List<int> prices = [9, 5, 4, 3, 3, 1,0];

  print(maxProfit(prices));
}

int maxProfit(List<int> prices) {
  int maxProfit = 0;
  int minPrice = prices[0];

  for (int i = 0; i < prices.length; i++) {
    if (prices[i] < minPrice) {
      minPrice = prices[i];
    } else {
      int profit = prices[i] - minPrice;
      if (profit > maxProfit) {
        maxProfit = profit;
      }
    }
  }
  return maxProfit;
}
