l1=50;l2=40;
syms t;
for t=0:0.01:2*pi
    X=40+10*cos(t);
    Y=40+10*sin(t);
    c2=(X^2+Y^2-l1^2-l2^2)/2*l1*l2;
    s2=sqrt(abs(1-c2^2));
    t2=atan(s2,c2);
    c1=X*(l1+l2*c2)+l2*c2*Y;
    s1=Y*(l1+l2*c2)-X*(l1*s2);
    t1=atan(s1,c1);
    px=l1*cos(t1)+l2*cos(t1+t2);
    py=l1*sin(t1)+l2*sin(t1+t2);
    subplot(2,1,1);
    plot(t,t1*180/pi,'--o',t,t2*180/pi,'-o');
    pause(0.1);
    xlabel('t');
    ylabel('Rotation');
    hold on;
    subplot(2,1,2);
    plot(X,Y,'--o');
    xlabel('x(cm)');
    ylabel('y(cm)');
    pause(0.1);
    hold on;
end