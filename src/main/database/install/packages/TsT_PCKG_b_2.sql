--liquibase formatted sql
--changeset author:TsT_PCG_2 splitStatements:false runOnChange:true

CREATE OR REPLACE PACKAGE BODY TsT_PCG_2 AS  

  FUNCTION TEST_FUNC
  (
    P1 NUMBER
  )RETURN VARCHAR2
  IS
  BEGIN
    RETURN NULL;
  END;



END TsT_PCG_2;