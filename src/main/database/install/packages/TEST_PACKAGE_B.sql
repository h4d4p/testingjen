--liquibase formatted sql
--changeset author:ali3lo
--validCheckSum: ANY
CREATE OR REPLACE PACKAGE BODY TEST_PACKAGE AS  

  FUNCTION TEST_FUNC
  (
    P1 NUMBER ,
    P2 VARCHAR2
  )
  RETURN VARCHAR2
  IS
  BEGIN
    RETURN NULL;
  END TEST_FUNC;



END TEST_PACKAGE;
