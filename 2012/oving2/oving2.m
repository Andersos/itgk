% Oving 2

% Oppgave 1 - Teori
% a) Nevn to forskjeller på RAM og Harddisk
% RAM er flyktig mens Harddisk er flyktig
% RAM har lavere aksesstid
% RAN er dyrere
% RAM har mindre lagring
% b) Hva er den viktigste forskjellen på RAM og ROM?
% RAM har RW mens ROM kun har R
% c) Hva er fordelen med tilfeldig aksess i forhold til sekvensiell aksess?
% Raskere fordi man kan hoppe direkte til plassen man vil lese fra
% d) funksjon
% d1) res =  returverdien, identity = funksjonsnavnet, x = input/argument,
% d2) På linje 2 får res verdien til x. res er returnverdien

% Oppgave 2 Kodeforståelse
% a) a = 4, b = -1, c = 15
% b) a = 3, b = 3, c = 11
% c) 
%function resultat = foo(e, f)
%	resultat = e^2 - f;
%end

%a = 2
%b = 3
%c = foo(a, b)
%disp(c)
% c = 4 - 3

% Oppgave 3 Funksjoner og if
% a)
function price = calcLow(speedAboveLimit)
    if(speedAboveLimit <= 0)
        price = 0;
    elseif (speedAboveLimit <= 15)
		price = 2900;
	else
		price = 6500;
    end
    
end
