#!/usr/local/bin/perl
`rup > /home/nbeatty/perl_scripts/rupdata`;
if (open(FILE, "+rupdata"))  {
   $line = <FILE>;
	open(OUT, ">filteredrupdata");	
	print OUT "These machines were rebooted, according to their rup data\n\n";
   while ($line ne "")   {
     	if($line =~ /stormy|spock|ewok/)  {
	print "I got a stormy or a spock or an ewok!\n";
        }
	else {
           if ($line =~ /day/) {
	       print "I been up for ages and ages!!!\n";
 	       print "$line\n";
           }
           else  {
#	       print OUT "Ooops!  I haven't been up a whole day!!!\n";
 	       print OUT "$line\n";
            }
	#print OUT ($line);
	}
	$line = <FILE>;
   }
   #close files
 close(FILE);
 close(OUT);

 #mail to me
 `/usr/ucb/mail -s "Oops!  I Might Have Been Rebooted Report" nbeatty < /home/nbeatty/perl_scripts/filteredrupdata` ;
 #clean up
 `rm -f filteredrupdata`;
 #`rm -f rupdata`;
 
}
	
