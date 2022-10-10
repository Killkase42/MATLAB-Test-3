disp('Nicholas Vourlas 501167243');
disp('Derek Leung 501196115');
disp('Section 23');
clear;
disp ' ';

disp '2)';
syms x y z%Define system of equations' variables
%Define each equation in the system
equation1=x-2*y+3*z==7;
equation2=y+2*x+z==4;
equation3=-2*z-3*x+2*y==-10;
%a) and b)
[A,B] = equationsToMatrix([equation1, equation2, equation3], [x, y, z]);%Convert to matrix A (coefficient matrix) and B (constant matrix)
%c)
X=linsolve(A,B);%Solve system via created matricies
%Disp solutions
disp(['x=', int2str(X(1,1))]);
disp(['y=', int2str(X(2,1))]);
disp(['z=', int2str(X(3,1))]);

disp '4)';
fun = @nick;%Specify location of functions
x0 = [2,2];%Specify starting guess
[x,fval, exitflag, output] = fsolve(fun,x0)%Runs fsolve on functions and displays iteration data on process