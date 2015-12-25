clc;
%fs = 3fc
%audio signal sampling frequency must be changed
%Dc bias = 2*max of the message
%y = modulate(x,fc,fs,'amdsb-tc',opt)/
Fc = 1*10^6;
Fs = 3*Fc;

M_SC_T = modulate(WaveFormOfFilteredSignal,Fc,Fs,'amdsb-sc');
M_SC_F = 1/Fs*(fftshift(fft(M_SC_T)));
F = linspace(-Fs/2 , Fs/2 , length(M_SC_F));
stem(F,abs(M_SC_F))


figure
mx = max(audioSignal);
vc = 2*mx;
M_TC_T = ammod(abs(WaveFormOfFilteredSignal), Fc, Fs, 0, vc);
M_TC_F = 1/Fs*(fftshift(fft(M_TC_T)));
stem(F,abs(M_TC_F))