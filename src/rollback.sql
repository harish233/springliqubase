-- *********************************************************************
-- SQL to roll back currently unexecuted changes
-- *********************************************************************
-- Change Log: C:/Users/syeda/AppData/Roaming/SQL Developer/databaseChangeLog.sql
-- Ran at: 3/31/16 11:54 AM
-- Against: SYSTEM@jdbc:oracle:thin:@localhost:1521:orcl
-- Liquibase version: 3.4.2
-- *********************************************************************

SET DEFINE OFF;

-- Lock Database
UPDATE SYSTEM.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'Newt-Pk034 (192.168.1.156)', LOCKGRANTED = to_timestamp('2016-03-31 11:54:40.458', 'YYYY-MM-DD HH24:MI:SS.FF') WHERE ID = 1 AND LOCKED = 0;

-- Release Database Lock
UPDATE SYSTEM.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

