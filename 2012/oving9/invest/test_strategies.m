function test_strategies(start_amount, small, big, closing_price)

	m_return = momentum(start_amount, small, closing_price);
	c_return = contrarian(start_amount, small, closing_price);
	a_return = moving_averages(start_amount, small, big, closing_price);

	fprintf('momentum, %d <- %d: %2.2f\n', start_amount , small, m_return);
	fprintf('contrarian, %d <- %d: %2.2f\n', start_amount , small, c_return);
	fprintf('moving_averages, %d <- (%d ,%d): %2.2f\n', start_amount , small, big, a_return);
end