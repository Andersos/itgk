function x1 = newton(func, deriv, x1, error_rate, max_iterations)
    
	x0 = Inf;
	while abs(x1-x0) > error_rate

		if max_iterations < 0
			x1 = false;
			return;
		end

		x0 = x1;
		x1 = x1 - func(x1) / deriv(x1);
		max_iterations = max_iterations - 1;
	end
end