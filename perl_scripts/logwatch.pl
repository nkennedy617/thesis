#!/usr/local/bin/perl
if (open(FILE, "+/local/nbeatty/sec.txt"))  {
   $line = <FILE>;
	open(OUT, ">/local/nbeatty/filtersecdata");	
	print "These log entries list failures:\n\n";
	print $line;
   while ($line ne "")   {
    	@logentry = split /","/, $line;
	foreach $entry (@logentry) {
		print $entry;
		print "\n";
	}
	print $logentry[4];
	@logitems=split /'"'/,$logentry[4];
	
	foreach $item (@logitems) {
		print $items;
		print "\n";
	}
	$line = <FILE>;
   }
}	
