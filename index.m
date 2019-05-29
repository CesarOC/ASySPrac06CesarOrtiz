%% Practica 6
%% Integrantes del equipo: Ortega Gónzalez Moises Donaldo; Ortiz Colin Cesar
%Antonio

%% Sistemas diferenciales
%% 1 función de transferencia 
syms t s
h=transfLaplace([2 2 1],[2 1],[1 1],[0],dirac(t),10);
H(s)=laplace(h)
fplot(H(s),[0,10])
title('Función de transferencia')
xlabel('S')
ylabel('H(S)')
%% 2 respuesta al impulso 
syms t
laplace2016a([2 2 1],[2 1],[1 1],[0],dirac(t),10)

%% 3 respuesta entrada cero 
syms t
f=t-t;
laplace2016a([2 2 1],[2 1],[1 1],[0],f,10)

%% 4 respuesta estado cero 
syms t
f=exp(-t)*heaviside(t);
laplace2016a([2 2 1],[2 1],[0 0],[0],f,10)

%% 5 respuesta total
syms t
f=exp(-t)*heaviside(t);
laplace2016a([2 2 1],[2 1],[1 1],[0],f,10)

%% 6 respuesta total al escalon 
syms t
laplace2016a([2 2 1],[2 1],[1 1],[0],heaviside(t),10)

%% Sistemas en Diferencias

%% 2respuesta al impulso 
syms n
f=kroneckerDelta(n);
zeta2016a([6 5 1],[1 1],[2 1],[0],f,5)

%% 3 repuesta a entrada cero
syms n
f=n-n;
zeta2016a([6 5 1],[1 1],[2 1],[0],f,5)

%% 4 respuesta estado cero 
syms n
f=exp(-n)*heaviside(n);
zeta2016a([6 5 1],[1 1],[0 0],[0],f,5)

%% 5 respuesta total
syms n
f=exp(-n)*heaviside(n);
zeta2016a([6 5 1],[1 1],[2 1],[0],f,5)

%% 6 respuesta total al escalon condiciones iniciales 0
syms n
f=heaviside(n);
zeta2016a([6 5 1],[1 1],[0 0],[0],f,5)