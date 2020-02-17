--liquibase formatted sql
--changeset author:TEST_PACKAGE splitStatements:false runOnChange:true stripComments:false

CREATE OR REPLACE PACKAGE BODY TsT_PCG_2 AS  
	-- testing	
  FUNCTION TEST_FUNC
  (
    P1 NUMBER
  )RETURN VARCHAR2
  IS
  BEGIN
    RETURN NULL;
  END;



END TsT_PCG_2;