% Agne Banitauskaite
% EEf-25/2
% 2026/09/29
% 4 laboratorinis darbas
% 5 variantas

% 1 uzduotis

% a dalis

figure(1);

x_vektorius = (2*rand(1,200)-1).*sqrt(pi/2);
y_vektorius = (2*rand(1,200)-1).*sqrt(pi/2);

[X, Y] = meshgrid(sort(x_vektorius), sort(y_vektorius));

Z = sin(X.^2 + Y.^2);

surf(X, Y, Z);

colormap('cool');
shading interp;

view(50, 30);

title('trimatis pavirsius: f(x,y) = sin(x^2 + y^2)');
xlabel('x asis');
ylabel('y asis');
zlabel('f(x,y)');
grid on


% b dalis

figure(2);

x = linspace(-2, 1, 100);
y = linspace(-2, 1, 100);
[X, Y] = meshgrid(x, y);

Z = 1 - 2*X.^2 - 3*Y.^2;

surf(X, Y, Z);

colormap('cool');
shading interp;

view(60, 30);

title('trimatis pavirsius: f(x,y) = 1 - 2x^2 - 3y^2');
xlabel('x asis');
ylabel('y asis');
zlabel('f(x,y)');
grid on


% papildoma uzduotis


x = linspace(-2, 2, 100);
y = linspace(-2, 2, 100);
[X, Y] = meshgrid(x, y);

Z = 1 - (X.^2 + Y.^2);

figure(3);

pavirsius = surf(X, Y, Z, 'FaceColor', 'r', 'EdgeColor', 'none');

camlight('left');
lighting gouraud;

title('pavirsius: z(x,y) = 1 - (x^2 + y^2)');
xlabel('x asis');
ylabel('y asis');
zlabel('z asis');
grid on;
axis tight
