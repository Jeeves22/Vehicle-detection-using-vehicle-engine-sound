clc
clear all
 
%% Reading the audio signals and storing them into different variables 
 
[yalto]=audioread('C:\Users\User\Desktop\Mishu\Sounds\alto.mp3');
[yalto800]=audioread('C:\Users\User\Desktop\Mishu\Sounds\alto 800.mp3');
[yford]=audioread('C:\Users\User\Desktop\Mishu\Sounds\ford.mp3');
[ycor]=audioread('C:\Users\User\Desktop\Mishu\Sounds\Corola eltis .mp3');
[yswift]=audioread('C:\Users\User\Desktop\Mishu\Sounds\swift.mp3');
[ytoyo]=audioread('C:\Users\User\Desktop\Mishu\Sounds\toyoto.mp3');
[ytita]=audioread('C:\Users\User\Desktop\Mishu\Sounds\Titanium 4.mp3');
 
%% Plotting the graphs of the input audio signals 
[y,Fs]=audioread('C:\Users\User\Desktop\Mishu\Sounds\alto.wav');
info=audioinfo('C:\Users\User\Desktop\Mishu\Sounds\alto.wav');
t=0:seconds(1/Fs):seconds(info.Duration);
t=t(1:end-1);
subplot(7,1,1)
plot(t,y);
title('alto');
[y1,Fs]=audioread('C:\Users\User\Desktop\Mishu\Sounds\alto-800.wav');
info=audioinfo('C:\Users\User\Desktop\Mishu\Sounds\alto-800.wav');
t=0:seconds(1/Fs):seconds(info.Duration);
t=t(1:end-1);
subplot(7,1,2)
plot(t,y1);
title('alto 800');
[y2,Fs]=audioread('C:\Users\User\Desktop\Mishu\Sounds\ford.wav');
info=audioinfo('C:\Users\User\Desktop\Mishu\Sounds\ford.wav');
t=0:seconds(1/Fs):seconds(info.Duration);
t=t(1:end-1);
subplot(7,1,3)
plot(t,y2);
title('ford');
[y3,Fs]=audioread('C:\Users\User\Desktop\Mishu\Sounds\Corola-eltis-.wav');
info=audioinfo('C:\Users\User\Desktop\Mishu\Sounds\Corola-eltis-.wav');
t=0:seconds(1/Fs):seconds(info.Duration);
t=t(1:end-1);
subplot(7,1,4)
plot(t,y3);
title('Corola eltis');
[y4,Fs]=audioread('C:\Users\User\Desktop\Mishu\Sounds\swift.wav');
info=audioinfo('C:\Users\User\Desktop\Mishu\Sounds\swift.wav');
t=0:seconds(1/Fs):seconds(info.Duration);
t=t(1:end-1);
subplot(7,1,5)
plot(t,y4);
title('swift');
[y5,Fs]=audioread('C:\Users\User\Desktop\Mishu\Sounds\toyoto.wav');
info=audioinfo('C:\Users\User\Desktop\Mishu\Sounds\toyoto.wav');
t=0:seconds(1/Fs):seconds(info.Duration);
t=t(1:end-1);
subplot(7,1,6)
plot(t,y5);
title('toyoto');
[y6,Fs]=audioread('C:\Users\User\Desktop\Mishu\Sounds\Titanium-4.wav');
info=audioinfo('C:\Users\User\Desktop\Mishu\Sounds\Titanium-4.wav');
t=0:seconds(1/Fs):seconds(info.Duration);
t=t(1:end-1);
subplot(7,1,7)
plot(t,y6);
title('Titanium 4');
 
 
%% calling the function named dataa by the variables assigned at the beginning of the program. 
 
y1=dataa(yalto);
y2=dataa(yalto800);
y3=dataa(yford);
y4=dataa(ycor);
y5=dataa(yswift);
y6=dataa(ytoyo);
y7=dataa(ytita);
 
 
 
 
%% calling the function carsound.
 
x=[y1';y2';y3';y4';y5';y6';y7'];
data=carsound(x);
 
 
%% calling the function cardetect.
 
x=[y1';y2';y3';y4';y5';y6';y7'];
%[w1,w2,b2,b3]=cardetect(x);