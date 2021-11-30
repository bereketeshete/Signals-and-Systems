%% @author, Bereket Kebede
% EECE 3207, UofM 2021
% Bonus Excersice

%% x(t) - audio signal 
% Use "Run and Advance" in Editor Menu, for step by step demo 

close; clear ; clc; clear sound;

% Generate audio
f0 = 100;                                       % Audio signal frequency, 100HZ
Fs = 10*f0;                                     % Sampling Frequency, 1KHZ
t = 0:1/Fs:1; 
%t  = linspace(0, 1, Fs);                       
w = 2*pi*f0;                                  % 100 HZ tone
x = cos(w*t);                                 % Create Tone
sound(x, Fs)                                

subplot(2,2,1);
plot(t,x)
title('Audio Signal')
xlim([0 0.1])

%% e(t) - noise signal, eg. 60hz noise, e(t) = 5*sin(120*pi*t) -- 60 Hz
% powerline interference. Powerline - a cable carrying electrical power, 
% especially one supported by pylons or poles.

% Generate noise
f0_2 = 60;
Fs_2 = 10*f0;                                     % Sampling Frequency, 600 HZ
t_2 = 0:1/Fs_2:1;                        
w_2 = 2*pi*f0_2;                                  %  60 Hz Tone
e = 5*sin(w_2*t_2);                               % Create Tone
sound(e, Fs_2)      

subplot(2,2,2);
plot(t_2,e)
title('Noise Signal')
xlim([0 0.1])

%% g(t) = x(t) + e(t), mixing audio signal with noise

g = x + e;

sound(g,Fs)

subplot(2,2,3);
plot(t,g)
title('Generated Signal')
xlim([0 0.1])

sgtitle('Real Time-Analysis') 
%% Spectral plot of the Signals


X = abs(fftshift(fft(x))); 
ff = Fs*(-0.5:1/length(t):0.5-1/length(t)); 
figure;
subplot(2,2,1)
plot(ff,X);
xlim([-120 120])
xlabel('Frequency (in hertz)');
title('Audio Signal Spectral');


X_e = abs(fftshift(fft(e))); 
ff_2 = Fs_2*(-0.5:1/length(t):0.5-1/length(t)); 
subplot(2,2,2)
plot(ff_2,X_e);
xlim([-120 120])
xlabel('Frequency (in hertz)');
title('Error Signal Spectral');

X_g = abs(fftshift(fft(g))); 
ff_3 = Fs_2*(-0.5:1/length(t):0.5-1/length(t)); 
subplot(2,2,3)
plot(ff_3,X_g);
xlim([-120 120])
xlabel('Frequency (in hertz)');
title('Mixed Signal Spectral');

sgtitle('Signal Spectral') 

%% Applying Notch Filter

% To do Task



