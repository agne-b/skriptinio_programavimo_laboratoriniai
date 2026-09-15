% Agne Banitauskaite
% EEf-25/2
% 2026/09/15

% 1 uzduotis

% a dalis: vektorius stulpelis
x1 = [-5:0.6:5]';
disp('Vektorius x1:');
disp(x1);

% b dalis: saknys
x2 = sqrt(x1);
disp('Vektoriaus x1 nariu kvadratines saknys x2: ');
disp(x2);

% c dalis: vektoriaus b paskutinis narys
x3 = x2(end);
disp('Antrojo vektoriaus paskutinis narys x3: ');
disp(x3);

% d dalis
x4 = (x1.*x2)/x3;
disp('Gautas vektorius x4: ');
disp(x4);


% 2 uzduotis

% a dalis: matricos ivedimas
Xmn = [2*sqrt(2), log(2); 2^5, 2*pi; 3*sqrt(2), exp(2)];
disp('Matrica Xmn: ');
disp(Xmn);

% b dalis: vektoriaus stulpelio iterpimas
Xm2 = [2*sqrt(2); 5; 2^-2];
disp('I matrica A iterptas vektorius Xm2: ');
disp(Xm2);

X = [Xmn, Xm2];
disp('Gauta matrica: ');
disp(X);


% c dalis: determinantas
D = det(X)
disp('Matricos determinantas: ');
disp(D);


% 3 uzduotis

% Duoti duomenys
A = 4;
f = 3;
sigma = 1;
U1 = 2.5;
U2 = 1.5;
t = 0:0.002:1.5;
% pradinis signalas
s = A*sin(2*pi*f*t);
% triuksmas:
n = sigma*randn(size(t));
% triuksmu paveiktas signalas
s1 = s + n;

% a dalis
s1_a = s1(abs(s1)>U1);
disp('Atrinktos signalo reiksmes: ');
disp(s1_a);

% b dalis
s1_b = s1;
s1_b(abs(s1_b)<U2) = 0;
disp('Filtruotas signalas: ');
disp(s1_b);

% c dalis
s1_dydis = size(s1);
disp('Nefiltruoto signalo dydis: ');
disp(s1_dydis);

% d dalis:
s1_a_dydis = size(s1_a);
disp('a dalyje atrinktu reiksmiu dydis: ');
disp(s1_a_dydis);

% e dalis
max_filtruoto = max(s1_b);
disp('Didziausia filtruoto signalo reiksme: ');
disp(max_filtruoto);

min_filtruoto = min(s1_b);
disp('Maziausia filtruoto signalo reiksme: ');
disp(min_filtruoto);


% papildoma uzduotis

A = [0, 1, 0, 2, 3, 0, 4; 
     0, 0, 0, 0, 0, 0, 0;
     0, 5, 0, 6, 7, 0, 8;
     0, 9, 0, 1, 2, 0, 3;
     0, 0, 0, 0, 0, 0, 0;
     0, 4, 0, 5, 6, 0, 7];

eilutes = [1, 3, 4, 6];
stulpeliai = [2, 4, 5, 7];

B = A(eilutes, stulpeliai);

disp('Pertvarkyta matrica B: ')
disp(B);


