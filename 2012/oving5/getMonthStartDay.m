
function startDay = getMonthStartDay(monthNumber, year)

	if monthNumber > 0 && monthNumber < 13
		startDay = getYearStartDay(year);

		for month = 1:monthNumber-1
			startDay = startDay + daysInMonth(month, year);
		end

		while startDay > 7
			startDay = startDay - 7;
		end
	else
		startDay = 0;
	end
end

function days = daysInMonth(month, year)

    switch(month)
        case {1, 3, 5, 7, 8, 10, 12}
            days = 31;
        case 2
            if isLeapYear(year)
        		days = 29;
        	else
        		days = 28;
            end
        case {4, 6, 9, 11}
        	days = 30;
        otherwise
        	days = 0;
    end
end

% getYearStartDay.m
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