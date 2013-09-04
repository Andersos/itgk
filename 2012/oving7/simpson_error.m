function [res, i] = simpson_error(@func, a, b, error)

	i=1;
	delta = Inf;
	while delta > error
		res = simpson(@func, a, b, 2.^i);
		delta = abs(res - simpson(@func, a, b, 2.^(i+1)));
		i=i+1;
	end
end