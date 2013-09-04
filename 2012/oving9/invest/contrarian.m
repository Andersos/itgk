function returns = contrarian(start_amount, n, closing_prices)

	daily_return = daily_returns(closing_prices);
	cash = start_amount;
	invest = 0;

	for i = n:numel(closing_prices)

		invest = invest * (closing_prices(i)/closing_prices(i-1));

		if is_going_down(n, i, daily_return)
			% Buy stock
			if cash > 0
				%fprintf('\n Buy at %d with %d', closing_prices(i), cash);
				invest = invest + cash;
				cash = 0;
			end
		else
			% Sell stock
			if invest > 0
				%fprintf('\n Sell at %d with %d', closing_prices(i), invest);
				cash = cash + invest;
				invest = 0;
			end
		end
	end

	returns = cash + invest;
end