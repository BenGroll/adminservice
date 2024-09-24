package Admin::Http::Controllers::Controller;

use strict;
use warnings;

use Foundation::Appify;

sub new {
    my $class = shift;

    my $self = {};
    bless $self, $class;

    return $self;
}

sub dashboard {
    my $self = shift;
    my $request = shift;

    # TODO: Do something useful.

    app()->pushToStack('scripts', servicePath('admin') . '/script.js');

    my $template = &_::template('admin::dashboard', {
        #
    });

    return $template->output();
}

sub showMessage {
    my $self = shift;
    my $request = shift;

    # TODO: Do something useful.

    return $self->welcome($request);
}

1;
