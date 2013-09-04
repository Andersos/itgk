function leapBool = isLeapYear(year)
	if (rem(year, 4) == 0 || rem(year, 100) == 0)
		leapBool = 1;
	else
		leapBool = 0;
	end
end