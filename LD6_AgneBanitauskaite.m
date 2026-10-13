% Agne Banitauskaite
% EEf-25/2
% 2026/10/13
% 6 laboratorinis darbas
% 8 variantas

clear; clc;
global x y

x = 0 : 0.1 : 20;

f_kvadratu();

f_pusiau();

whos;

figure;
plot(x, y, '-.b', 'LineWidth', 1.5);
hold on;
plot(x, y, 'bo', 'MarkerFaceColor', 'b', 'MarkerSize', 3);
hold off;
grid on;
title('globaliu kintamuju grafikas');
xlabel('x');
ylabel('y');
