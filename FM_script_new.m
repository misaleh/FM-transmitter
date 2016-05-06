%% Clear
clc;clear all ;close all;
%% Parameters
fc = 10; %carrier frequency
fm = 1; %essage freuqency
B = 35; %modulation index
k =0; %used for drawing
tp = 0:0.001:500; %time 
delay = 0.1; %delay when plotting
carrier = cos(2*pi*fc*tp); %the carrier
%% Message
syms ti; %time symblol
M = cos(2*pi*fm*ti); %generic message
Mi = int(M,ti); % integrated message
ti = tp; % to substitute
Mii = eval(Mi); %substitute
M = eval(M);% message but as array to plot
FM =  cos(2*pi*fc*tp+B.*Mii); % the Fm transmitted message

%% Plotting
myfigure1 = figure('name','FM transmitter');
while (1)
if ~ishghandle(myfigure1)
      break
end
subplot(3,1,1)
plot(tp,M)
title('Original Signal')
xlabel('time')
ylabel('Amplitude')
xlim([0+k 10+k])
subplot(3,1,2)
plot(tp,carrier)
xlim([0+k 10+k])
title('Carrier')
xlabel('time')
ylabel('Amplitude')
subplot(3,1,3)
plot(tp,FM)
xlim([0+k 10+k])
xlabel('time')
ylabel('Amplitude')
title('FM transmitted signal')
k = k+1.33;
pause(delay) %delay
end