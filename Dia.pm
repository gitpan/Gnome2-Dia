package Gnome2::Dia;

# $Header$

use 5.008;
use strict;
use warnings;

use Glib;
use Gtk2;
use Gnome2::Canvas;
use Gnome2::Print;

require DynaLoader;

our @ISA = qw(DynaLoader);

our $VERSION = '0.01';

sub import {
  my $self = shift();
  $self -> VERSION(@_);
}

sub dl_load_flags { 0x01 }

Gnome2::Dia -> bootstrap($VERSION);

1;
__END__

=head1 NAME

Gnome2::Dia - Perl interface to the DiaCanvas2 library

=head1 SYNOPSIS

  # ...

=head1 ABSTRACT

This module allows a Perl developer to use the DiaCanvas2 library.

=head1 SEE ALSO

L<Gnome2::Dia::index>(3pm), L<Gtk2>(3pm), L<Gtk2::api>(3pm) and
L<http://diacanvas.sourceforge.net/ref/>.

=head1 AUTHOR

Torsten Schoenfeld E<lt>kaffeetisch@web.deE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2004 by the gtk2-perl team

=cut
