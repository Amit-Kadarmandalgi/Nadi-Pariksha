clear all
close all
clc;
a = arduino();
tmax = 50;
figure(1),
grid on,
title('pulse redings')
xlabel ('Time (s)'), ylabel('Voltage');
axis([0 tmax+1 -0.5 5.5]);
c= 0;
v= 0;
p=0;
k=0;
t = 0;
tic 
while toc<= tmax
    c = c + 1;
    v(c) = readVoltage(a,'A0');
    p(c) = readVoltage(a,'A1');
    k(c) = readVoltage(a,'A2');
    t(c) = toc;
    if c > 1
        line([t(c-1) t(c)],[v(c-1) v(c)],'color','red');
        hold on
        line([t(c-1) t(c)],[p(c-1) p(c)],'color','blue');
        hold on
        line([t(c-1) t(c)],[k(c-1) k(c)],'color','green');
        hold on
        drawnow;
    end
end
