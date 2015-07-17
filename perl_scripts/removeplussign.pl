#!/usr/local/bin/perl
if (open(FILE, "+rc4.h"))  {
   $line = <FILE>;
   $number = 0;
	open(OUT, ">md2");	
   while ($line ne "")   {
     print ($number);
     	if($line =~ /^\+/)  {
	   $_ = $line; 
	   s/^\W.//;
	   print "TA DA\n";
	   print ($_);
	   print ("\n");
	   $line = $_;
           print ($line);
	   print ("\n");
        }
	print OUT ($line);
	$line = <FILE>;
 	$number ++;
   }
 close(FILE);
 close(OUT);
}
	
