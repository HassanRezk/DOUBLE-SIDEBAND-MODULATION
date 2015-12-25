clc;
%fs = 3fc
%audio signal sampling frequency must be changed
%Dc bias = 2*max of the message
%y = modulate(x,fc,fs,'amdsb-tc',opt)/
Fc = 100000;
Fs = 3*Fc;

WaveFormOfFilteredSignal = resample(WaveFormOfFilteredSignal, Fs, fs);

t = (0:1/Fs:((size(WaveFormOfFilteredSignal, 1)-1)/Fs))';
t = t(:, ones(1, size(WaveFormOfFilteredSignal, 2)));

vc = 2*max(real(WaveFormOfFilteredSignal));

carrier = cos(2*pi*Fc*t);
M_SC = carrier.*WaveFormOfFilteredSignal;
M_SC = 1/Fs*(fftshift(fft(M_SC)));
F = linspace(-Fs/2, Fs/2, length(WaveFormOfFilteredSignal));
stem(F, abs(M_SC))

figure;
M_TC = (vc + WaveFormOfFilteredSignal).*carrier;
M_TC = 1/Fs*(fftshift(fft(M_TC)));
stem(F, abs(M_TC))

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