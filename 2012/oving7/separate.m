function [smaller, bigger] = separate(vector, number)
	si = 1;
	bi = 1;
	for i = 1:size(vector,2)
		if v(i) < number
			smaller(si) = vector(i);
			si = si + 1;
		else
			bigger(bi) = vector(i);
			bi = bi + 1;
		end
	end
end