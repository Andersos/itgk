
function startDay = getYearStartDay(year)

	% WILL ONLY WORK AFTER 1900
	startDay = 1;

	for i = 1900:(year-1)
		if isLeapYear(i)
			startDay = startDay + 2;
		else
			startDay = startDay + 1;
		end
		if startDay > 7
			startDay = startDay - 7;
		end
	end
end

function isLeapYear = isLeapYear(year)
	
	if (mod(year, 400) == 0)
		isLeapYear = true;
	elseif (mod(year, 100) == 0)
		isLeapYear = false;
	elseif (mod(year, 4) == 0)
		isLeapYear = true;
	else 
		isLeapYear = false;
	end
end