getMonthName (0) % skal skrive ut 'Ikke en gyldig måned '
getMonthName (1) % skal skrive ut 'Januar '
getMonthName (2) % skal skrive ut 'Februar '
getMonthName (3) % skal skrive ut 'Mars '
getMonthName (4) % skal skrive ut 'April '
getMonthName (5) % skal skrive ut 'Mai '
getMonthName (6) % skal skrive ut 'Juni '
getMonthName (7) % skal skrive ut 'Juli '
getMonthName (8) % skal skrive ut 'August '
getMonthName (9) % skal skrive ut 'September '
getMonthName (10) % skal skrive ut 'Oktober '
getMonthName (11) % skal skrive ut 'November '
getMonthName (12) % skal skrive ut 'Desember '
getMonthName (13) % skal skrive ut 'Ikke en gyldig måned '

function monthString = monthNumberTOmonthString(monthNumber)

	switch(month)
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
        	monthString = 'Ikke gyldig måned';
    end
end
