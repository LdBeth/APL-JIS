% show bound box
prologues := 2;
beginfig(1);
  e=5;a=40;b=28;m=0.3a;n=0.5b;
  z1=(e,e);z2=(e,a+e);z3=(b+e,a+e);z4=(b+e,e);
  z5=(e,e+m);z6=(e+n,e+a);z7=(e+b,e+m);
  pickup pencircle scaled 3;
  draw z1--z2--z3--z4--z1;
  draw z5--z6--z7;
endfig;
end
