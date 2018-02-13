package TApp;

use Mojo::Base 'Mojolicious';

sub startup {
    my $self = shift;

    $self->app->sessions->cookie_name(__PACKAGE__);

    $self->helper('tapp.openapi.url' => sub { state $p = shift->app->home->child('share', 't-app.json') });

    $self->plugin(OpenAPI => {
        url => $self->tapp->openapi->url
    });
}

1;
