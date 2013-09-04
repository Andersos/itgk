function returns = daily_returns(closing_prices)

	returns = [numel(closing_prices)];
	returns(1) = 0;
	for i = 2:numel(closing_prices)
		returns(i) = closing_prices(i) - closing_prices(i-1);
	end
end
