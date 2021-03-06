use 5.008_001;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME           => 'Geo::StreetAddress::US',
    VERSION_FROM   => 'US.pm', # finds $VERSION
    PREREQ_PM      => {}, # e.g., Module::Name => 1.1
    AUTHOR         => 'Schuyler Erle <schuyler@nocat.net>',
    dist  => {
        DIST_DEFAULT=> 'clean distcheck disttest tardist',
        PREOP => '$(MAKE) -f Makefile.old distdir',
        COMPRESS => 'gzip -v9', SUFFIX => 'gz',
    },
);
