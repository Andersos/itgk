function bool = equal(a,b)
	bool = true;

	al = size(a,2);
	bl = size(b,2);

	if al == bl
		for i = 1:al
			if a(i) ~= b(i)
				bool = false;
				return;
			end
		end
	else
		bool = false;
	end
end