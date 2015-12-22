%fs = 3fc
%audio signal sampling frequency must be changed
%Dc bias = 2*max of the message
%y = modulate(x,fc,fs,'amdsb-tc',opt)/
Fc = 1*10^6;
Fs = 3*Fc;
DC_bias = 2*max(abs(fftshift(signal)));

M_SC_T = modulate(audioSignal,Fc,Fs,'amdsb-sc');
M_SC_F = 1/Fs*(fftshift(fft(M_SC_T)));
F = linspace(-Fs/2 , Fs/2 , length(M_SC_F));
stem(F,abs(M_SC_F))

figure
M_TC_T = modulate(audioSignal,Fc,Fs,'amdsb-tc');
M_TC_F = 1/Fs*(fftshift(fft(M_TC_T)));
stem(F,abs(M_TC_F))