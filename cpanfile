requires 'Data::Section::Simple';
requires 'Plack::Builder';
requires 'Raft';
requires 'Raft::Lite';
requires 'Raft::Web';
requires 'Raft::Web::Middleware::Lint';
requires 'Raft::Web::Router';
requires 'parent';

on configure => sub {
    requires 'CPAN::Meta';
    requires 'CPAN::Meta::Prereqs';
    requires 'Module::Build';
    requires 'perl', '5.008_001';
};

on test => sub {
    requires 'Test::More';
};
