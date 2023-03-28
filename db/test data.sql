-- Данные - начало:
-- Справочник: питание
insert into TRVL_NUTRITION (id, "name", description)
values (1, 'здоровое питание', 'чай/кофе/молоко, овяснная каша, гдечневая каша, мясо курицы, сметана, кефир');
insert into TRVL_NUTRITION (id, "name", description)
values (2, 'обычное', 'чай/кофе, шоколад, вермишель, мясо говядины, яишница');

-- Справочник: виды туров
insert into TRVL_TOUR_TYPES (id, "type")
values (1, 'Оздоровительные туры');
insert into TRVL_TOUR_TYPES (id, "type")
values (2, 'Познавательные туры');
insert into TRVL_TOUR_TYPES (id, "type")
values (3, 'Профессионально-деловые туры');
insert into TRVL_TOUR_TYPES (id, "type")
values (4, 'Спортивные туры');
insert into TRVL_TOUR_TYPES (id, "type")
values (5, 'Религиозные туры');
insert into TRVL_TOUR_TYPES (id, "type")
values (6, 'Индивидуальные туры');
insert into TRVL_TOUR_TYPES (id, "type")
values (7, 'Туры со специальными предложениями');
insert into TRVL_TOUR_TYPES (id, "type")
values (8, 'Туры по горящим путевкам');
insert into TRVL_TOUR_TYPES (id, "type")
values (9, 'Комбинированные туры');
insert into TRVL_TOUR_TYPES (id, "type")
values (10, 'Туры на двоих');
insert into TRVL_TOUR_TYPES (id, "type")
values (11, 'Автобусные туры');
insert into TRVL_TOUR_TYPES (id, "type")
values (12, 'Круизные туры');
insert into TRVL_TOUR_TYPES (id, "type")
values (13, 'Детские туры');

-- Справочник: отели
insert into TRVL_HOTELS (id, name, "type", "class")
values (1, 'Гельвеция', 'Гостиница', 3);
insert into TRVL_HOTELS (id, name, "type", "class")
values (2, 'Bronza', 'отель', 4);
insert into TRVL_HOTELS (id, name, "type", "class")
values (3, 'Кино Хостел на Выборгской', 'Бизнес-отели', 5);
insert into TRVL_HOTELS (id, name, "type", "class")
values (4, 'Галунов Отель', 'Отели-курорты', 3);
insert into TRVL_HOTELS (id, name, "type", "class")
values (5, 'Rixos Красная Поляна', 'резорт-отели', 4);
insert into TRVL_HOTELS (id, name, "type", "class")
values (6, 'Александр Хаус', 'Бутик-отели', 5);
insert into TRVL_HOTELS (id, name, "type", "class")
values (7, 'Alean Family Sputnik', 'Апартаменты', 3);
insert into TRVL_HOTELS (id, name, "type", "class")
values (8, 'Отель Пушка Инн', 'апарт-отели', 4);
insert into TRVL_HOTELS (id, name, "type", "class")
values (9, 'Отель Rosa Springs', 'Bed and Breakfast', 5);
insert into TRVL_HOTELS (id, name, "type", "class")
values (10, 'Лахта Плаза', 'Горнолыжные отели', 3);
insert into TRVL_HOTELS (id, name, "type", "class")
values (11, 'Отель Долина 960', 'Хостелы', 4);
insert into TRVL_HOTELS (id, name, "type", "class")
values (12, 'Отель Garden Street', 'Мини-гостиницы', 5);
insert into TRVL_HOTELS (id, name, "type", "class")
values (13, 'Соул Китчен Джуниор Хостел', 'мини-отели', 3);
insert into TRVL_HOTELS (id, name, "type", "class")
values (14, '1912 квартир', 'Спа-отели', 4);
insert into TRVL_HOTELS (id, name, "type", "class")
values (15, 'Форвард Апартотель', 'Мотели', 5);
insert into TRVL_HOTELS (id, name, "type", "class")
values (16, 'Лотте Отель Санкт-Петербург', 'Гестхаусы', 3);
insert into TRVL_HOTELS (id, name, "type", "class")
values (17, 'Brick Design Отель', 'гостевые дома', 4);
insert into TRVL_HOTELS (id, name, "type", "class")
values (18, 'Центр Отель', 'Лоджи', 5);
insert into TRVL_HOTELS (id, name, "type", "class")
values (19, 'Отель "Дворец Трезини"', 'Кемпинги', 2);
insert into TRVL_HOTELS (id, name, "type", "class")
values (20, 'MAJESTIC by Alean', 'ботели', 2);
insert into TRVL_HOTELS (id, name, "type", "class")
values (21, 'Премьер отель', 'кондоминиумы', 2);
insert into TRVL_HOTELS (id, name, "type", "class")
values (22, 'теплоход Аврора', 'Флотель', 1);

-- Справочник: скидки
insert into TRVL_DISCOUNT (id, "name", discount_percent)
values (1, 'семейный', 10);
insert into TRVL_DISCOUNT (id, "name", discount_percent)
values (2, 'многодетные', 30);
insert into TRVL_DISCOUNT (id, "name", discount_percent)
values (3, 'военные', 50);
insert into TRVL_DISCOUNT (id, "name", discount_percent)
values (4, 'пенсионеры', 50);
insert into TRVL_DISCOUNT (id, "name", discount_percent)
values (5, 'инвалидность', 70);
insert into TRVL_DISCOUNT (id, "name", discount_percent)
values (6, 'студенты', 20);

-- Справочник: страны
insert into TRVL_COUNTRY (id, "name")
values (1, 'Россия');
insert into TRVL_COUNTRY (id, "name")
values (2, 'Австралия');
insert into TRVL_COUNTRY (id, "name")
values (3, 'Австрия');
insert into TRVL_COUNTRY (id, "name")
values (4, 'Багамы');
insert into TRVL_COUNTRY (id, "name")
values (5, 'Армения');
insert into TRVL_COUNTRY (id, "name")
values (6, 'Бразилия');
insert into TRVL_COUNTRY (id, "name")
values (7, 'Великобритания');
insert into TRVL_COUNTRY (id, "name")
values (8, 'Гаити');
insert into TRVL_COUNTRY (id, "name")
values (9, 'Греция');
insert into TRVL_COUNTRY (id, "name")
values (10, 'Израиль');
insert into TRVL_COUNTRY (id, "name")
values (11, 'Египет');
insert into TRVL_COUNTRY (id, "name")
values (12, 'Индия');
insert into TRVL_COUNTRY (id, "name")
values (13, 'Италия');
insert into TRVL_COUNTRY (id, "name")
values (14, 'Канада');
insert into TRVL_COUNTRY (id, "name")
values (15, 'Китай');
insert into TRVL_COUNTRY (id, "name")
values (16, 'Мальдивы');
insert into TRVL_COUNTRY (id, "name")
values (17, 'ОАЭ');
insert into TRVL_COUNTRY (id, "name")
values (18, 'Перу');
insert into TRVL_COUNTRY (id, "name")
values (19, 'США');
insert into TRVL_COUNTRY (id, "name")
values (20, 'Швейцария');
insert into TRVL_COUNTRY (id, "name")
values (21, 'Япония');
insert into TRVL_COUNTRY (id, "name")
values (22, 'Ямайка');
insert into TRVL_COUNTRY (id, "name")
values (23, 'Чили');

-- Справочник: сотрудники
insert into TRVL_EMPLOYEE (id, name, surname, patronymic, phone)
values (1, 'Римма', 'Водопьянова', 'Якововна', '+7 (956) 782-18-88');
insert into TRVL_EMPLOYEE (id, name, surname, patronymic, phone)
values (2, 'Пелагея', 'Свечина', 'Валерьевна', '+7 (992) 348-58-37');
insert into TRVL_EMPLOYEE (id, name, surname, patronymic, phone)
values (3, 'Юрий', 'Витаев', 'Кириллович', '+7 (973) 464-78-60');
insert into TRVL_EMPLOYEE (id, name, surname, patronymic, phone)
values (4, 'Кузьма', 'Эмский', 'Юлианович', '+7 (979) 416-79-75');
insert into TRVL_EMPLOYEE (id, name, surname, patronymic, phone)
values (5, 'Захар', 'Онегин', 'Егорович', '+7 (974) 138-34-12');

-- Справочник: клиенты
insert into TRVL_CLIENT (id, name, surname, patronymic, phone, passport)
values (1, 'Евгений', 'Конаков', 'Максимоич', '+7 (973) 301-68-11', 'Серия' || chr(10) || '4069' || chr(10) || 'Номер' || chr(10) || '788443' || chr(10) || 'Дата выдачи' || chr(10) || '10.10.2014' || chr(10) || 'Код подразделения' || chr(10) || '870-869' || chr(10) || 'Дата рождения' || chr(10) || '23.07.1972' || chr(10) || 'Кем выдан' || chr(10) || 'Управление внутренних дел по г. Златоуст' || chr(10) || 'Адрес проживания' || chr(10) || 'Россия, г. Златоуст, Тихая ул., д. 19 кв.4' || chr(10) || 'Адрес регистрации' || chr(10) || 'Россия, г. Чебоксары, Советский пер., д. 15 кв.179');
insert into TRVL_CLIENT (id, name, surname, patronymic, phone, passport)
values (2, 'Афанасий', 'Шипулин', 'Евгеньевич', '+7 (987) 868-17-25', 'Серия' || chr(10) || '4645' || chr(10) || 'Номер' || chr(10) || '168918' || chr(10) || 'Дата выдачи' || chr(10) || '04.02.2013' || chr(10) || 'Код подразделения' || chr(10) || '570-457' || chr(10) || 'Дата рождения' || chr(10) || '19.07.1969' || chr(10) || 'Кем выдан' || chr(10) || 'Отделением УФМС России в г. Сыктывкар' || chr(10) || 'Адрес проживания' || chr(10) || 'Россия, г. Сыктывкар, Вокзальная ул., д. 19 кв.144' || chr(10) || 'Адрес регистрации' || chr(10) || 'Россия, г. Одинцово, Социалистическая ул., д. 19 кв.37');
insert into TRVL_CLIENT (id, name, surname, patronymic, phone, passport)
values (3, 'Юрий', 'Юдин', 'Ефимович', '+7 (985) 587-33-14', 'Серия' || chr(10) || '4069' || chr(10) || 'Номер' || chr(10) || '788443' || chr(10) || 'Дата выдачи' || chr(10) || '10.10.2014' || chr(10) || 'Код подразделения' || chr(10) || '870-869' || chr(10) || 'Дата рождения' || chr(10) || '23.07.1972' || chr(10) || 'Кем выдан' || chr(10) || 'Управление внутренних дел по г. Златоуст' || chr(10) || 'Адрес проживания' || chr(10) || 'Россия, г. Златоуст, Тихая ул., д. 19 кв.4' || chr(10) || 'Адрес регистрации' || chr(10) || 'Россия, г. Чебоксары, Советский пер., д. 15 кв.179');
insert into TRVL_CLIENT (id, name, surname, patronymic, phone, passport)
values (4, 'Герасим', 'Кандаков', 'Тимофеевич', '+7 (946) 294-43-13', 'Серия' || chr(10) || '4673' || chr(10) || 'Номер' || chr(10) || '667809' || chr(10) || 'Дата выдачи' || chr(10) || '19.06.2019' || chr(10) || 'Код подразделения' || chr(10) || '600-638' || chr(10) || 'Дата рождения' || chr(10) || '17.08.1971' || chr(10) || 'Кем выдан' || chr(10) || 'ОВД России по г. Новокуйбышевск' || chr(10) || 'Адрес проживания' || chr(10) || 'Россия, г. Новокуйбышевск, Набережная ул., д. 12 кв.6' || chr(10) || 'Адрес регистрации' || chr(10) || 'Россия, г. Артем, Колхозная ул., д. 10 кв.156');
insert into TRVL_CLIENT (id, name, surname, patronymic, phone, passport)
values (5, 'Константин', 'Соловьев', 'Трофимович', '+7 (954) 571-38-12', 'Серия' || chr(10) || '4980' || chr(10) || 'Номер' || chr(10) || '948052' || chr(10) || 'Дата выдачи' || chr(10) || '05.02.2015' || chr(10) || 'Код подразделения' || chr(10) || '100-125' || chr(10) || 'Дата рождения' || chr(10) || '24.02.1989' || chr(10) || 'Кем выдан' || chr(10) || 'ОУФМС России по г. Оренбург' || chr(10) || 'Адрес проживания' || chr(10) || 'Россия, г. Оренбург, Восточная ул., д. 24 кв.186' || chr(10) || 'Адрес регистрации' || chr(10) || 'Россия, г. Брянск, ЯнкиКупалы ул., д. 10 кв.154');

-- Справочник: туры
insert into TRVL_TOURS (id, name, price, departure_date, departure_city, operator_name, number_of_adults, number_of_children, number_of_days, number_of_nights, id_country, id_tour_type, id_nutrition, id_hotel, id_discount)
values (21, 'Albatros Palace Sharm (ex. Cyrene Grand)', 79000, to_timestamp_tz('28-02-2020 23:02:11.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 'Diastanbu', 'tour rove journey', '3', '1', '12', '13', 9, 6, 2, 6, 2);
insert into TRVL_TOURS (id, name, price, departure_date, departure_city, operator_name, number_of_adults, number_of_children, number_of_days, number_of_nights, id_country, id_tour_type, id_nutrition, id_hotel, id_discount)
values (22, 'Rixos Premium Magawish (ex. Magawish Village & Resort)', 160000, to_timestamp_tz('17-12-2020 22:10:15.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 'Ekhuzrille', 'tour & son', '2', '2', '14', '13', 9, 2, 1, 2, 4);
insert into TRVL_TOURS (id, name, price, departure_date, departure_city, operator_name, number_of_adults, number_of_children, number_of_days, number_of_nights, id_country, id_tour_type, id_nutrition, id_hotel, id_discount)
values (23, 'Rixos Premium Seagate (ex. Rixos Seagate Sharm)', 200000, to_timestamp_tz('06-01-2020 23:22:25.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 'Khakhison', 'tour drive', '2', '2', '5', '4', 10, 8, 2, 8, 5);
insert into TRVL_TOURS (id, name, price, departure_date, departure_city, operator_name, number_of_adults, number_of_children, number_of_days, number_of_nights, id_country, id_tour_type, id_nutrition, id_hotel, id_discount)
values (24, 'King Tut Aqua Park Beach Resort (ех. King Tut Resort)', 43000, to_timestamp_tz('29-12-2020 22:14:26.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 'Duadale', 'tourior', '1', '3', '7', '8', 10, 6, 1, 7, 3);
insert into TRVL_TOURS (id, name, price, departure_date, departure_city, operator_name, number_of_adults, number_of_children, number_of_days, number_of_nights, id_country, id_tour_type, id_nutrition, id_hotel, id_discount)
values (25, 'Royal Lagoons Aqua Park', 68000, to_timestamp_tz('20-12-2020 22:02:42.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 'Duadale', 'tour landmarks', '2', '2', '30', '31', 4, 6, 2, 2, 2);
insert into TRVL_TOURS (id, name, price, departure_date, departure_city, operator_name, number_of_adults, number_of_children, number_of_days, number_of_nights, id_country, id_tour_type, id_nutrition, id_hotel, id_discount)
values (26, 'Ali Baba Palace', 58000, to_timestamp_tz('28-12-2020 22:07:27.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 'Khakhison', 'tourian', '1', '3', '15', '14', 4, 2, 1, 2, 1);
insert into TRVL_TOURS (id, name, price, departure_date, departure_city, operator_name, number_of_adults, number_of_children, number_of_days, number_of_nights, id_country, id_tour_type, id_nutrition, id_hotel, id_discount)
values (27, 'Le Pacha Resort', 43000, to_timestamp_tz('28-01-2020 23:05:37.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 'Plivaco', 'tour IBC', '1', '3', '20', '21', 5, 5, 2, 4, 6);
insert into TRVL_TOURS (id, name, price, departure_date, departure_city, operator_name, number_of_adults, number_of_children, number_of_days, number_of_nights, id_country, id_tour_type, id_nutrition, id_hotel, id_discount)
values (28, 'Zahabia Hotel & Beach Resort (ex. Zahabia Village)', 32000, to_timestamp_tz('11-12-2020 22:15:21.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 'Khiujance', 'tour sight-seeing trip', '3', '1', '17', '16', 5, 6, 1, 7, 4);

-- История: продаж
insert into TRVL_SALES (id, "date", "count", id_tour, id_client, id_employee)
values (1, to_timestamp_tz('05-01-2020 23:00:46.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 1, 22, 3, 4);
insert into TRVL_SALES (id, "date", "count", id_tour, id_client, id_employee)
values (2, to_timestamp_tz('09-12-2020 22:20:54.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 2, 26, 2, 2);
insert into TRVL_SALES (id, "date", "count", id_tour, id_client, id_employee)
values (3, to_timestamp_tz('27-12-2020 22:09:10.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 3, 26, 5, 3);
insert into TRVL_SALES (id, "date", "count", id_tour, id_client, id_employee)
values (4, to_timestamp_tz('12-02-2020 23:13:20.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 1, 25, 1, 2);
insert into TRVL_SALES (id, "date", "count", id_tour, id_client, id_employee)
values (5, to_timestamp_tz('12-01-2020 23:08:24.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 2, 26, 4, 4);
insert into TRVL_SALES (id, "date", "count", id_tour, id_client, id_employee)
values (6, to_timestamp_tz('25-01-2020 23:17:19.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 3, 27, 2, 2);
insert into TRVL_SALES (id, "date", "count", id_tour, id_client, id_employee)
values (7, to_timestamp_tz('14-01-2020 23:14:30.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 4, 27, 4, 3);
insert into TRVL_SALES (id, "date", "count", id_tour, id_client, id_employee)
values (8, to_timestamp_tz('16-02-2020 23:01:31.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 1, 23, 3, 4);
insert into TRVL_SALES (id, "date", "count", id_tour, id_client, id_employee)
values (9, to_timestamp_tz('31-01-2020 23:02:17.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 2, 26, 5, 4);
insert into TRVL_SALES (id, "date", "count", id_tour, id_client, id_employee)
values (10, to_timestamp_tz('14-01-2020 23:23:52.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 2, 28, 3, 5);

-- История: возвратов
insert into TRVL_REFUNDS (id, "date", "count", id_tour, id_client, id_employee, id_sale, reason)
values (1, to_timestamp_tz('06-01-2020 23:00:46.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 1, 22, 3, 4, 1, 'пандемия');
insert into TRVL_REFUNDS (id, "date", "count", id_tour, id_client, id_employee, id_sale, reason)
values (2, to_timestamp_tz('11-12-2020 22:20:54.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 2, 26, 2, 2, 2, 'пандемия');
insert into TRVL_REFUNDS (id, "date", "count", id_tour, id_client, id_employee, id_sale, reason)
values (3, to_timestamp_tz('12-02-2020 23:08:24.000000 +03:00', 'dd-mm-yyyy hh24:mi:ss.ff tzh:tzm'), 2, 26, 4, 4, 5, 'по личным и иным причинам');
-- Данные - конец.