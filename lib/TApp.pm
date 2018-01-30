package TApp;

use Mojo::Base 'Mojolicious';

sub startup {
    my $self = shift;

    $self->app->sessions->cookie_name(__PACKAGE__);

    $self->helper('tapp.openapi.url' => sub { state $p = shift->app->home->child('share', 't-app.json') });

    $self->hook(before_render => sub {
        my ($c, $args) = @_;

        my $err;

        my $tpl = $args->{template} // '';

        if ($tpl eq 'exception') {
            $err = $c->stash('exception')->message;
        } elsif ($tpl eq 'not_found') {
            $err = "the page you were looking for doesn't exist."
        } else {
            return;
        }

        $args->{json} = { error => $err };
    });

    $self->plugin(OpenAPI => {
        url => $self->tapp->openapi->url
    });
}

1;
