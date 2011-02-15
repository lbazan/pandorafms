-- Pandora FMS - the Flexible Monitoring System
-- ============================================
-- Copyright (c) 2011 Artica Soluciones Tecnológicas, http://www.artica.es
-- Please see http://pandora.sourceforge.net for full contribution list

-- This program is free software; you can redistribute it and/or
-- modify it under the terms of the GNU General Public License
-- as published by the Free Software Foundation for version 2.
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

-- PLEASE NO NOT USE MULTILINE COMMENTS 
-- Because Pandora Installer don't understand them
-- and fails creating database !!!

-- -----------------------------------------------------
-- Table `tgrupo`
-- -----------------------------------------------------
ALTER TABLE `tgrupo` MODIFY `nombre` text;

-- -----------------------------------------------------
-- Table `tnetwork_component`
-- -----------------------------------------------------
ALTER TABLE `tnetwork_component` ADD COLUMN `post_process` double(18,13) default 0;

-- -----------------------------------------------------
-- Table `treport_content`
-- -----------------------------------------------------
ALTER TABLE treport_content ADD only_display_wrong tinyint(1) unsigned DEFAULT 0 NOT NULL;

-- -----------------------------------------------------
-- Table `tusuario`
-- -----------------------------------------------------
ALTER TABLE `tusuario` ADD COLUMN `block_size` int(4) NOT NULL DEFAULT 20;
ALTER TABLE `tusuario` ADD COLUMN `flash_chart` int(4) NOT NULL DEFAULT 1;

-- -----------------------------------------------------
-- Table `talert_actions`
-- -----------------------------------------------------
ALTER TABLE `talert_actions` ADD COLUMN `action_threshold` int(10) NOT NULL DEFAULT '0';

-- -----------------------------------------------------
-- Table `talert_template_module_actions`
-- -----------------------------------------------------
ALTER TABLE `talert_template_module_actions` ADD COLUMN `module_action_threshold` int(10) NOT NULL DEFAULT '0';
ALTER TABLE `talert_template_module_actions` ADD COLUMN `last_execution` bigint(20) NOT NULL DEFAULT '0';

