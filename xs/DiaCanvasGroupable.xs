/*
 * Copyright (C) 2004 by the gtk2-perl team
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 * $Header$
 */

#include "diacanvas2perl.h"

MODULE = Gnome2::Dia::CanvasGroupable	PACKAGE = Gnome2::Dia::CanvasGroupable	PREFIX = dia_canvas_groupable_

##  void dia_canvas_groupable_add (DiaCanvasGroupable *group, DiaCanvasItem *item)
void
dia_canvas_groupable_add (group, item)
	DiaCanvasGroupable *group
	DiaCanvasItem *item

##  void dia_canvas_groupable_remove (DiaCanvasGroupable *group, DiaCanvasItem *item)
void
dia_canvas_groupable_remove (group, item)
	DiaCanvasGroupable *group
	DiaCanvasItem *item

##  gboolean dia_canvas_groupable_get_iter (DiaCanvasGroupable *group, DiaCanvasIter *iter)
DiaCanvasIter_copy *
dia_canvas_groupable_get_iter (group)
	DiaCanvasGroupable *group
    PREINIT:
	DiaCanvasIter iter;
    CODE:
	if (! dia_canvas_groupable_get_iter (group, &iter))
		XSRETURN_UNDEF;
	RETVAL = &iter;
    OUTPUT:
	RETVAL

##  gboolean dia_canvas_groupable_next (DiaCanvasGroupable *group, DiaCanvasIter *iter)
gboolean
dia_canvas_groupable_next (group, iter)
	DiaCanvasGroupable *group
	DiaCanvasIter *iter

##  DiaCanvasItem* dia_canvas_groupable_value (DiaCanvasGroupable *group, DiaCanvasIter *iter)
DiaCanvasItem *
dia_canvas_groupable_value (group, iter)
	DiaCanvasGroupable *group
	DiaCanvasIter *iter

##  gint dia_canvas_groupable_length (DiaCanvasGroupable *group)
gint
dia_canvas_groupable_length (group)
	DiaCanvasGroupable *group

##  gint dia_canvas_groupable_pos (DiaCanvasGroupable *group, DiaCanvasItem *item)
gint
dia_canvas_groupable_pos (group, item)
	DiaCanvasGroupable *group
	DiaCanvasItem *item
