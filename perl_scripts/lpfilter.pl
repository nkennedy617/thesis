#!/usr/local/bin/perl
@hi=`ls`;
foreach $line (@hi) {
$command = "lpfilter -f "; 
chop $line;
$tmpline =$line;
chop $tmpline;
chop $tmpline;
chop $tmpline;
# need to split on the period
$name = split/\./,$line;
print $line;
#print "   ";
print $tmpline;
print "\n";
$command = $command . $tmpline .  " -F " . $line;
$command1 =`$command`;
print $command1;

}
