*test1234
*lastcowboy
*another comment
&&1234567891011
*123456789abcdefghijklmnopqrstuvwxyzimmermandannytblah123456789101112131415161718192021222324252627281323
goptions cback=black colors=(white cyan magenta gold yellow);

data hat;
   do x=-5 to 5 by .25;
      do y=-5 to 5 by .25;
         z=sin(sqrt(x*x + y*y));
         output;
      end;
   end;
run;
title1 c=white f=swiss 'The Cowboy Hat';
title2 h=2 angle=90 ' ';

proc g3d data=hat;
   plot y*x=z / ctop=yellow ctext=white;
run; run;run;
