--liquibase formatted sql
--changeset author:TEST_PACKAGE splitStatements:false runOnChange:true stripComments:false
	
CREATE OR REPLACE PACKAGE BODY TEST_PACKAGE AS  
	-- testing	
  FUNCTION TEST_FUNC
  (
    P1 NUMBER,
    P2 VARCHAR2
  ) RETURN VARCHAR2
  IS
  	-- l_char for test arbc lng	
  l_char VARCHAR2(200);
  BEGIN
		  l_char  := 'هشام عادل';

    RETURN NULL;
  END;



END TEST_PACKAGE;