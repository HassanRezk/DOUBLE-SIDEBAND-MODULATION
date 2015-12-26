SC_time = Fs*ifft(M_SC);
plot(abs(SC_time))
legend('SC_time');
xlabel('Time(Seconds)');
ylabel('Ampliture(volt)');
SC_received = abs(hilbert(SC_time));
sound(abs(SC_received))
figure
plot(abs(SC_received))
legend('Received Signal SC');
xlabel('Time(Seconds)');
ylabel('Ampliture(volt)');

TC_time = Fs*ifft(M_TC);
figure
plot(abs(TC_time))
legend('TC_time');
xlabel('Time(Seconds)');
ylabel('Ampliture(volt)');
TC_received = abs(hilbert(TC_time));
sound(abs(TC_received))
figure
plot(abs(TC_received))
legend('Received Signal TC');
xlabel('Time(Seconds)');
ylabel('Ampliture(volt)');