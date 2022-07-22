n=0:100
f1=0.87 
f2=0.47 

s=cos(2*pi*f*n)+cos(2*pi*f2*n) %orignal signal
d=rand(1,length(s)) % random noise

x=s+d %noise corrupted signal

M=input('enter the order of moving average filter:')

a=1 
b1=[n<=M]  %seting M point movig average filter
b1=b1/M     %seting M point movig average filter

H1=filter(b1,a,x) 

[y1,w1]=freqz(H1,128)

figure(1)
subplot 311
plot(n,H1)
xlabel('n')
ylabel('H')
title('moving filter of specified order')

subplot 312
plot((w1/pi),abs(y1))
xlabel('omega')
ylabel('megnetued of frequency responce')
 
subplot 313
plot((w1/pi),angle(y1))
xlabel('omega')
ylabel('phase of frequency responce')
