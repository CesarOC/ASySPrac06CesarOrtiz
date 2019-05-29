function [p] = l12()
% funci�n de transferencia 
syms t s
h=transfLaplace([2 2 1],[2 1],[1 1],[0],dirac(t),10);
H(s)=laplace(h)

p=fplot(H(s),[0,10]);
title('Funci�n de transferencia');
xlabel('S');
ylabel('H(S)');
end

