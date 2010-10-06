package My::App::View::TT;

use strict;
use base 'Catalyst::View::TT';

__PACKAGE__->config( 
    TEMPLATE_EXTENSION => '.tt',
    ENCODING           => 'UTF-8',
);

=head1 NAME

My::App::View::TT - TT View for My::App

=head1 DESCRIPTION

TT View for My::App.

=head1 AUTHOR

=head1 SEE ALSO

L<My::App>

User &

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
