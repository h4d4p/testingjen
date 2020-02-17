--liquibase formatted sql
--changeset author:test_view  runOnChange:true stripComments:false
CREATE OR REPLACE VIEW test_view as
	elect 1 as a , 2 b, 3 c
	from dual;
	