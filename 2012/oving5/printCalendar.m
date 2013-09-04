
function printCalendar(monthNumber, year)
    if monthNumber > 0 && monthNumber < 13
        if year >= 1900
            monthString = monthNumberTOmonthString(monthNumber);
            days = getDaysMatrix(monthNumber, year);
        	fprintf('   %s %d\n', monthString, year);
            fprintf('ma ti on to fr lø sø\n');
            printDays(days);
        else
            fprintf('Ugyldig år: %d\n', year);
            fprintf('År må være større eller lik 1900');
        end
    else
        fprintf('Ugyldig måned: %d\n', monthNumber);
        fprintf('Måned må være mellom 0 og 13');
    end        
end

function printDays(days)
	for weekInMonth = 1:6
		for dayInWeek = 1:7
			if days(weekInMonth, dayInWeek) == 0
				fprintf('   ');
			else
				if days(weekInMonth, dayInWeek) < 10
					fprintf(' ');
				end
				fprintf('%d ',days(weekInMonth, dayInWeek));
			end
		end
		fprintf('\n');
	end
end

function daysOfMonth = getDaysMatrix(monthNumber, year)

	startDay = getMonthStartDay(monthNumber, year);
	numberOfDays = daysInMonth(monthNumber, year);
	daysOfMonth = zeros(6, 7);

	date = 0;
	for weekInMonth = 1:6
		for dayInWeek = 1:7
			if (date == 0)
				if (weekInMonth == 1 && dayInWeek == startDay)
					date = 1;
				end
			else
				if (date < numberOfDays)
					date = date + 1;
				else
					date = 0;
				end
			end
			daysOfMonth(weekInMonth, dayInWeek) = date;
		end
	end
end

function monthString = monthNumberTOmonthString(monthNumber)
    
    switch (monthNumber)
        case 1
            monthString = 'Januar';
        case 2
            monthString = 'Februar';
        case 3
            monthString = 'Mars';
        case 4
            monthString = 'April';
        case 5
            monthString = 'Mai';
        case 6
            monthString = 'Juni';
        case 7
            monthString = 'Juli';
        case 8
            monthString = 'August';
        case 9
            monthString = 'September';
        case 10
            monthString = 'Oktober';
        case 11
            monthString = 'November';
        case 12
            monthString = 'Desember';
        otherwise
            monthString = 'Ikke en gyldig måned';
    end
end

% getMonthStartDay.m
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