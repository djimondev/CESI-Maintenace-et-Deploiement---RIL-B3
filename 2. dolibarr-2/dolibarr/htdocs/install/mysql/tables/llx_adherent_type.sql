-- ===================================================================
-- Copyright (C) 2002-2003 Rodolphe Quiedeville <rodolphe@quiedeville.org>
-- Copyright (C) 2002-2003 Jean-Louis Bergamo   <jlb@j1b.org>
-- Copyright (C) 2009      Regis Houssin        <regis.houssin@inodbox.com>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <https://www.gnu.org/licenses/>.
--
-- ===================================================================
--
-- statut
-- 0 : actif
-- 1 : inactif

create table llx_adherent_type
(
  rowid            integer AUTO_INCREMENT PRIMARY KEY,
  entity           integer DEFAULT 1 NOT NULL,
  tms              timestamp,
  statut           smallint NOT NULL DEFAULT 0,
  libelle          varchar(50) NOT NULL,
  morphy           varchar(3) NOT NULL,
  duration         varchar(6) DEFAULT NULL,
  subscription     varchar(3) NOT NULL DEFAULT '1',
  vote             varchar(3) NOT NULL DEFAULT '1',
  note             text,
  mail_valid       text
)ENGINE=innodb;
