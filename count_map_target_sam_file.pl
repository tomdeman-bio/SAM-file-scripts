#!/usr/bin/perl

use strict; 

my $sam = $ARGV[0];
my @target_counter;
my %count; 

open FILE, "$sam";

while (<FILE>) {
        chomp;
	if (!(/^@/)) {
		my @split_list = split(' ', $_);
		push (@target_counter, $split_list[2]);
	}
}
close FILE;

foreach my $element (@target_counter) {
	$count{$element}++;
}
	
foreach my $key (sort hashValueDescendingNum (keys(%count))) {
	print "$count{$key}\t$key\n";
}
undef %count;


sub hashValueDescendingNum {
	$count{$b} <=> $count{$a};
}


