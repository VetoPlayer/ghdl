
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc2428.vhd,v 1.2 2001-10-26 16:29:47 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c07s03b02x01p01n03i02428ent IS
END c07s03b02x01p01n03i02428ent;

ARCHITECTURE c07s03b02x01p01n03i02428arch OF c07s03b02x01p01n03i02428ent IS

BEGIN
  TESTING: PROCESS
    type rec is record
                  ele_1 : real;
                  ele_2 : real;
                end record;
    constant p  :rec := (ele_1 | ele_2 => 4.5); -- No_failure_here
  BEGIN
    assert NOT(p.ele_1=4.5 and p.ele_2=4.5) 
      report "***PASSED TEST: c07s03b02x01p01n03i02428" 
      severity NOTE;
    assert (p.ele_1=4.5 and p.ele_2=4.5) 
      report "***FAILED TEST: c07s03b02x01p01n03i02428 - Element association with others choice should be used to represent elements of the same type."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c07s03b02x01p01n03i02428arch;
