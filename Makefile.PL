use strict;
use warnings;
use ExtUtils::MakeMaker;

my @test_files = qw(t/*.t);


WriteMakefile(
    NAME                => 'Convert::IRC::Color',
    AUTHOR              => 'Jason Felds <wolfman.ncsu2000@gmail.com>',
    VERSION_FROM        => 'lib/Convert/IRC/Color.pm',
    ABSTRACT_FROM       => 'lib/Convert/IRC/Color.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM           => { 'Sub::Exporter' => 0.981 },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Convert-IRC-Color-*' },
    test                => { TESTS => "@test_files" },
);
