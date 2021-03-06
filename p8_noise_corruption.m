%For DSB-TC only, repeat steps 6-8 with SNR = 0, 10, and 20 dB. 
%Play back the sound file each time after detection. What conclusions do you make of that?

%if snr = 0 noisy signal = current modulated signal

%case 1: SNR = 10

TC_time = awgn(TC_time, 10);
figure
plot(abs(TC_time))
legend('TC_time 10db');
xlabel('Time(Seconds)');
ylabel('Ampliture(volt)');
TC_received = abs(hilbert(TC_time));
sound(abs(TC_received))
figure
plot(abs(TC_received))
legend('TC_received 10db');
xlabel('Time(Seconds)');
ylabel('Ampliture(volt)');
Error_TC = TC_time - TC_received;
figure
plot(abs(Error_TC))
legend('TC_Error 10db');
xlabel('Time(Seconds)');
ylabel('Ampliture(volt)');

%case 2: SNR = 20

TC_time = awgn(TC_time, 20);
figure
plot(abs(TC_time))
legend('TC_time 20db');
xlabel('Time(Seconds)');
ylabel('Ampliture(volt)');
TC_received = abs(hilbert(TC_time));
sound(abs(TC_received))
figure
plot(abs(TC_received))
legend('TC_received 20db');
xlabel('Time(Seconds)');
ylabel('Ampliture(volt)');
Error_TC = TC_time - TC_received;
figure
plot(abs(Error_TC))
legend('TC_Error 20db');
xlabel('Time(Seconds)');
ylabel('Ampliture(volt)');





