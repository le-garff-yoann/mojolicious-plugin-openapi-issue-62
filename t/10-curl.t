use Mojo::Base -strict;

use Test::More;
use Test::Mojo;

my $t = Test::Mojo->new('TApp');

$t->get_ok('/api')->status_is(200)->content_unlike(qr'#\/definitions\/__'); 

done_testing();
