function people = batch_register_persons()

	if exist('people') == 0;
		people = zeros(1);
	end

	person = prompt_person();
	next = numel(people)+1
	people(next) = person;
	
	temp = input('Skal du registrere flere personer (ja/nei)? ');
	
	if temp == 'ja'
		batch_register_persons();
	else
		people = people;
	end
	
	people = [people, person];

end