%respuesta total
syms t
f=exp(-t)*heaviside(t);
laplace2016a([2 2 1],[2 1],[1 1],[0],f,10)
