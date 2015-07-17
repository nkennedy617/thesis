#!/usr/local/bin/perl
#`rup > /home/nbeatty/perl_scripts/rupdata`;
if (open(FILE, "+rupdata"))  {
   $line = <FILE>;
	open(OUT, ">filteredrupdata");	
	print OUT "These machines are carrying high load averages:\n\n";
   while ($line ne "")   {
     	if($line =~ /stormy|spock|ewok/)  {
#	print "I got a stormy or a spock or an ewok!\n";
        }
	else {
           if ($line =~ /average/) {
               @host = split /\baverage\b/, $line;
	       foreach $part (@host)  {
                   if ($part =~ /up/)  {
		   #print "$part\n";
                   }
		   else  {
		     $_ = $part;
		     s/^://;
	#	     print "$_\n";
		     @new = split /,/, $_;
			if ($new[0] < 2.0)  {
                        }
			else  {
			  if (open(MP, "+/usr/local/share/adm/Ws.index/wsname.mp"))  {
   			   $hostline = <MP>;
               			@mp_host = split / /, $hostline;
	       			foreach $section (@mp_host)  {
					
			 		print "$section\n"; 
				} 
			    close MP; 
			   }
                          print "I am greater than two -- look at me!\n";
 	       		  print "$line\n";
			  print OUT "$line\n";
                        }
                   }
	       }
           }
           else  {
	       #print "Ooops!  I have a junk line!!!\n";
 	       #print "$line\n";
            }
	#print OUT ($line);
	}
	$line = <FILE>;
   }
   #close files
 close(FILE);
 close(OUT);

 #mail to me
 `/usr/ucb/mail -s "I Might Be Overloaded Report" nbeatty < /home/nbeatty/perl_scripts/filteredrupdata` ;
 #clean up
 `rm -f filteredrupdata`;
# `rm -f rupdata`;
 
}
	
