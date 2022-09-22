clear all
close all
clc;
a = arduino();
tmax = 50;
figure(1),
grid on,
title('pulse sensor Analog Voltage Real Time Data Graph')
xlabel ('Time (s)'), ylabel('Voltage');
axis([0 tmax+1 -0.5 5.5]);
k = 0;
v = 0;
t = 0;
tic 
while toc<= tmax
    k = k + 1;
    v(k) = readVoltage(a,'A0');
    t(k) = toc;
    
    if k > 1
        line([t(k-1) t(k)],[v(k-1) v(k)]);
        drawnow;
    end
end