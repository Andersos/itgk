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