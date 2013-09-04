function min = vectormin(list)
	min = Inf;
	for i=1:length(list)
		if list(i) < min
			min = list(i);
		end
	end
end