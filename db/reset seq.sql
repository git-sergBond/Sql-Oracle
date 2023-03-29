  -- —брасывает sequence на максимальное значение ID из таблицы
  CREATE OR REPLACE PROCEDURE reset_sequence(seq_name   IN VARCHAR2,
                                             table_name IN VARCHAR2) IS
  table_max_id   NUMBER;
  seq_nextval    NUMBER;
  delta_id       NUMBER;
  seq_result_val NUMBER;
BEGIN
  EXECUTE IMMEDIATE 'SELECT COUNT(:1.id) FROM :1'
    INTO table_max_id
    USING table_name;

END;

  --CALL reset_sequence('TRVL_TOURS_ID_SEQ', 'TRVL_TOURS'); 
  CALL reset_sequence('TRVL_TOUR_TYPES_ID_SEQ', 'TRVL_TOUR_TYPES');
--EXECUTE IMMEDIATE 'SELECT ' || seq_name || '.nextval FROM dual' INTO seq_nextval;
  --delta_id := table_max_id - seq_nextval;

  --EXECUTE IMMEDIATE 'ALTER SEQUENCE trvl_tours_id_seq INCREMENT BY ' || delta_id;
  --EXECUTE IMMEDIATE 'SELECT ' || seq_name || '.nextval from dual ' INTO seq_result_val;
