% Oppgave 3 Funksjoner og if
% b)
function price = calcMedium(speedAboveLimit)
    if(speedAboveLimit <= 0)
        price = 0;
    elseif (speedAboveLimit <= 15)
		price = 2600;
	elseif (speedAboveLimit <= 25)
		price = 4900;	
	else
		price = 7800;
    end
end