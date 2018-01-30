use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => 'TApp',
    VERSION_FROM => 'lib/TApp.pm',
    ABSTRACT => 't-app',
    AUTHOR => 'Yoann Le Garff',
    PREREQ_PM => {
        'FindBin' => 0,
        'Mojolicious' => 0,
        'Mojolicious::Plugin::OpenAPI' => 0
    }
);
