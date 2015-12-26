Error_sc = SC_time - SC_received;
figure
plot(abs(Error_sc))
legend('SC_Error');
xlabel('Time(Seconds)');
ylabel('Ampliture(volt)');

Error_TC = TC_time - TC_received;
figure
plot(abs(Error_TC))
legend('TC_Error');
xlabel('Time(Seconds)');
ylabel('Ampliture(volt)');
