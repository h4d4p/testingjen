--liquibase formatted sql
--validCheckSum: ANY
	
CREATE OR REPLACE PACKAGE BODY TEST_PACKAGE_2 AS  

  FUNCTION TEST_FUNC
  (
    P1 NUMBER ,
    P2 VARCHAR2 ,
  )
  -- for testing
  RETURN VARCHAR2
  IS
  BEGIN
    RETURN NULL;
  END;



END TEST_PACKAGE_2;