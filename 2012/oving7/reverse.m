function reversed = reverse(string)
	n = size(string, 2);
	for i = 1:n
		reversed(n-(i-1)) = string(i);
	end
end