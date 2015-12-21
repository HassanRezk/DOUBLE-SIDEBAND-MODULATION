%filtering the signal ==> 'removing all frequencies > 4KHZ'
filteredSpectrum = [];
lim = length(Signalspectrum);
for i = 1:lim
   if(i >= lim/2-4000 && i <= lim/2 +4000)
     filteredSpectrum = [filteredSpectrum Signalspectrum(i)];
   end
end
figure;
n2 = -4000:4000;
stem(n2, abs(filteredSpectrum));%plot the filtered signal
legend('Spectrum of the filtered Signal');
xlabel('Frequency(HZ)');
ylabel('Ampliture(volt)');


%other solution [not sure]
filteredSpectrum = idealfilter(timeseries(Signalspectrum), [0,4000], 'pass');
figure;
plot(filteredSpectrum);%plot the filtered signal
legend('Spectrum of the filtered Signal');
xlabel('Frequency(HZ)');
ylabel('Ampliture(volt)');