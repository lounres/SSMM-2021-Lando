numeric u,pad;
u:=12.5mm/1.5;
pad:=0.3;

path p;
p:=fullcircle scaled 2u;

pair q[],qq[];

numeric times[];
times0=0.8;
times1=2.5;
times2=2.9;
times3=5.0;
times4=5.4;
times5=7.3;

beginfig(1);

draw p withpen pencircle;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(2);

draw p withpen pencircle;

draw (point times0 of p)--(point times3 of p)withpen pencircle;

for i:=0 step 3 until 3:
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point times[i] of p);
endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(30);

draw p withpen pencircle;

draw (point times5 of p)--(point times3 of p)withpen pencircle;

q1=(point .5times3+.5times5 of p);
q2=(point .5times1+.5times0 of p);
q3=((length(q2--((q2--q1)cutafter((point times5 of p)--(point times3 of p))))+.6u)*unitvector(q2-q1)+q1);

draw q1--q3 withpen pencircle;
draw .5[q2,q3]--q3 dashed evenly withpen pencircle;

draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point times3 of p);

draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point times5 of p);

draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point .5times3+.5times5 of p);

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(31);

draw p withpen pencircle;

%draw (point times5 of p)--(point times3 of p)withpen pencircle;

q1=(point .5times3+.5times5 of p);
q2=(point .5times1+.5times0 of p);
q3=((length(q2--((q2--q1)cutafter((point times5 of p)--(point times3 of p))))+.6u)*unitvector(q2-q1)+q1);

draw q1--q3 withpen pencircle;
draw .5[q2,q3]--q3 dashed evenly withpen pencircle;

%draw image(
%fill fullcircle scaled 4;
%unfill fullcircle scaled 2;
%)shifted (point times3 of p);

%draw image(
%fill fullcircle scaled 4;
%unfill fullcircle scaled 2;
%)shifted (point times5 of p);

draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point .5times3+.5times5 of p);

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(40);

draw p withpen pencircle;

for i:=0upto9:qq[i]=u*(cosd(36i),sind(36i));endfor;

draw qq0--qq3 withpen pencircle;
draw qq1--qq5 withpen pencircle;
draw qq2--qq4 withpen pencircle;
draw qq6--qq8 withpen pencircle;
draw qq7--qq9 withpen pencircle;

draw (-10unitvector(.5(qq0+qq9)-.5(qq5+qq6))+.5(qq5+qq6))--(10unitvector(.5(qq0+qq9)-.5(qq5+qq6))+.5(qq0+qq9))dashed evenly withpen pencircle withcolor.5white;

for i:=0upto9:draw image(fill fullcircle scaled 4;unfill fullcircle scaled 2)shifted(qq[i]);endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(41);

draw p withpen pencircle;

for i:=0upto9:qq[i]=u*(cosd(36i),sind(36i));endfor;

draw qq0--qq3 withpen pencircle;
draw qq1--qq5 withpen pencircle;
draw qq2--qq4 withpen pencircle;
%draw qq6--qq8 withpen pencircle;
%draw qq7--qq9 withpen pencircle;

draw (-10unitvector(.5(qq0+qq9)-.5(qq5+qq6))+.5(qq5+qq6))--(10unitvector(.5(qq0+qq9)-.5(qq5+qq6))+.5(qq0+qq9))dashed evenly withpen pencircle withcolor.5white;

for i:=0upto5:draw image(fill fullcircle scaled 4;unfill fullcircle scaled 2)shifted(qq[i]);endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(42);

draw p withpen pencircle;

for i:=0upto9:qq[i]=u*(cosd(36i),sind(36i));endfor;

%draw qq0--qq3 withpen pencircle;
%draw qq1--qq5 withpen pencircle;
%draw qq2--qq4 withpen pencircle;
draw qq6--qq8 withpen pencircle;
draw qq7--qq9 withpen pencircle;

draw (-10unitvector(.5(qq0+qq9)-.5(qq5+qq6))+.5(qq5+qq6))--(10unitvector(.5(qq0+qq9)-.5(qq5+qq6))+.5(qq0+qq9))dashed evenly withpen pencircle withcolor.5white;

for i:=6upto9:draw image(fill fullcircle scaled 4;unfill fullcircle scaled 2)shifted(qq[i]);endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(20);

draw p withpen pencircle scaled.33 withcolor.5white;

draw (point times0 of p)--(point times2 of p)withpen pencircle;
draw (point times5 of p)--(point times3 of p)withpen pencircle;
draw (point times1 of p)--(point times4 of p)withpen pencircle;

draw subpath(times0-pad,times0+pad)of p withpen pencircle;
draw subpath(times1-pad,times2+pad)of p withpen pencircle;
draw subpath(times3-pad,times4+pad)of p withpen pencircle;
draw subpath(times5-pad,times5+pad)of p withpen pencircle;

for i:=0 step 1 until 5:
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point times[i] of p);
endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(21);

draw p withpen pencircle scaled.33 withcolor.5white;

draw (point times0 of p)--(point times1 of p)withpen pencircle;
draw (point times5 of p)--(point times3 of p)withpen pencircle;
draw (point times2 of p)--(point times4 of p)withpen pencircle;

draw subpath(times0-pad,times0+pad)of p withpen pencircle;
draw subpath(times1-pad,times2+pad)of p withpen pencircle;
draw subpath(times3-pad,times4+pad)of p withpen pencircle;
draw subpath(times5-pad,times5+pad)of p withpen pencircle;

for i:=0 step 1 until 5:
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point times[i] of p);
endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(22);

draw p withpen pencircle scaled.33 withcolor.5white;

draw (point times0 of p)--(point times2 of p)withpen pencircle;
draw (point times5 of p)--(point times4 of p)withpen pencircle;
draw (point times1 of p)--(point times3 of p)withpen pencircle;

draw subpath(times0-pad,times0+pad)of p withpen pencircle;
draw subpath(times1-pad,times2+pad)of p withpen pencircle;
draw subpath(times3-pad,times4+pad)of p withpen pencircle;
draw subpath(times5-pad,times5+pad)of p withpen pencircle;

for i:=0 step 1 until 5:
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point times[i] of p);
endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(23);

draw p withpen pencircle scaled.33 withcolor.5white;

draw (point times0 of p)--(point times1 of p)withpen pencircle;
draw (point times5 of p)--(point times4 of p)withpen pencircle;
draw (point times2 of p)--(point times3 of p)withpen pencircle;

draw subpath(times0-pad,times0+pad)of p withpen pencircle;
draw subpath(times1-pad,times2+pad)of p withpen pencircle;
draw subpath(times3-pad,times4+pad)of p withpen pencircle;
draw subpath(times5-pad,times5+pad)of p withpen pencircle;

for i:=0 step 1 until 5:
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point times[i] of p);
endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(24);

draw p withpen pencircle scaled.33 withcolor.5white;

draw (point times0 of p)--(point times5 of p)withpen pencircle;
draw (point .5times2+.5times1 of p)--(point .5times3+.5times4 of p)withpen pencircle;

draw subpath(times0-pad,times0+pad)of p withpen pencircle;
draw subpath(times1-pad,times2+pad)of p withpen pencircle;
draw subpath(times3-pad,times4+pad)of p withpen pencircle;
draw subpath(times5-pad,times5+pad)of p withpen pencircle;

for i:=0 step 1 until 5:
if ((i=1)or(i=3)):
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point .5times[i]+.5times[i+1] of p);
else:
if ((i=0)or(i=5)):
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point times[i] of p);
fi
fi
endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(25);

draw p withpen pencircle scaled.33 withcolor.5white;

draw (point times0 of p)--(point .5times3+.5times4 of p)withpen pencircle;
draw (point .5times2+.5times1 of p)--(point times5 of p)withpen pencircle;

draw subpath(times0-pad,times0+pad)of p withpen pencircle;
draw subpath(times1-pad,times2+pad)of p withpen pencircle;
draw subpath(times3-pad,times4+pad)of p withpen pencircle;
draw subpath(times5-pad,times5+pad)of p withpen pencircle;

for i:=0 step 1 until 5:
if ((i=1)or(i=3)):
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point .5times[i]+.5times[i+1] of p);
else:
if ((i=0)or(i=5)):
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point times[i] of p);
fi
fi
endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(10);

draw p withpen pencircle scaled.33 withcolor.5white;

draw (point times5 of p)--(point times2 of p)withpen pencircle;
draw (point times0 of p)--(point times3 of p)withpen pencircle;
draw (point times1 of p)--(point times4 of p)withpen pencircle;

draw subpath(times0-pad,times0+pad)of p withpen pencircle;
draw subpath(times1-pad,times2+pad)of p withpen pencircle;
draw subpath(times3-pad,times4+pad)of p withpen pencircle;
draw subpath(times5-pad,times5+pad)of p withpen pencircle;

for i:=0 step 1 until 5:
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point times[i] of p);
endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(11);

draw p withpen pencircle scaled.33 withcolor.5white;

draw (point times5 of p)--(point times1 of p)withpen pencircle;
draw (point times0 of p)--(point times3 of p)withpen pencircle;
draw (point times2 of p)--(point times4 of p)withpen pencircle;

draw subpath(times0-pad,times0+pad)of p withpen pencircle;
draw subpath(times1-pad,times2+pad)of p withpen pencircle;
draw subpath(times3-pad,times4+pad)of p withpen pencircle;
draw subpath(times5-pad,times5+pad)of p withpen pencircle;

for i:=0 step 1 until 5:
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point times[i] of p);
endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(12);

draw p withpen pencircle scaled.33 withcolor.5white;

draw (point times5 of p)--(point times2 of p)withpen pencircle;
draw (point times0 of p)--(point times4 of p)withpen pencircle;
draw (point times1 of p)--(point times3 of p)withpen pencircle;

draw subpath(times0-pad,times0+pad)of p withpen pencircle;
draw subpath(times1-pad,times2+pad)of p withpen pencircle;
draw subpath(times3-pad,times4+pad)of p withpen pencircle;
draw subpath(times5-pad,times5+pad)of p withpen pencircle;

for i:=0 step 1 until 5:
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point times[i] of p);
endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(13);

draw p withpen pencircle scaled.33 withcolor.5white;

draw (point times5 of p)--(point times1 of p)withpen pencircle;
draw (point times0 of p)--(point times4 of p)withpen pencircle;
draw (point times2 of p)--(point times3 of p)withpen pencircle;

draw subpath(times0-pad,times0+pad)of p withpen pencircle;
draw subpath(times1-pad,times2+pad)of p withpen pencircle;
draw subpath(times3-pad,times4+pad)of p withpen pencircle;
draw subpath(times5-pad,times5+pad)of p withpen pencircle;

for i:=0 step 1 until 5:
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point times[i] of p);
endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(14);

draw p withpen pencircle scaled.33 withcolor.5white;

draw (point times0 of p)--(point times5 of p)withpen pencircle;
draw (point .5times2+.5times1 of p)--(point .5times3+.5times4 of p)withpen pencircle;

draw subpath(times0-pad,times0+pad)of p withpen pencircle;
draw subpath(times1-pad,times2+pad)of p withpen pencircle;
draw subpath(times3-pad,times4+pad)of p withpen pencircle;
draw subpath(times5-pad,times5+pad)of p withpen pencircle;

for i:=0 step 1 until 5:
if ((i=1)or(i=3)):
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point .5times[i]+.5times[i+1] of p);
else:
if ((i=0)or(i=5)):
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point times[i] of p);
fi
fi
endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

beginfig(15);

draw p withpen pencircle scaled.33 withcolor.5white;

draw (point times5 of p)--(point .5times3+.5times4 of p)withpen pencircle;
draw (point .5times2+.5times1 of p)--(point times0 of p)withpen pencircle;

draw subpath(times0-pad,times0+pad)of p withpen pencircle;
draw subpath(times1-pad,times2+pad)of p withpen pencircle;
draw subpath(times3-pad,times4+pad)of p withpen pencircle;
draw subpath(times5-pad,times5+pad)of p withpen pencircle;

for i:=0 step 1 until 5:
if ((i=1)or(i=3)):
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point .5times[i]+.5times[i+1] of p);
else:
if ((i=0)or(i=5)):
draw image(
fill fullcircle scaled 4;
unfill fullcircle scaled 2;
)shifted (point times[i] of p);
fi
fi
endfor;

currentpicture:=currentpicture scaled 1.5;

endfig;

bye
