clc;
%12. Calculate the power efficiency for both types of modulation. Comment
for_suppressed_carrier = 1;%ps/ps
%for transmitted carrier
ps = real(sum(abs(M_SC_F).^2));
pc = real(vc.^2/2);

n = (ps/(pc + ps)) * 100
