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

MODULE = Gnome2::Dia::Solver	PACKAGE = Gnome2::Dia::Solver	PREFIX = dia_solver_

##  DiaSolver * dia_solver_new (void)
DiaSolver_noinc *
dia_solver_new (class)
    C_ARGS:
	/* void */

##  void dia_solver_add_constraint (DiaSolver *solver, DiaConstraint *constraint)
void
dia_solver_add_constraint (solver, constraint)
	DiaSolver *solver
	DiaConstraint *constraint

##  void dia_solver_remove_constraint (DiaSolver *solver, DiaConstraint *constraint)
void
dia_solver_remove_constraint (solver, constraint)
	DiaSolver *solver
	DiaConstraint *constraint

##  void dia_solver_resolve (DiaSolver *solver)
void
dia_solver_resolve (solver)
	DiaSolver *solver
