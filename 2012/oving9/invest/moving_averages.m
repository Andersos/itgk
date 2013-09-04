function returns = moving_averages(start_amount, small, big, closing_price)

	cash = start_amount;
	invest = 0;
	last_small = lookback_average(big, small, closing_price);
	last_big = lookback_average(big, big, closing_price);

	for i = big:numel(closing_price)

		invest = invest * closing_price(i) / closing_price(i-1);
		lookback_small = lookback_average(i, small, closing_price);
		lookback_big = lookback_average(i, big, closing_price);

		if (last_big > last_small && lookback_small > lookback_big)
			% Buy
			invest = invest + cash;
			cash = 0;
		end

		if (last_big < last_small && lookback_small < lookback_big)
			% Buy
			cash = cash + invest;
			invest = 0;
		end

		last_small = lookback_small;
		last_big = lookback_big;
	end

	returns = cash + invest;
end