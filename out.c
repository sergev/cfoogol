#include	<stdio.h>
int	main()	{
int
n=0
,
div=0
,
sub=0
,
test=0
,
testcopy=0
,
found=0
,
max=0
;
test	=
2
;
max	=
10
;
while(
n
!=
max
)
{
div	=
test
-
1
;
found	=
0
;
while(
div
-
1
)
{
testcopy	=
test
;
sub	=
0
;
while(
testcopy
)
{
sub	=
sub
+
1
;
if	(
sub
==
div
)
sub	=
0
;
testcopy	=
testcopy
-
1
;
}
if	(
sub
==
0
)
found	=
1
;
div	=
div
-
1
;
}
if	(
found
==
0
)
{
n	=
n
+
1
;
printf("%d",
test
);
printf("%s",	" is prime number ");
printf("%d",
n
);
printf("\n");
}
test	=
test
+
1
;
}
}
