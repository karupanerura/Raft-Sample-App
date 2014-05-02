use Raft::Lite;
use Data::Section::Simple ();

sub load_config {
    return +{
        'Text::Xslate' => +{
            path  => Data::Section::Simple->new->get_data_section(),
            cache => 0,
        },
    };
}

default response => { class => 'JSON' };

enable_raft_middleware 'Lint';

get '/' => sub {
    my ($app, $req, $res) = @_;
    return { message => 'Hello, World!' };
} => {
    response => {
        class    => 'Xslate',
        template => 'index.tx',
    },
};

get '/sample.json' => sub {
    my ($app, $req, $res) = @_;
    return { message => 'Hello, World!' };
}; # default: { response => { class => 'JSON' } }

__PACKAGE__->to_app;
__DATA__
@@ index.tx
: cascade layout
: around content -> {
this is Raft.<br />
<: $message :><br />
: }

@@ layout.tx
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <title>Raft - yet another web application framework</title>
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
 </head>
  <body>
    <header>
      <h1>Raft</h1>
      <p>yet another web application framework</p>
    </header>
    <main id="content">
      : block content -> { }
    </main>
    <footer>
      <small class="copyright">&copy; karupanerura</small>
    </footer>
  </body>
</html>
