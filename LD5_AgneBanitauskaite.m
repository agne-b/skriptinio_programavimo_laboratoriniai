% Agne Banitauskaite
% EEf-25/2
% 2026/10/06
% 5 laboratorinis darbas
% 2 variantas

% 1 uzduotis

 studentai = struct(...
     'vardas', 'Agne',...
     'pavarde', 'Banitauskaite',...
     'grupe', 'EEf-25/2',...
     'egzaminai', [9, 9, 10, 8, 10, 10]...
     );
 studentai(1) = struct(...
     'vardas', 'Jonas',...
     'pavarde', 'Jonaitis',...
     'grupe', 'EEf-25/1',...
     'egzaminai', [7, 8, 6, 10, 10, 9]...
     );
 studentai(2) = struct(...
     'vardas', 'Petras',...
     'pavarde', 'Petraitis',...
     'grupe', 'EEf-25/1',...
     'egzaminai', [7, 9, 9, 9, 8, 8]...
     );
studentai(2).egzaminai(1, 2) = 10;
disp('atnaujinta informacija apie 2-aji studenta:');
disp(studentai(2));
disp('pakeista 2-ojo studento egzaminu matrica:');
disp(studentai(2).egzaminai);


% 2 uzduotis

format bank;

skolinama_suma = 10000:1000:20000;
palukanos = [0.10, 0.15, 0.20];

lentele = zeros(length(skolinama_suma), 4);

for i = 1:1:length(skolinama_suma)
   
    S = skolinama_suma(i);

    pirma_imoka = S * (1 + palukanos(1)) / 12;
    antra_imoka = S * (1 + palukanos(2)) / 12;
    trecia_imoka = S * (1 + palukanos(3)) / 12;

    lentele(i, :) = [S, pirma_imoka, antra_imoka, trecia_imoka];
end

disp('   paskolos suma | bankas 1 (10%) | bankas 2 (15%) |  bankas 3 (20%)');
disp(lentele);


% papildoma uzduotis

sakinys = input('Iveskite sakini su keliais tarpais tarp zodziu: ', 's');
sakinys = strtrim(sakinys);

if isempty(sakinys)
    disp('Jus neivedete jokio teksto.');
else
    while contains(sakinys, '  ')
        sakinys = strrep(sakinys, '  ', ' ');
    end

    tarpu_skaicius = 0;
    for i = 1:1:length(sakinys)
        if sakinys(i) == ' '
            tarpu_skaicius = tarpu_skaicius + 1;
        end
    end
    zodziu_skaicius = tarpu_skaicius + 1;

    disp(['Apdorotas sakinys: "', sakinys, '"']);
    disp(['Ivestu zodziu skaicius: ', num2str(zodziu_skaicius)]);
end