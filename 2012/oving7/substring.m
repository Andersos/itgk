function occurance = substring(string, sub)
	occurance = -1;
	n = size(sub, 2);
	N = size(string, 2);

	for i = 1:N-n+1
		cut = string(i:i+n-1);
		if equal(cut, sub)
			pos = i;
			return;
		end
	end
end