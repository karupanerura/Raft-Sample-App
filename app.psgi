use strict;
use warnings;
use utf8;

use File::Spec;
use File::Basename qw/dirname/;
use lib File::Spec->catfile(dirname(__FILE__), 'lib');

use Plack::Builder;

use Foo::Web;
use Foo::Web::Router;

builder {
    Foo::Web->to_app(router => Foo::Web::Router->create);
};
