function age = get_age(person)

	[Y M D] = datevec(now);

	if M < person.date_of_birth.month || (M == person.date_of_birth.month && D < person.date_of_birth.day)
		age = Y - person.date_of_birth.year - 1;
	else
		age = Y - person.date_of_birth.year;

	end
end