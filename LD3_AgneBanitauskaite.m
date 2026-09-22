% Agne Banitauskaite
% EEf-25/2
% 2026/09/22
% 3 laboratorinis darbas
% 12 variantas

% 1 uzduotis

% a dalis

x = -pi:0.1:pi;
y = sin(x);

figure(1)
plot(x,y)

xlabel('x')
ylabel('y')
title('f(x) = sin(x)')
axis([-pi pi -1 1])

xticks(-pi:pi/4:pi)
xticklabels({'-\pi','-3\pi/4','-\pi/2','-\pi/4','0','\pi/4','\pi/2','3\pi/4','\pi'})

grid on

% b dalis

x = -pi:0.1:pi;
y1 = 2*sin(x).*cos(x);
y2 = 3*sin(x).*cos(x);

figure(2)
plot(x,y1,'LineWidth',5)
hold on
plot(x,y2,'LineWidth',5)
hold off

xlabel('x')
ylabel('y')
title('f(x) = 2sin(x)cos(x) ir f(x) = 3sin(x)cos(x)')

legend('2sin(x)cos(x)', '3sin(x)cos(x)')

min(y1);
max(y1);
min(y2);
max(y2);

disp('Pirmos funkcijos minimumas: ');
disp(min(y1));
disp('Pirmos funkcijos maksimumas: ');
disp(max(y1));
disp('Antros funkcijos minimumas: ');
disp(min(y2));
disp('Antros funkcijos maksimumas: ');
disp(max(y2));

axis([-pi pi -1.5 1.5])
grid on


% 2 uzduotis

t = 0:pi/20:4*pi;

x = sin(t);
y = cos(t);
z = tan(t);

figure(3)
plot3(x,y,z,'o-')

xlabel('x(t)')
ylabel('y(t)')
zlabel('z(t)')

zlim([-10 10]);

title('Trimate kreive')
grid on



% papildoma uzduotis

% Duoti duomenys
A = 4;
f = 3;
sigma = 1;
U1 = 2.5;
U2 = 1.5;
t = 0:0.002:1.5;

rng(42);

% pradinis signalas
s = A*sin(2*pi*f*t);

% triuksmas
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

% d dalis
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

% grafinis atvaizdavimas

figure(4)

fontSize = 11;

% 1 grafikas

subplot(2,1,1);
plot(t,s1,'c');
hold on;
plot(t,s1_b,'m');

yline(U1,'--','U1');
yline(-U1,'--','-U1');

yline(U2,':','U2');
yline(-U2,':','-U2');

grid on;

title('Pradinis ir filtruotas signalai','FontSize',11,'FontWeight','bold');
xlabel('Laikas, t (s)','FontSize',11,'FontWeight','bold','Color','b');
ylabel('Itampa, U (V)','FontSize',11,'FontWeight','bold','Color','b');

legend('Pradinis signalas','Filtruotas signalas', ...
    'U1','-U1','U2','-U2', 'Location','southwest');

xlim([0 1.5]);
ylim([-6 6]);

% 2 grafikas

subplot(2,1,2);

indeksai = find(abs(s1)>U1);

t_U1 = t(indeksai);
s_U1 = s1(indeksai);

stem(t_U1,s_U1,'c','filled');
hold on;

[max_reiksme,max_indeksas] = max(s_U1);
[min_reiksme,min_indeksas] = min(s_U1);

plot(t_U1(max_indeksas),max_reiksme,'ro');
plot(t_U1(min_indeksas),min_reiksme,'^','MarkerFaceColor','y','MarkerEdgeColor','y');

grid on;

title('Signalo reiksmes, virsijancios U1','FontSize',11,'FontWeight','bold');
xlabel('Laikas, t (s)','FontSize',11,'FontWeight','bold','Color','b');
ylabel('Itampa, U (V)','FontSize',11,'FontWeight','bold','Color','b');

legend('Reiksmes virs U1','Maksimali reiksme','Minimali reiksme', 'Location','southwest');

xlim([0 1.5]);
ylim([min(s_U1)-0.5 max(s_U1)+0.5])
