--liquibase formatted sql
--validCheckSum: ANY

CREATE OR REPLACE PACKAGE BODY TsT_PCG_2 AS  

  FUNCTION TEST_FUNC
  (
    P1 NUMBER
  )
  -- for testing
  RETURN VARCHAR2
  IS
  BEGIN
    RETURN NULL;
  END;



END TsT_PCG_2;