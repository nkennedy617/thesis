#!/usr/local/bin/perl
if (open(FILE, "+labuserRegmon3.LOG"))  {
   $line = <FILE>;
   $number = 0;
	open(OUT, ">denied3.txt");	
   while ($line ne "")   {
     print ($number);
     	if($line =~ /SUCCESS/ ) {
	   NULL;
        }
        else  {
	print OUT ($line);
        }
	$line = <FILE>;
 	$number ++;
   }
 close(FILE);
 close(OUT);
}
	
