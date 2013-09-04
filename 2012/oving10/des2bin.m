function binary = des2bin(decimal)
	isNegativ = false;
	if (decimal < 0)
		isNegativ = true;
		decimal = -decimal;
	end

	if decimal >= 0
		if decimal == 0
			binary = 0;
		elseif decimal == 1
			binary = 1;
		% Partall
		elseif mod(decimal,2) == 0
			binary = [des2bin(decimal/2), 0];
		% Oddetall	
		else
			binary = [des2bin((decimal-1)/2), 1];
		end
	end

	if (isNegativ)
		for i=1:length(binary)
			binary(i) = abs(binary(i)-1);
		end
		
		%binary = ~binary+1;
	end
end