#!/usr/bin/perl -w
use strict;
use Gnome2::Dia;

use Test::More tests => 6;

# $Header$

###############################################################################

my $group = Gnome2::Dia::CanvasItem -> create("Gnome2::Dia::CanvasGroup");
isa_ok($group, "Gnome2::Dia::CanvasGroupable");

my $line = Gnome2::Dia::CanvasItem -> create("Gnome2::Dia::CanvasLine");
my $text = Gnome2::Dia::CanvasItem -> create("Gnome2::Dia::CanvasText");

$group -> add($line);
$group -> remove($line);

$group -> add($line);
$group -> add($text);

my $iter = $group -> get_iter();
isa_ok($iter, "Gnome2::Dia::CanvasIter");

is($group -> value($iter), $line);
$group -> next($iter);
is($group -> value($iter), $text);

is($group -> length(), 2);
is($group -> pos($line), 0);
