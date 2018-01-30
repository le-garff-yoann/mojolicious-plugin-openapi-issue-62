requires 'FindBin';
requires 'Mojolicious', '>= 7.51', '< 8';
requires 'JSON::Validator', '= 0.21';
requires 'Mojolicious::Plugin::OpenAPI', '= 1.25';

recommends 'EV';

on test => sub {
    requires 'Test::More';
    requires 'Test::Mojo';
};
