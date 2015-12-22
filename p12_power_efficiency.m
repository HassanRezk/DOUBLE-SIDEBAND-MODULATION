clc;
%12. Calculate the power efficiency for both types of modulation. Comment
for_suppressed_carrier = 1;
%for transmitted carrier
ps = sum(abs(M_SC_F).^2);
pc = vc.^2/2;

n = ps/(pc + ps)