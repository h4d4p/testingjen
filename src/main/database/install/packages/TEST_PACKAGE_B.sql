--liquibase formatted sql
--changeset author:id1 splitStatements:false runOnChange:true
	
CREATE OR REPLACE PACKAGE BODY TEST_PACKAGE AS  

  FUNCTION TEST_FUNC
  (
    P1 NUMBER,
    P2 VARCHAR2
  ) RETURN VARCHAR2
  IS
  l_char VARCHAR2(200);
  BEGIN
		  l_char  := 'هشام عادل';

    RETURN NULL;
  END;



END TEST_PACKAGE;