/* This testcase is part of GDB, the GNU debugger.

   Copyright 2013-2019 Free Software Foundation, Inc.

   Contributed by Trande UG. <zied.guermazi@trande.de>

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */
.arm
.text
.globl loop
.type  loop, %function
loop:
	movs r0, #2 /* bp.1 */
L1:
	cmp r0, #0
	beq L2
	subs r0, r0, #1
	b L1
L2:
	bx lr /* bp.2 */

