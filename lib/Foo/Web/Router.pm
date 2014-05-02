package Foo::Web::Router;
use strict;
use warnings;
use utf8;

use Raft::Web::Middleware::Lint;
use Raft::Web::Router;

sub create {
    my $router = Raft::Web::Router->new(
        middlewares => [
            Raft::Web::Middleware::Lint->new,
        ],
        default => +{
            response => { class => 'JSON' }
        },
    );

    $router->add(['GET'], '/', +{
        action => sub {
            my ($app, $req, $res) = @_;
            return +{
                message => 'Hello, World!',
            };
        },
        response => +{
            class    => 'Xslate',
            template => 'index.tx',
        },
    });

    $router->add(['GET'], '/sample.json', +{
        action => sub {
            my ($app, $req, $res) = @_;
            return +{
                message => 'Hello, World!',
            };
        },
    });

    return $router;
}

1;
__END__
