--liquibase formatted sql
--changeset author:id1 splitStatements:false runOnChange:true

CREATE OR REPLACE PACKAGE TEST_PACKAGE AS

	FUNCTION TEST_FUNC
	(
		P1 NUMBER,
		P2 VARCHAR2
	)
	
	RETURN VARCHAR2;


END TEST_PACKAGE;
