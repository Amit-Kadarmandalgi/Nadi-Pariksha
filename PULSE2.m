clear all
a=arduino('COM4');
line1=line(nan, nan, 'color', 'red');
line2=line(nan, nan, 'color', 'blue');
i=0;
while 1
    pulse1= readVoltage(a,'A0');
    pulse2= readVoltage(a,'A1');
    x1=get(line1, 'xData');
    y1=get(line1, 'yData');
    x2=get(line2, 'xData');
    y2=get(line2, 'yData');
    x1=[x1 i];
    y1=[y1 pulse1];
    x2=[x2 i];
    y2=[y2 pulse2];
    set(line1, 'xData', x1, 'yData', y1);
    set(line1, 'xData', x2, 'yData', y2);
    
    i=i+1;
    pause(1);
end
