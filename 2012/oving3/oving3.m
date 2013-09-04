% Oppgave 1
%a) Hva er forskjellen på et Høynivå- og et Lavnivå-programmeringsspråk?
% Høynivå er større abstraksjoner og gir en del ekstra funksjoner mer enn
% hardware. Lavnivå 
%b) Hva gjør Programtelleren (Program Counter)?
% PCen holder styr på hvilken linje i programmet som er den neste som skal
% utføres
%c) Når kan man bruke en switch-setning i stedet for if-else-setning?
% Når man kun skal sammenligne en variabel med ulike verdier

% Oppgave 2
% a1) Hva gjør funksjonen
% Den tar inn tall og returnerer navnet på ukedager
% a2) res = navn/name getWeekdayName/hentUkedagnavn arg = WeekDayNumber
% b1) returnerer summen av alle elementer i vektoren
% b2) res = sum fn = vektorsum
% c) andre ulikhetstegne bør snues så man gjør den andre sammenlikningen.
% hva om a == b?

% Oppgave 3
% a)

function days = daysInMonthOld(month)

    switch(month)
        case 1
        	% Jan
            days = 31;
        case 2
        	% Feb
        	days = 28;
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