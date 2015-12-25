clc;
%fs = 3fc
%audio signal sampling frequency must be changed
%Dc bias = 2*max of the message
%y = modulate(x,fc,fs,'amdsb-tc',opt)/
Fc = 1*10^6;
Fs = 3*Fc;

F = linspace(-Fs, Fs, length(WaveFormOfFilteredSignal));
carrier = cos(2*pi*Fc*F);
carrier = carrier';
modulated = carrier.*WaveFormOfFilteredSignal;
M_SC_F = 1/Fs*(fftshift(fft(modulated)));
stem(F, abs(M_SC_F))


figure;
F = linspace(-Fs, Fs, length(WaveFormOfFilteredSignal));
carrier = cos(2*pi*Fc*F);
carrier = carrier';
modulated = carrier.*WaveFormOfFilteredSignal;
M_SC_F = 1/Fs*(fftshift(fft(modulated)));
vc = 2*max(WaveFormOfFilteredSignal);
Fcl = linspace(-Fs/2, Fs/2, length(WaveFormOfFilteredSignal));
newcarrier = vc*cos(2*pi*Fc*Fcl);
fourier_carrier = 1/Fs*(fftshift(fft(newcarrier)));
M_TC_F = M_SC_F + fourier_carrier';
stem(Fcl, abs(M_TC_F));


%stem(F, abs(M_SC_F))
%plot(F, modulated);


%M_SC_T = modulate(WaveFormOfFilteredSignal,Fc,Fs,'amdsb-sc');
%M_SC_F = 1/Fs*(fftshift(fft(M_SC_T)));
%F = linspace(-Fs/2 , Fs/2 , length(M_SC_F));
%stem(F,abs(M_SC_F))


%figure
%mx = max(audioSignal);
%vc = 2*mx;
%carrier = vc*cos(2*pi*Fc.*F);
%fourier_carrier = 1/Fs*(fftshift(fft(carrier)));
%stem(F, abs(fourier_carrier))

%M_TC_T = ammod(abs(WaveFormOfFilteredSignal), Fc, Fs, 0, vc);
%M_TC_F = 1/Fs*(fftshift(fft(M_TC_T)));
%stem(F,abs(M_TC_F))