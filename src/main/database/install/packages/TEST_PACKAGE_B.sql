--liquibase formatted sql
--validCheckSum: ANY
CREATE OR REPLACE PACKAGE BODY TEST_PACKAGE AS  

  FUNCTION TEST_FUNC
  (
    P1 NUMBER ,
    P2 VARCHAR2
  )
  IS
  RETURN VARCHAR2
  BEGIN
    RETURN NULL;
  END TEST_FUNC;



END TEST_PACKAGE;
