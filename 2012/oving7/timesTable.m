function table = timesTable(n)
	table = zeroes(n,n);
	for i = 1:n
		for j = 1:n
			table(i,j) = i*j
		end
	end
end