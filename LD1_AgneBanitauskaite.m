% Agne Banitauskaite
% EEf-25/2
% 2026/09/08
%
% Paprastas skriptas
%

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]   |    F_2 [-x-]')

% 8 punktas

help sin  %paprasciausia funkcija
doc plot
docsearch title  %issamesne informacija

% 9 punktas

% linspace sukuria vektoriu su tolygiai isdeliotais skaiciais
% sintakse: y = linspace(x1, x2, n), cia du ivesties argumentai (x1, x2),
% vienas isvesties argumentas y
% n nurodo kiek elementu turi buti vektoriuje
% susijusios funkcijos: logspace, colon (:)

% size nustato matricos dydi, grazina matricos eiluciu ir stulpeliu skaiciu
% sintakse: sz = size(A), cia vienas ivesties argumentas A
% vienas isvesties argumentas sz
% sz = size(A,dim) cia 2 ivesties argumentai, 1 isvesties
% susijusios funkcijos: length, numel, ndims, width, height

% max suranda didziausia reiksme
% sintakse: [M,I] = max(A), cia ivesties argumentaas A
% isvesties argumentai 2: M - didziausia reiksme, I - jos indeksas
% M = max(A) ivesties argumentas vienas A, isvesties M
% M = max(A,[],dim) ivesties 3 argumentai, isvesties vienas
% dim = 1 pagal stulpelius, dim = 2 pagal eilutes
% C = max(A,B) su 2 masyvais, ivesties 2 arg, isvesties 1
% palygina abieju masyvu elementus ir paima didesni
% susijusios funkcijos: min, mean, median, sum, sort, find


% papildoma uzduotis

N = 9;

% Vektorius
v = N+1 : 0.5 : N+4;

% A matrica
A = [N N+1 N+2; N+3 N+4 N+5; N+6 N+7 N+8];

% 4 punktas
a = A(3,2);
b = A(2:3,1:2);
c = A([1 3],[1 3]);

% 5 punktas
v2 = v(1:3);
A2 = [A; v2]
