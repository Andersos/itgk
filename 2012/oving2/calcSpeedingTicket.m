% Oppgave 3 Funksjoner og if
% d)
function price = calcSpeedingTicket(farten, fartsgrensen)
    diff = farten - fartsgrensen;
    if(fartsgrensen <= 60)
        price = calcLow(diff);
    elseif(fartsgrensen <= 80)
		price = calcMedium(diff);
	else
		price = calcHigh(diff);
    end
end