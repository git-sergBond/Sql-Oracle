Язык программирования: Delphi

Структура проекта:
doc - документация
db - миграции БД
project - исходный код клиента

Требуемое программное обеспечение для сборки проекта, которое нужно установить:
СУБД Oracle 10g
IDE: borland delphi 7
Зависимость для подключения к Oracle: Direct Oracle Access
Зависимость для генерации отчетов: FastReport 4.7
(Зависимости устанавливаются как установочные exe файлы)

Порядок миграции БД:
1. Открыть директорию "db"
2. Залогиниться как "sys"
3. Выполнить SQL скрипт "1 init db.sql"
4. Залогиниться логином/паролем из "credentials.txt"
5. Выполнить SQL скрипт "2 migrations.sql"
6. Выполнить SQL скрипт "3 test data.sql"
6. Выполнить SQL скрипт "4 reset seq.sql"
7. Для проверки корректности данных можно выполнить запросы "5 queries.sql"

ИНФОРМАЦИЯ ДЛЯ ПРЕПОДАВАТЕЛЯ:
Пимеры запросов sales:
- UPDATE, DELETE: https://github.com/git-sergBond/Sql-Oracle/blob/master/project/UnitSalesEditor.pas#L50-L84
- INSERT: https://github.com/git-sergBond/Sql-Oracle/blob/master/project/UnitRegisterSale.pas#L149-L161
Примеры запросов таблицы refunds: 
- UPDATE, DELETE: https://github.com/git-sergBond/Sql-Oracle/blob/master/project/UnitRefundsEditor.pas#L56-L90
- INSERT: https://github.com/git-sergBond/Sql-Oracle/blob/master/project/UnitCreateRefund.pas#L150-L168
