function person = prompt_person()

% Henter verdier
name = input('Hva heter du? ', 's');
day = input('Hvilken dag er du født? ');
month = input('Hvilken måned er du født? ');
year = input('Hvilket år er du født? ');
number = input('Hva er telefonnummeret ditt? ');

% Lager dato og person
date = struct('day', day, 'month', month, 'year', year);
person = struct('name', name, 'date_of_birth', date, 'phone', number);

% Printer
%print_date(date);
%fprintf('\n');
%print_person(person);
%fprintf('\n');

end