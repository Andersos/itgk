closing_prices = importdata('aksjepriser.m')

GOOG = closing_prices(1 ,:);
MSFT = closing_prices(2 ,:);
AMZN = closing_prices(3 ,:);

test_strategies(100 , 5, 10, GOOG);
test_strategies(100 , 5, 10, MSFT);
test_strategies(100 , 5, 10, AMZN);