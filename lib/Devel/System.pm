use strict;
package Devel::System;
our $VERSION = '0.01';
use Data::Dumper;

my $fh = \*STDERR;
my $dryrun;

*CORE::GLOBAL::system = sub {
    print $fh "invoking system with args:", Dumper \@_;
    return 0 if $dryrun;

    my $ret = CORE::system @_;
    print $fh "returned $ret\n";
    return $ret;
};


1;
