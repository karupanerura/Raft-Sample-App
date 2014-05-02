package Foo;
use strict;
use warnings;
use utf8;

use parent qw/Raft/;

use Data::Section::Simple ();

sub load_config {
    my $self  = shift;
    my $class = ref $self;
    return +{
        'Text::Xslate' => +{
            path  => Data::Section::Simple->new($class)->get_data_section(),
            cache => 0,
        },
    };
}

1;
__DATA__
