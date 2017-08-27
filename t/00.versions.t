#/usr/bin/env perl

use strict;
use warnings;

# I tried 'require'-ing modules but that did not work.

use KollosX::Languages::Perl::PackUnpack; # For the version #.

use Test::More;

use Config;
use Const::Exporter;
use Marpa::R3;
use Moo;
use strict;
use Tree;
use Try::Tiny;
use Types::Standard;
use utf8;
use warnings;

# ----------------------

pass('All external modules loaded');

my(@modules) = qw
/
	Config
	Const::Exporter
	Marpa::R3
	Moo
	strict
	Tree
	Try::Tiny
	Types::Standard
	utf8
	warnings
/;

diag "Testing KollosX::Languages::Perl::PackUnpack V $KollosX::Languages::Perl::PackUnpack::VERSION";

for my $module (@modules)
{
	no strict 'refs';

	my($ver) = ${$module . '::VERSION'} || 'N/A';

	diag "Using $module V $ver";
}

done_testing;
