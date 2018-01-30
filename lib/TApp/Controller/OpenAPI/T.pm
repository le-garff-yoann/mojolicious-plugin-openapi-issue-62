package TApp::Controller::OpenAPI::T;

use Mojo::Base 'Mojolicious::Controller';

sub list {
    my $c = shift->openapi->valid_input or return;

    $c->render(openapi => [ qw/t1 t2/ ]);
}

1;
