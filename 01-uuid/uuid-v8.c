/*
####################################

 --- UUID-v8.C ---

This program creates a uuid-v8 from a set of 6 numbers.

To enter the 6 numbers, simply enter them in this order:

n1: 0 to 4294967295
n2: 0 to 65535
n3: 0 to 4095
n4: 0 to 16383
n5: 0 to 16777215
n6: 0 to 16777215

NOTE: Entering numbers outside the ranges listed above will
cause errors and a non valid uuid-v8.

----------------------------------------------------

To run uuid-v8:

$ gcc uuid-v8
$ ./a.out 1 2 3 4 5 6
00000001-0002-8003-8004-000005000006

More examples:

$ ./a.out 0 0 0 0 0 0
00000000-0000-8000-8000-000000000000

$ ./a.out 4294967295 65535 4095 16383 16777215 16777215
ffffffff-ffff-8fff-bfff-ffffffffffff

$ ./a.out 142857 7538 79 8631 471268 997128
00022e09-1d72-804f-a1b7-0730e40f3708

$ ./a.out 93271858 8964 185 5084 3340834 7310229
058f3732-2304-80b9-93dc-32fa226f8b95

$ ./a.out 4083092 8125 793 528 1965721 1778203
003e4d94-1fbd-8319-8210-1dfe991b221b

$ ./a.out 9334418 3027 1051 975 2753291 682197
008e6e92-0bd3-841b-83cf-2a030b0a68d5

$ ./a.out 412168285 10652 2064 1205 898235 972835
1891305d-299c-8810-84b5-0db4bb0ed823

$ ./a.out 895366192 27184 3177 4926 1075323 1091252
355e3430-6a30-8c69-933e-10687b10a6b4

####################################
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[])
{
  unsigned long n1, n2, n3, n4, n5, n6;
  char* end;

  n1=strtoul(argv[1], &end, 10);
  n2=strtoul(argv[2], &end, 10);
  n3=strtoul(argv[3], &end, 10);
  n4=strtoul(argv[4], &end, 10);
  n5=strtoul(argv[5], &end, 10);
  n6=strtoul(argv[6], &end, 10);

  n3=n3+32768;
  n4=n4+32768;

  printf("%08x-%04x-%04x-%04x-%06x%06x\n", n1, n2, n3, n4, n5, n6);

  return 0;
}

