l1=50 ;l3=20;b=10;h=100;v=10;
syms t1 t2 l2 pi;syms t;
for t=0:0.01:10
    t1=atan2(h-b-l3,v*t);
    t2=(pi/2)-t1;
    l2= sqrt((h-b-l3)^2+(v*t)^2)-l1;
    px=(l1+l2)*cos(t1)+l3*cos(t1+t2);
    py=(l1+l2)*sin(t1)+l3*sin(t1+t2);
    subplot(2,2,1);
    plot(t,t1*180/pi,'--o');
    hold on;
    subplot(2,2,2);
    plot(t,t2*180/pi,'--o');
    hold on;
    subplot(2,2,3);
    plot(t,l2,'--o');
    hold on;
    subplot(2,2,4);
    plot(px,py,'--o');
    hold on
end