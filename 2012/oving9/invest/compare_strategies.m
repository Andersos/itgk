function compare_strategies(closing_prices)
	benchmark_strategy(@momentum, closing_prices);
	benchmark_strategy(@contrarian, closing_prices);
end