%4 get mean square error (MSE) & play the sound back
MSE = sqrt((WaveFormOfFilteredSignal.^2)-(audioSignal.^2));
plot(abs(MSE))
sound(abs(audioSignal),fs);
