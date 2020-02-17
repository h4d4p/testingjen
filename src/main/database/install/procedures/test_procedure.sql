--liquibase formatted sql
--changeset author:TEST_PROCEDURE splitStatements:false runOnChange:true stripComments:false

CREATE OR REPLACE PROCEDURE TEST_PROCEDURE AS 
BEGIN
  NULL;
END TEST_PROCEDURE;

-- test 