#!/usr/bin/perl -w
use strict;
use lib 't/lib';

use Test::More tests => 4;

# ------------------------------------------------------------------------

BEGIN {
    use_ok 'Games::BonDigi';
}

my $obj = Games::BonDigi->new();
isa_ok( $obj => 'Games::BonDigi', 'Class new' );

my $iterator = $obj->sequence();
ok(ref $iterator eq 'CODE', 'Games::BonDigi->sequence() generates an iterator');

my $word = $iterator->();
is($word, 'bon', 'first word of sequence is "bon"');

