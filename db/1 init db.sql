-- СУБД: Oracle 10g

-- БД: Туристическое агентство.
-- DB: trvl (Travel agency)

-- Инициализация БД - начало:
-- Создание табличного пространства.
CREATE BIGFILE							-- расположение в неделимом файле
TABLESPACE trvl_tablespace				-- наименование табличного пространства
DATAFILE 'trvl_tablespace.dat'			-- название файла
SIZE 10M								-- начальный размер файла
AUTOEXTEND ON							-- объем файла будет расширяться
NEXT 10M								-- инкремент размера файла
MAXSIZE 200M;							-- максимальный размер файла
-- Создание Владельца схемы.
CREATE USER trvl_owner					-- логин
IDENTIFIED BY owner123					-- пароль
DEFAULT TABLESPACE trvl_tablespace;		-- размещение в табличном пространстве
-- Права Владельца схемы.
GRANT
CONNECT,								-- право на подключение
RESOURCE,								-- право на создание объектов БД
DBA										-- право на изменение объектов БД
TO trvl_owner;
-- Инициализация БД - конец.