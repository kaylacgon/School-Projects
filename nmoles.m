function n = nmoles(m, mw);

[m1, mw1] = meshgrid(m, mw);
n = m1 ./ mw1;


end