function list_people(list_of_people)
	for i = 1:numel(list_of_people)
		print_person(list_of_people(i));
	end
end