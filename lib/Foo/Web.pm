package Foo::Web;
use strict;
use warnings;
use utf8;

use parent qw/Foo Raft::Web/;

1;
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
