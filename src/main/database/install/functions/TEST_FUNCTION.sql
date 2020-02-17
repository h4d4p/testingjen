--liquibase formatted sql
--changeset author:TEST_FUNCTION splitStatements:false runOnChange:true stripComments:false

CREATE OR REPLACE FUNCTION TEST_FUNCTION RETURN VARCHAR2 AS 
BEGIN
	-- test
  RETURN NULL;
END TEST_FUNCTION;