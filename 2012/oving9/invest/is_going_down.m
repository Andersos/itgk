function boolean = is_going_down(n, i, daily_return)
	boolean = true; 
	for j = i:-1:max(1, i-n+1)
		if daily_return(j) > 0
			boolean = false;
			return;
		end
	end
end