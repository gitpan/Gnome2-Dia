#!/usr/bin/perl -w
use strict;
use Gnome2::Dia;

use Test::More tests => 6;

# $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2-Dia/t/DiaCanvasElement.t,v 1.1 2004/09/14 17:54:17 kaffeetisch Exp $

###############################################################################

my $item = Gnome2::Dia::CanvasItem -> create("Gnome2::Dia::CanvasBox");
isa_ok($item, "Gnome2::Dia::CanvasElement");

my $handles = $item -> get("handles");
isa_ok($handles, "ARRAY");
is($#{$handles}, 7);

is($item -> get_opposite_handle($handles -> [0]), $handles -> [3]);

SKIP: {
  skip("the handles property is broken", 2); # FIXME: Version check.

  my $handle = Gnome2::Dia::Handle -> new($item);
  $item -> set(handles => [@$handles, $handle]);

  $handles = $item -> get("handles");
  isa_ok($handles, "ARRAY");
  is($#{$handles}, 8);
}
