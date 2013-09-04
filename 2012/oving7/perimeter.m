function length = perimeter(x, y)
	length = 0;
	% Antar at lengden til vector x og y er like
	for n = 1:size(x, 2)
		if ((n + 1) < size(x, 2))
			length = length + pytagoras((x(n)-x(n+1)), (y(n)-y(n+1)));
		else
			length = length + pytagoras((x(n)-x(1)), (y(n)-y(1)));
		end
	end
end