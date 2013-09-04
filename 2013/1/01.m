import kubeVolum.*
import kuleVolum.*
import pyramideVolum.*

fprintf('\nOppgave 1\n');
% Oppgave 1 a
o1a = 84/2;
fprintf('1a. 84/2 = %d \n',o1a);
% Svar 42

% Oppgave 1 b
o1b = (7*(12/(6+2))+2);
fprintf('1b. 7 * 12/(6+2) + 2 = %.1f \n',o1b);
% Svar 12.50000

fprintf('\nOppgave 2\n')
%Oppgave 2 a
tall1 = 5;
tall2 = 6;
fprintf('2a. tall1 + tall2 = %d \n', tall1+tall2);
% Svar 11

% Oppgave 2 b
tall2 = 7;
fprintf('2b. 2 * tall1^10 + tall2^8 = %d \n', 2*tall1^10+tall2^8);
% Svar 25296051

% Oppgave 2 c
tall3 = (2 * tall1^10 + tall2^8);
fprintf('2c. tall3^0.5 %.2f \n', tall3^0.5);
% Svar 5.0295e+03

% Oppgave 2 d
tall1 = 0;
fprintf('2d. tall1 = %d \n',tall1);
tall1 = tall1 + 1;
fprintf('tall1 = tall1 + 1 | tall1 = %d \n', tall1);
tall1 = tall1 + 1;
fprintf('tall1 = tall1 + 1 | tall1 = %d \n', tall1);
tall1 = tall1 + 1;
fprintf('tall1 = tall1 + 1 | tall1 = %d \n', tall1);
% Svar 3

% Oppgave 2 e
laan = 1000;
rente = 0.03;
aar = 100;
gjeld = laan * (1 + rente)^aar;
fprintf('2e. gjeld = laan * (1 + rente)^aar \n    gjeld = %.2f NOK \n',gjeld);
% Svar 1.9219e+04

fprintf('\nOppgave 3\n')
% Oppgave 3 a
fprintf('3a. listeTall -> isprime -> 1=primtall 0!=primtall.\n');
% Svar isprime tar inn en liste med tall og returnerer boolsk verdi om
% prime status

% Oppgave 3 b
list = [131 77 127 981 13];
fprintf('3b.     liste  = 131 77 127 981 13\n');
fprintf('isprime(liste) =   1  0   1   0  1\n');
% isprime(list);
% Svar 1 0 1 0 1

% Oppgave 3 c
summen = sum(isprime(1:1000));
fprintf('3c. disp(sum(isprime(1:1000))) = %d \n', summen);
% Svar funksjonen summerer opp antall primtall fra 1 til 1000 168

fprintf('\nOppgave 4\n')
% Oppgave 4 
% kubeVolum.m
%function y = kubeVolum(lengde)
%    y = lengde^3;
%end
% kuleVolum.m
%function x = kuleVolum(radius)
%    x = 4/3*radius^3*pi;
%end

if(kubeVolum(1) > kuleVolum(1))
    fprintf('4a. kubeVolum er %.2f større enn kuleVolum.\n', kubeVolum(1) - kuleVolum(1))
else
    fprintf('4a. kubeVolum er %.2f større enn kuleVolum.\n', kuleVolum(1) - kubeVolum(1))
end
% Svar kuleVolum er størst med 3.1888

% Oppgave 4 b
lengde = 3;
hoyde = 5;
volum = pyramideVolum(lengde, hoyde);

fprintf('4b. function volum = pyramideVolum(lengde, hoyde)\n    volum = 1/3*lengde^2*hoyde;\n    end\n');
fprintf('pyramideVolum(3,5) = %d \n', volum);
if (volum == 15)
    disp 'funksjonen er riktig'
else
    disp 'funksjonen er feil'
end
