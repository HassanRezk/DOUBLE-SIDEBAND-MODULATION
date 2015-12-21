clc;
%filtering the signal ==> 'removing all frequencies > 4KHZ'
filter = ones(1, length(Signalspectrum)).*(n1 >= -4000 & n1 <= 4000);
filteredSpectrum = Signalspectrum.*filter';
figure;
stem(n1, abs(filteredSpectrum));%plot the filtered signal
legend('Spectrum of the filtered Signal');
xlabel('Frequency(HZ)');
ylabel('Ampliture(volt)');


%other solution [not sure]
%filteredSpectrum = idealfilter(timeseries(Signalspectrum), [0,4000], 'pass');
%figure;
%plot(filteredSpectrum);%plot the filtered signal
%legend('Spectrum of the filtered Signal');
%xlabel('Frequency(HZ)');
%ylabel('Ampliture(volt)');