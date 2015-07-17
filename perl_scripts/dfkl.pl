#!/usr/local/bin/perl
@hi=`ls /dev/dsk`;
foreach $line (@hi) {
$command = "df -kl /dev/dsk/"; 
#remove the end of line character
print $line;
chop $line;

#make the whole command to be something like
#df -kl /dev/dsk/c0todos1
$results_command = `$command . $line`; 
print $results_command;
#this value of is either a legitimate value or an error
#it needs to be saved in a datastructure/file
#Then grep on datastructure/file supressing all the errors

}
