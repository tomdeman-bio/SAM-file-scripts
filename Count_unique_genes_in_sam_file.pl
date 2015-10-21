#!/usr/bin/perl

use strict; 

my $sam_input = shift;
open FILE, "$sam_input";

my %count_gene;

while (<FILE>) {
        chomp;
        my @split_list = split('\t', $_);
		$count_gene{$split_list[2]} = 1;
}
close FILE;

my @genes = keys %count_gene;
foreach my $el (@genes) {
	print "$el\t";
}
my $len = scalar @genes;
print "Genes: $len\n";