#!perl -w
use strict;
use Test::More tests => 1;

BEGIN { *CORE::GLOBAL::system = sub { print "calling system" } };
system 'ls';
