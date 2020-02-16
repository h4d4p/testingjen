--liquibase formatted sql
--validCheckSum: ANY
--changeset author:id1 dbms:oracle runOnChange: true 

CREATE OR REPLACE PACKAGE TsT_PCG_2 AS

	FUNCTION TEST_FUNC
	(
		P1 NUMBER
	)
	
	RETURN VARCHAR2;


END;
