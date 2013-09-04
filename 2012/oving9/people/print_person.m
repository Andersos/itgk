function print_person(person)

fprintf('%s', person.name);
fprintf(', ');
print_date(person.date_of_birth);
fprintf(', ');
fprintf('%d', person.phone);
fprintf('\n');

end