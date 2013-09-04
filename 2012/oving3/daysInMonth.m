function days = daysInMonth(month, year)

    switch(month)
        case 1
        	% Jan
            days = 31;
        case 2
        	% Feb
            if isLeapYear(year)
        		days = 29;
        	else
        		days = 28;
            end
        case 3
        	% Mars
        	days = 31;
        case 4
        	% April
        	days = 30;
        case 5
        	% Mai
        	days = 31;
        case 6
        	% Juni
        	days = 30;
        case 7
        	% July
        	days = 31;
        case 8
        	% Aug
        	days = 31;
        case 9
        	% Sept
        	days = 30;
        case 10
        	% Okt
        	days = 31;
        case 11
        	% Nov
        	days = 30;
        case 12
        	% Des
        	days = 31;
        otherwise
        	days = 0;
    end
end

function leapBool = isLeapYear(year)
	if (rem(year, 4) == 0 || rem(year, 100) == 0)
		leapBool = 1;
	else
		leapBool = 0;
	end
end