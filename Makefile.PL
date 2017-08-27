use strict;
use warnings;

use ExtUtils::MakeMaker;

# -----------------------------------------------

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

my(%params) =
(
	($] ge '5.005') ?
	(
		AUTHOR   => 'Ron Savage (ron@savage.net.au)',
		ABSTRACT => 'Parse the templates used in pack() and unpack()',
	) : (),
	clean =>
	{
		FILES => 'blib/* Makefile MANIFEST KollosX-Languages-Perl-PackUnpack-*'
	},
	dist =>
	{
		COMPRESS => 'gzip',
		SUFFIX   => 'gz'
	},
	DISTNAME  => 'KollosX-Languages-Perl-PackUnpack',
	NAME      => 'KollosX::Languages::Perl::PackUnpack',
	PL_FILES  => {},
	PREREQ_PM =>
	{
		'Config'			=> 0,
		'Const::Exporter'	=> 'v0.2.4',
		'Marpa::R3'			=> 4.001049,
		'Moo'				=> 2.003002,
		'strict'			=> 0,
		'Tree'				=> 1.10,
		'Try::Tiny'			=> 0.28,
		'Types::Standard'	=> 1.002001,
		'utf8'				=> 0,
		'warnings'			=> 0,
	},
	TEST_REQUIRES =>
	{
		'Test::More'	=> 1.001002,
		'Test::Pod'		=> 1.48,
	},
	VERSION_FROM => 'lib/KollosX/Languages/Perl/PackUnpack.pm',
);

if ( ($ExtUtils::MakeMaker::VERSION =~ /^\d\.\d\d$/) && ($ExtUtils::MakeMaker::VERSION > 6.30) )
{
	$params{LICENSE} = 'perl';
}

if ($ExtUtils::MakeMaker::VERSION ge '6.46')
{
	$params{META_MERGE} =
	{
		'meta-spec' =>
			{
				version => 2,
			},
		resources   =>
			{
				bugtracker	=> 'https://rt.cpan.org/Public/Dist/Display.html?Name=KollosX-Languages-Perl-PackUnpack',
				license		=> 'http://opensource.org/licenses/Artistic-2.0',
				repository	=>
				{
					type	=> 'git',
					url		=> 'https://github.com/ronsavage/KollosX-Languages-Perl-PackUnpack.git',
					web		=> 'https://github.com/ronsavage/KollosX-Languages-Perl-PackUnpack',
				},
			},
	};
}

WriteMakefile(%params);
