gv = linspace(-30,30,50); % adjust for appropriate domain
[xx yy zz]=meshgrid(gv, gv, gv);
F = 1./(xx.^2 + 9.*yy.^2/4 + zz.^2 - 1) - xx.^2.*zz.^3 - 9.*yy.^2.*zz.^3./200;

fig = figure
isosurface(xx, yy, zz, F, 0)

resp = fig2plotly(fig,'strip',false)
plotly_url = resp.url