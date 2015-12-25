
SC_time = Fs*ifft(M_SC);
plot(abs(SC_time))
SC_received = abs(hilbert(SC_time));
sound(abs(SC_received))
figure
plot(abs(SC_received))

TC_time = Fs*ifft(M_TC);
figure
plot(abs(TC_time))
TC_received = abs(hilbert(TC_time));
sound(abs(TC_received))
figure
plot(abs(TC_received))