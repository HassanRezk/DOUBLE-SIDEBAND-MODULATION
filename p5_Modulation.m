%fs = 3fc
%audio signal sampling frequency must be changed
%Dc bias = 2*max of the message
%y = modulate(x,fc,fs,'amdsb-tc',opt)/

signal = 1/fs.*(fftshift(fft(WaveFormOfFilteredSignal)));
f = linspace(-fs/2 , fs/2 , length(signal));

fmax = max(f);
Fc = 1*10^6;
Fs = 3*Fc;
DC_bias = 2*max(abs(fftshift(signal)));

%y = modulate(fftshift(signal),Fc,Fs,'amdsb-sc');
%stem (f,abs(fftshift(signal)))

%resampledSignal = resample(signal,Fs,fs);
%f = linspace(-Fs/2 , Fs/2 , length(resampledSignal));
%stem(f,abs(resampledSignal))
figure;

p1 =1/2.* sigshift(signal,f,-Fc);
p2 =1/2.* sigshift(signal,f,Fc);

DSB_SC = [p1 ; p2];
x = linspace(-Fs , Fs , length(DSB_SC));

stem(x,abs(DSB_SC))

%M_SC = modulate(audio,Fc,Fs,'amdsb-sc');
%stem(M_SC)
%M_TC = modulate(audio,Fc,Fs,'amdsb-tc');
%figure;
%stem(M_TC)