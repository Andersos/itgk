% Tester nummer
% 1 grensetilfelle
% 2 grensetilfelle
% 4 første ikke primtall
% 17 høyt primtall

function boolean = isPrime(number)
	boolean = true;
	if number > 1
		for i = 2:sqrt(x)
			if mod(x,i) == 0
				boolean = false;
				return;
			end
		end
	else
		boolean = false;
	end
end