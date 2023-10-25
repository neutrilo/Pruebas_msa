clear
a = 2023;
b = 2024;
c = 2025;

n_real = 2023202320232023;
% n_real = 50;
pasos = n_real - 3;

n = 1000000;
if length(n)<1000000
    vect = zeros(n-3,1);
end


for i = 1:n-3
    d = a+b+c;
    d = mod(d,10000);
    a = b;
    b = c;
    c = d;
    vect(i) = d;
end
rep = [];
initial = 1;
for i = 1:length(vect)-2
    if vect(i:i+2) == vect(initial:initial+2)
        rep(end+1) = i;
    end
end

frec = rep(2)-rep(1);

a = 2023;
b = 2024;
c = 2025;
disp('Numeros iniciales:')
disp([a,b,c])
disp(['Las ultimas cuatro cifras se repiten cada ',num2str(frec), ' iteraciones'])

for i = 1:0*frec+mod(pasos,frec)
    d = a+b+c;
    d = mod(d,10000);
    a = b;
    b = c;
    c = d;
    vect(i) = d;
end

disp(['Ultimas cuatro cicfras del ', num2str(n_real),'-esimo numero:'])
disp(d)
