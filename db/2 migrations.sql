-- Миграции - начало:
-- ТАБЛИЦА: туры
CREATE TABLE trvl_tours 						
(													
id 					NUMBER(7) 		NOT NULL,	-- PK: ID
name 				VARCHAR2(200) 	NOT NULL,	-- название
price 				NUMBER(7) 		NOT NULL,	-- цена (Руб)
departure_date 		TIMESTAMP WITH TIME ZONE,	-- время отправления
departure_city 		VARCHAR2(200) 	NOT NULL,	-- город вылета
operator_name  		VARCHAR2(200) 	NOT NULL,	-- оператор
number_of_adults 	VARCHAR2(2) 	NOT NULL,	-- количество взрослых
number_of_children 	VARCHAR2(2) 	NOT NULL,	-- количество детей
number_of_days		VARCHAR2(2) 	NOT NULL,	-- количество дней
number_of_nights	VARCHAR2(2) 	NOT NULL,	-- количество ночей
id_country			NUMBER(7) 		NOT NULL,	-- FK: страна
id_tour_type		NUMBER(7) 		NOT NULL,	-- FK: вид тура
id_nutrition		NUMBER(7) 		NOT NULL,	-- FK: питание
id_hotel			NUMBER(7) 		NOT NULL,	-- FK: отель
id_discount			NUMBER(7) 		NOT NULL,	-- FK: скидки
												
CONSTRAINT trvl_tours_pk PRIMARY KEY (id)		-- Задается первичный ключ
);
-- Генерация ID для таблицы.
CREATE SEQUENCE trvl_tours_id_seq
START WITH     1
INCREMENT BY   1;

CREATE OR REPLACE TRIGGER "trvl_tours_gen_id_trg"
BEFORE INSERT ON trvl_tours
FOR EACH ROW
BEGIN
IF :new.id IS NULL THEN
	SELECT trvl_tours_id_seq.NEXTVAL
	INTO   :new.id
	FROM   dual;
END IF;
END;
-- ТАБЛИЦА: отели
CREATE TABLE trvl_hotels 						
(																	
id 					NUMBER(7) 		NOT NULL,	-- PK: ID
name 				VARCHAR2(200) 	NOT NULL,	-- название
"type" 				VARCHAR2(200) 	NOT NULL,	-- тип
"class" 			NUMBER(1) 		NOT NULL,	-- количество звезд
												
CONSTRAINT trvl_hotels_pk PRIMARY KEY (id)		-- Задается первичный ключ
);
-- Генерация ID для таблицы.
CREATE SEQUENCE trvl_hotels_id_seq
START WITH     1
INCREMENT BY   1;

CREATE OR REPLACE TRIGGER "trvl_hotels_gen_id_trg"
BEFORE INSERT ON trvl_hotels
FOR EACH ROW
BEGIN
IF :new.id IS NULL THEN
	SELECT trvl_hotels_id_seq.NEXTVAL
	INTO   :new.id
	FROM   dual;
END IF;
END;
-- ТАБЛИЦА: виды туров
CREATE TABLE trvl_tour_types 						
(																	
id 					NUMBER(7) 		NOT NULL,	-- PK: ID
"type" 				VARCHAR2(200) 	NOT NULL,	-- вид тура
												
CONSTRAINT trvl_tour_types_pk PRIMARY KEY (id)	-- Задается первичный ключ
);
-- Генерация ID для таблицы.
CREATE SEQUENCE trvl_tour_types_id_seq
START WITH     1
INCREMENT BY   1;

CREATE OR REPLACE TRIGGER "trvl_tour_types_gen_id_trg"
BEFORE INSERT ON trvl_tour_types
FOR EACH ROW
BEGIN
IF :new.id IS NULL THEN
	SELECT trvl_tour_types_id_seq.NEXTVAL
	INTO   :new.id
	FROM   dual;
END IF;
END;
-- ТАБЛИЦА: страны
CREATE TABLE trvl_country 						
(																	
id 					NUMBER(7) 		NOT NULL,	-- PK: ID
"name" 				VARCHAR2(200) 	NOT NULL,	-- название страны
												
CONSTRAINT trvl_country_pk PRIMARY KEY (id)	-- Задается первичный ключ
);
-- ТАБЛИЦА: питание
CREATE TABLE trvl_nutrition 						
(																	
id 					NUMBER(7) 		NOT NULL,	-- PK: ID
"name" 				VARCHAR2(200) 	NOT NULL,	-- название
description 		VARCHAR2(500) 	NOT NULL,	-- описание
												
CONSTRAINT trvl_nutrition_pk PRIMARY KEY (id)	-- Задается первичный ключ
);
-- Генерация ID для таблицы.
CREATE SEQUENCE trvl_nutrition_id_seq
START WITH     1
INCREMENT BY   1;

CREATE OR REPLACE TRIGGER "trvl_nutrition_gen_id_trg"
BEFORE INSERT ON trvl_nutrition
FOR EACH ROW
BEGIN
IF :new.id IS NULL THEN
	SELECT trvl_nutrition_id_seq.NEXTVAL
	INTO   :new.id
	FROM   dual;
END IF;
END;
-- ТАБЛИЦА: скидки
CREATE TABLE trvl_discount 						
(																	
id 					NUMBER(7) 		NOT NULL,	-- PK: ID
"name" 				VARCHAR2(200) 	NOT NULL,	-- название
discount_percent 	NUMBER(3) 		NOT NULL,	-- процент (%) скидки
												
CONSTRAINT trvl_discount_pk PRIMARY KEY (id)	-- Задается первичный ключ
);
-- Генерация ID для таблицы.
CREATE SEQUENCE trvl_discount_id_seq
START WITH     1
INCREMENT BY   1;

CREATE OR REPLACE TRIGGER "trvl_discount_gen_id_trg"
BEFORE INSERT ON trvl_discount
FOR EACH ROW
BEGIN
IF :new.id IS NULL THEN
	SELECT trvl_discount_id_seq.NEXTVAL
	INTO   :new.id
	FROM   dual;
END IF;
END;
-- ТАБЛИЦА: сотрудники
CREATE TABLE trvl_employee 						
(																	
id 					NUMBER(7) 		NOT NULL,	-- PK: ID
name 				VARCHAR2(200) 	NOT NULL,	-- Имя
surname 			VARCHAR2(200) 	NOT NULL,	-- Фамилия
patronymic			VARCHAR2(200) 	NOT NULL,	-- Отчество
phone				VARCHAR2(20) 	NOT NULL,	-- Телефон
												
CONSTRAINT trvl_employee_pk PRIMARY KEY (id)	-- Задается первичный ключ
);
-- Генерация ID для таблицы.
CREATE SEQUENCE trvl_employee_id_seq
START WITH     1
INCREMENT BY   1;

CREATE OR REPLACE TRIGGER "trvl_employee_gen_id_trg"
BEFORE INSERT ON trvl_employee
FOR EACH ROW
BEGIN
IF :new.id IS NULL THEN
	SELECT trvl_employee_id_seq.NEXTVAL
	INTO   :new.id
	FROM   dual;
END IF;
END;
-- ТАБЛИЦА: клиенты
CREATE TABLE trvl_client 						
(																	
id 					NUMBER(7) 		NOT NULL,	-- PK: ID
name 				VARCHAR2(200) 	NOT NULL,	-- Имя
surname 			VARCHAR2(200) 	NOT NULL,	-- Фамилия
patronymic			VARCHAR2(200) 	NOT NULL,	-- Отчество
phone				VARCHAR2(20) 	NOT NULL,	-- Телефон
passport			VARCHAR2(1000) 	NOT NULL,	-- Паспорт
												
CONSTRAINT trvl_client_pk PRIMARY KEY (id)		-- Задается первичный ключ
);
-- Генерация ID для таблицы.
CREATE SEQUENCE trvl_client_id_seq
START WITH     1
INCREMENT BY   1;

CREATE OR REPLACE TRIGGER "trvl_client_gen_id_trg"
BEFORE INSERT ON trvl_client
FOR EACH ROW
BEGIN
IF :new.id IS NULL THEN
	SELECT trvl_client_id_seq.NEXTVAL
	INTO   :new.id
	FROM   dual;
END IF;
END;
-- ТАБЛИЦА: продажи
CREATE TABLE trvl_sales 						
(																	
id 					NUMBER(7) 		NOT NULL,	-- PK: ID
"date" 				TIMESTAMP WITH TIME ZONE,	-- дата сделки
"count"				NUMBER(3) 		NOT NULL,	-- количество
id_tour				NUMBER(7) 		NOT NULL,	-- FK: тур
id_client			NUMBER(7) 		NOT NULL,	-- FK: клиент
id_employee			NUMBER(7) 		NOT NULL,	-- FK: сотрудник

CONSTRAINT trvl_sales_pk PRIMARY KEY (id)		-- Задается первичный ключ
);
-- Генерация ID для таблицы.
CREATE SEQUENCE trvl_sales_id_seq
START WITH     1
INCREMENT BY   1;

CREATE OR REPLACE TRIGGER "trvl_sales_gen_id_trg"
BEFORE INSERT ON trvl_sales
FOR EACH ROW
BEGIN
IF :new.id IS NULL THEN
	SELECT trvl_sales_id_seq.NEXTVAL
	INTO   :new.id
	FROM   dual;
END IF;
END;
-- ТАБЛИЦА: возвраты
CREATE TABLE trvl_refunds 						
(																	
id 					NUMBER(7) 		NOT NULL,	-- PK: ID
"date" 				TIMESTAMP WITH TIME ZONE,	-- дата сделки
"count"				NUMBER(3) 		NOT NULL,	-- количество
id_tour				NUMBER(7) 		NOT NULL,	-- FK: тур
id_client			NUMBER(7) 		NOT NULL,	-- FK: клиент
id_employee			NUMBER(7) 		NOT NULL,	-- FK: сотрудник
id_sale				NUMBER(7) 		NOT NULL,	-- FK: продажа
reason				VARCHAR2(1000) 	NOT NULL,	-- Причина

CONSTRAINT trvl_refunds_pk PRIMARY KEY (id)		-- Задается первичный ключ
);
-- Генерация ID для таблицы.
CREATE SEQUENCE trvl_refunds_id_seq
START WITH     1
INCREMENT BY   1;

CREATE OR REPLACE TRIGGER "trvl_refunds_gen_id_trg"
BEFORE INSERT ON trvl_refunds
FOR EACH ROW
BEGIN
IF :new.id IS NULL THEN
	SELECT trvl_refunds_id_seq.NEXTVAL
	INTO   :new.id
	FROM   dual;
END IF;
END;
-- Отношения:
-- отели 		---1:N---> 		туры
ALTER TABLE trvl_tours
ADD CONSTRAINT trvl_tours_hotel_fk
FOREIGN KEY (id_hotel)
REFERENCES trvl_hotels(id);
-- виды туров 	---1:N---> 		туры
ALTER TABLE trvl_tours
ADD CONSTRAINT trvl_tours_tour_type_fk
FOREIGN KEY (id_tour_type)
REFERENCES trvl_tour_types(id);
-- страны 		---1:N---> 		туры
ALTER TABLE trvl_tours
ADD CONSTRAINT trvl_tours_country_fk
FOREIGN KEY (id_country)
REFERENCES trvl_country(id);
-- питание 		---1:N---> 		туры
ALTER TABLE trvl_tours
ADD CONSTRAINT trvl_tours_nutrition_fk
FOREIGN KEY (id_nutrition)
REFERENCES trvl_nutrition(id);
-- скидки 		---1:N---> 		туры
ALTER TABLE trvl_tours
ADD CONSTRAINT trvl_tours_discount_fk
FOREIGN KEY (id_discount)
REFERENCES trvl_discount(id);
-- сотрудники 	---1:N---> 		продажи
ALTER TABLE trvl_sales
ADD CONSTRAINT trvl_sales_employee_fk
FOREIGN KEY (id_employee)
REFERENCES trvl_employee(id);
-- сотрудники 	---1:N---> 		возвраты
ALTER TABLE trvl_refunds
ADD CONSTRAINT trvl_refunds_employee_fk
FOREIGN KEY (id_employee)
REFERENCES trvl_employee(id);
-- клиенты 		---1:N---> 		продажи
ALTER TABLE trvl_sales
ADD CONSTRAINT trvl_sales_client_fk
FOREIGN KEY (id_client)
REFERENCES trvl_client(id);
-- клиенты 		---1:N---> 		возвраты
ALTER TABLE trvl_refunds
ADD CONSTRAINT trvl_refunds_client_fk
FOREIGN KEY (id_client)
REFERENCES trvl_client(id);
-- туры 		---1:N---> 		продажи
ALTER TABLE trvl_sales
ADD CONSTRAINT trvl_sales_tours_fk
FOREIGN KEY (id_tour)
REFERENCES trvl_tours(id);
-- туры 		---1:N---> 		возвраты
ALTER TABLE trvl_refunds
ADD CONSTRAINT trvl_refunds_tours_fk
FOREIGN KEY (id_tour)
REFERENCES trvl_tours(id);
-- продажи 		---1:N---> 		возвраты
ALTER TABLE trvl_refunds
ADD CONSTRAINT trvl_refunds_sales_fk
FOREIGN KEY (id_sale)
REFERENCES trvl_sales(id);
-- Миграции - конец.