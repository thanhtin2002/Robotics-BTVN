syms t1 l1 l2 A B
l1=40;l2=50;l3=40;
for t= 0:0.1:20*pi
    x = 30 + 40*t;
    y = 30 + 40*t;
    z = 30 + 40*t;
    t1 = -atan2(x,y);
    A = -x/sin(t1);
    B = z - l1;
    c3 = (A^2 + B^2 -l3^2 +l2^2)/(2*l2*l3);
    s3 = sqrt(abs(1-c3^2));
    t3 = atan2(s3,c3);
    s2 = (B*(l2*l3*cos(t3))-(A*l3*sin(t3)))/(l2+l3*cos(t3))^2+(l3*sin(t3))^2;
    c2 = (A*(l2*l3*cos(t3))-(B*l3*sin(t3)))/(l2+l3*cos(t3))^2+(l3*sin(t3))^2;
    t2 = atan2(s2,c2);
    
    Px = -sin(t1)*(cos(t2)*l3 + l2);
    Py = cos(t1)*(cos(t2)*l3 + l2);
    Pz = sin(t2)*l3 + l1;
   
    %ve bieu do
    subplot(2,2,1);
    plot(t,t1*(180/pi),'--o');pause(0.01);
    xlabel('time'); ylabel('t1');
    hold on
    
    subplot(2,2,2);
    plot(t,t2*(180/pi),'--o');pause(0.01);
    xlabel('time'); ylabel('t1');
    hold on
    
    subplot(2,2,3);
    plot(t,t3*(180/pi),'--o');pause(0.01);
    xlabel('time'); ylabel('t2');
    hold on
    
    subplot(2,2,4)
    plot3(x,y,z,'--o');pause(0.01);
    xlabel('x(cm)');ylabel('y(cm)');zlabel('z(cm)')
    hold on
    grid on
end