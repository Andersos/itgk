function result = simpsons(@func, a, b, n)

	h = (b-a)/n;
	result = @func(a) + @func(b);

	for i = 1:2:n
		result = result + 2*@func(a + (i*h));
	end

	for i = 2:2:n-1
		result = result + 2*@func(a + (i*h));
	end

	result = result * (h/3);
end