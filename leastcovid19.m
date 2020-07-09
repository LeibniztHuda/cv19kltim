function J = leastcovid19(p,tdata,xdata,ydata,zdata)
%Create the least squares error function to be minimized.
n1 = length(tdata);
[t,y] = ode23s(@covid19,tdata,[p(1),p(2),p(3)],[],p(4),p(5));
errx = y(:,1) - xdata(1:n1)';
erry = y(:,2) - ydata(1:n1)';
errz = y(:,3) - zdata(1:n1)';
J = errx'*errx + erry'*erry + errz'*errz;