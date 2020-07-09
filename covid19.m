function dydt = covid19(t,y,a1,a2)
% Predator and Prey Model
% tmp1 = -((a1*y(1)*y(2))./(y(1)+y(2)+y(3)));
% tmp2 = ((a1*y(1)*y(2))./(y(1)+y(2)+y(3)))-a2*y(3);
% tmp3 = a2*y(3);
S=y(1);
I=y(2);
R=y(3);

tmp1 = -a1*S*I/(S+I+R);
tmp2 = a1*S*I/(S+I+R)-a2*I;
tmp3 = a2*I;

% tmp1 = -a1*S*I;
% tmp2 = a1*S*I-a2*I;
% tmp3 = a2*I;

dydt = [tmp1; tmp2; tmp3]; 