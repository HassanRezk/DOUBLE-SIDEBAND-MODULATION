%filtered Signal in time domain
WaveFormOfFilteredSignal = fs*ifft(filteredSpectrum);
figure;
sound(abs(WaveFormOfFilteredSignal), fs);
plot(abs(WaveFormOfFilteredSignal));
legend('Wave form of the filtered Signal');
xlabel('Time(seconds)');
ylabel('Ampliture(volt)');