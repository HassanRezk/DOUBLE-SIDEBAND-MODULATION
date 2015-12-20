%filtered Signal in time domain
WaveFormOfFilteredSignal = ifft(filteredSpectrum);
figure;
plot(WaveFormOfFilteredSignal);
legend('Wave form of the filtered Signal');
xlabel('Time(seconds)');
ylabel('Ampliture(volt)');