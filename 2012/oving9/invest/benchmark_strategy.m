function benchmark_strategy(strategy, prices)

	start_amount = 100;
	numWins = 0;
	numTests = 0;
	maxWin = -Inf;
	maxLoss = Inf;

	for i = 1:size(prices, 1)
		closing_prices = prices(i, :);
		for j = 2:numel(closing_prices)
			numTests = numTests + 1;
			returns = strategy(start_amount, j, closing_prices);

			if returns > start_amount
				numWins = numWins + 1;
				if maxWin < returns
					maxWin = returns;
				end
			else
				if maxLoss > returns
					maxLoss = returns;
				end
			end
		end
	end

	fprintf ('%d/%d wins, max = %2.2f, min = %2.2f\n', numWins, numTests, maxWin, maxLoss);
end