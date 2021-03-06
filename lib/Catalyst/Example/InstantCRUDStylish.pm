package Catalyst::Example::InstantCRUDStylish;

$VERSION = '0.0369';

use warnings;
use strict;
use Carp;


# Module implementation here


1; # Magic true value required at end of module
__END__

=head1 NAME

Catalyst::Example::InstantCRUDStylish - **EXPERIMENTAL** CRUD scaffolding for Catalyst
*** (forked from Catalyst::Example::InstantCRUD) with some css style.

=head1 VERSION

This document describes Catalyst::Example::InstantCRUDStylish version 0.0369

=head1 SYNOPSIS

    instantcrudstylish.pl My::App -dsn='dbi:Pg:dbname=CE' -user=zby -password='pass'

The L<instantcrudstylish.pl> executable creates a skeleton CRUD application in
current directory.

=head1 DESCRIPTION

The script will create CRUD interface (CReate, Update, Delete)
with paging and sort for all
tables defined in the accessed database.
The Create and Update forms let you manipulate also on relations
(even many to many).

I am waiting for suggestions what else basic functionality would be nice
to have in the generated application.

When the code is generated you can run the application:

    $ My-App/script/my_app_server.pl
    You can connect to your server at http://zby.aster.net.pl:3000

To access the CRUD interface to the tables you need to add
'/tablename' (in lowercase) to the address:
http://localhost:3000/tablename
(Note that if the table name has a underscore, that underscore should be
deleted in the address so table foo_bar is available at
http://localhost:3000/foobar, this is due to some conversions made by the
underlying libraries).

The generated application will use DBIx::Class for model classes and
Template::Toolkit for View.

=head1 WHY ANOTHER INSTANTCRUD ?

The reason to release this is all about standards.
This is my attempt to standarize my control panels and applications
internals.
This InstantCRUD Stylished uses:
blueprint for css standard
modified thickbox with callback function for ajax modals
iconpack for icons (http://www.famfamfam.com/lab/icons/silk/)
jquery for js
*** see how to style your app ***

=head1 HOW TO STYLE YOUR APP

Download the Catalyst-Example-InstantCRUDStylish-0.0xx.tar.gz from CPAN.
Decompress that file and inside it, there is a .rar on the root.
Then, use this instantcrudstylish to create your application dirs, and after that
replace your app root dir with the 'root dir' inside .rar file.


=head1 CUSTOMISATION AND EXTENDING

The first place for customisations are the Template Toolkit templates
and the CSS file.
The CSS file used by the application is root/static/css/painel-de-controle.css.
The templates are generated in directories named after the controllers in the
root directory.

The generated controller is a subclass of
Catalyst::Example::Controller::InstantCRUDStylish.
You can use the standard OO technique of overriding the documented methods
to customize and extend it.
The form handling code is in the controller.

=head1 DEPENDENCIES
See Makefile.PL

=head1 RESOURCES

L<http://dev.catalyst.perl.org/wiki/crud/instantcrudstylish> - InstantCRUDStylish page at
the Catalyst wiki.

=head1 BUGS AND LIMITATIONS

This is still experimental and it is a first new release
after a long time and substantial refactoring so treat with caution.

The '0.04005' vesion of DBIx::Class::Schema::Loader does not
assigne 'is_nullable' to any column when loading from some SQLite
versions.  In currently in applications generated out of
SQLite databases all fields are marked as 'required'.

The main generator script (instantcrudstylish.pl) is an ugly hack.  First
the Catalyst helpers assume where the executable is located so I had
to fool them, second there is no API for creation of the main
application module (My::App).

Please report any bugs or feature requests to
C<bug-catalyst-example-instantcrudstylish@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.


=head1 AUTHOR

<Zbigniew Lukasiak>  C<< <<zz bb yy @ gmail.com>> >>


=head1 CONTRIBUTORS

Hernan Lopes:  <hernanlopes@gmail.com>
wreis: Wallace Reis <wallace@reis.org.br>


=head1 LICENCE AND COPYRIGHT

Copyright (c) 2005, <Zbigniew Lukasiak> C<< <<zz bb yy @ gmail.com>> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.


=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.
