#!/usr/bin/perl -w
use strict;
use Gnome2::Dia;

use Test::More tests => 1;

# $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2-Dia/t/DiaStackTool.t,v 1.1 2004/09/14 17:54:17 kaffeetisch Exp $

###############################################################################

my $stack = Gnome2::Dia::StackTool -> new();
isa_ok($stack, "Gnome2::Dia::StackTool");

$stack -> push($stack);
$stack -> pop();
