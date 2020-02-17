--liquibase formatted sql
--changeset author:id1 splitStatements:false runOnChange:true

CREATE OR REPLACE PACKAGE TsT_PCG_2 AS

	FUNCTION TEST_FUNC
	(
		P1 NUMBER
	)
	-- for testing
	-- for testing2
	RETURN VARCHAR2;


END;
