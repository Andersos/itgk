function returns = lookback_average(start, steps_back, closing_price)
	returns = 0;
	from = start-steps_back+1;
	returns = sum(closing_price(from:start)) / steps_back;
end