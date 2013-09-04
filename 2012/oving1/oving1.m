import kubeVolum.*
import kuleVolum.*
import pyramideVolum.*
% Oppgave 1 a
disp (84/2)
% Svar 42

% Oppgave 1 b
disp (7*(12/(6+2))+2)
% Svar 12.50000

%Oppgave 2 a
tall1 = 5;
tall2 = 6;
disp (tall1 + tall2)
% Svar 11

% Oppgave 2 b
tall2 = 7;
disp (2 * tall1^10 + tall2^8)
% Svar 25296051

% Oppgave 2 c
tall3 = (2 * tall1^10 + tall2^8);
disp (tall3^0.5)
% Svar 5.0295e+03

% Oppgave 2 d
tall1 = 0;
tall1 = tall1 + 1;
tall1 = tall1 + 1;
tall1 = tall1 + 1;
disp (tall1)
% Svar 3

% Oppgave 2 e
laan = 1000;
rente = 0.03;
aar = 100;
gjeld = laan * (1 + rente)^aar;
disp (gjeld)
% Svar 1.9219e+04

% Oppgave 3 a
% Svar isprime tar inn en liste med tall og returnerer boolsk verdi om
% prime status

% Oppgave 3 b
list = [131 77 127 981 13];
isprime(list)
% Svar 1 0 1 0 1

% Oppgave 3 c
disp(sum(isprime(1:1000)))
% Svar funksjonen summerer opp antall primtall fra 1 til 1000 168

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
    fprintf('kubeVolum er %d større', (kubeVolum(1) - kuleVolum(1)));
else
    fprintf('kuleVolum er %d større', (kuleVolum(1) - kubeVolum(1)))
end
% Svar kuleVolum er størst med 3.1888

% Oppgave 4 b
lengde = 3;
hoyde = 5;

if (pyramideVolum(lengde, hoyde) == 15)
    disp 'funksjonen er riktig'
else
    disp 'funksjonen er feil'
end