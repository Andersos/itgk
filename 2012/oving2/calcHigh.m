% Oppgave 3 Funksjoner og if
% c)
function price = calcLow(speedAboveLimit)
    if(speedAboveLimit <= 0)
        price = 0;
    elseif (speedAboveLimit <= 15)
		price = 2600;
	elseif (speedAboveLimit <= 25)
		price = 4900;
	elseif (speedAboveLimit <= 35)
		price = 7800;	
	else
		price = 9000;
    end
end