% show bound box
prologues := 2;
beginfig(1);
  % edge
  e=5;
  a=40;b=28;
  % misc points
  m=0.3a;n=0.5b;t=2;
  % center
  z0=(e+n,e+0.4a);r=7;
  % quad
  z1=(e,e);z2=(e,a+e);z3=(b+e,a+e);z4=(b+e,e);
  % and
  z5=(e+t,e+m);z6=(e+n,e+0.8a);z7=(e+b-t,e+m);
  % pi
  z8=z0+(0,r);z9=z0+(r,0);
  z10=z0-(0,r);z11=z0-(r,0);
  % bot
  z12=(z1+z4)/2;
  % draw
  pickup pencircle scaled 3;
  draw z1--z2--z3--z4--cycle;
  draw z5--z6--z7;
  draw z8..z9..z10..z11..cycle;
  draw z0--z12;
endfig;
end
