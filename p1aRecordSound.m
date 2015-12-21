clc;clear all;
[audioSignal, fs] = wavread('piano2.wav');%Read the audio file
sound(audioSignal);%listen to the audio signal
figure;
plot(audioSignal);%plot the waveform as x(t)
legend('Wave form of the recorded Signal');
xlabel('Time(seconds)');
ylabel('Ampliture(volt)');
Signalspectrum = fftshift(fft(audioSignal));%get the spectrum
figure;
n1 = linspace(-fs/2, fs/2, length(Signalspectrum));
stem(n1, abs(Signalspectrum));%plot the spectrum
legend('Spectrum of the recorded Signal');
xlabel('Frequency(HZ)');
ylabel('Ampliture(volt)');