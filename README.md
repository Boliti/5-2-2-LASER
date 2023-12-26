# Коллективный проект команды 5-2-2
## Тема "Отчеты ФАУ о лазерных инцидентах"
#### Этот проект разработан для создания базы данных о отчетах ФАУ о лазерных инцидентах.
## Описание нашего проекта
#### CSV датасет на тему "Отчеты ФАУ о лазерных инцидентах" [Kagle](https://www.kaggle.com/datasets/crawford/laser-incident-report/)
### Содержание базы данных 
> Этот датасет содержит: Дату отчета, время лазерного инцидента, AC/ID идентификатор самолета, количество самолетов, тип самолета, высоту, аббревиатуру ближайшего крупного города, цвет лазера, были ли травмы, ближайший город, Штат.
>
### Области применения этой базы данных
> Область применения базы данных с отчетом Федерального управления гражданской авиации США о лазерных инцидентах с 2010 по 2014 год может быть связана с обеспечением безопасности воздушного движения. База данных содержит информацию о случаях, когда лазерные устройства были направлены на самолеты или вертолеты, что может создавать угрозу для безопасности пассажиров и экипажа. Отчет ФАУ может использоваться для анализа и предотвращения подобных инцидентов в будущем, а также для разработки рекомендаций по обеспечению безопасности воздушного движения при использовании лазерных устройств.

## Процесс создания коллективного проекта

### Создание базы данных
>Для создания баз данных используются специальные программы — СУБД (системы управления базами данных). Они позволяют создавать структуры баз данных, описывать связи между таблицами, индексировать поля для быстрого поиска и т.д. Также СУБД обеспечивают целостность и безопасность хранимых данных.
>

1. CREATE DATABASE accident_reporting; - Это команда, которая создает новую базу данных с названием "accident_reporting".
2. USE accident_reporting; - Это команда, которая указывает, какую базу данных использовать для выполнения последующих операций. В данном случае она указывает, что все следующие операции должны быть выполнены в базе данных "accident_reporting".
3. CREATE TABLE IF NOT EXISTS accidents(...); - Это команда для создания таблицы "accidents" в базе данных "accident_reporting". Если таблица уже существует, то команда не выполняется.
4. LOAD DATA INFILE - Это команда для загрузки данных из файла в таблицу. Она позволяет импортировать данные из текстового файла в таблицу базы данных.

![image](https://github.com/Boliti/5-2-2-LASER/assets/146072846/848ffad1-f6a4-4333-ba2c-2a5d48b354fa)
![image](https://github.com/Boliti/5-2-2-LASER/assets/146072846/07519650-840a-4aa7-9aaf-e033811e91c5)
![image](https://github.com/Boliti/5-2-2-LASER/assets/146072846/20b68962-2324-4972-bb09-0e91b076f0ce)

### Создание ER-диаграммы
>Создание ER-диаграммы представляет собой процесс создания схемы базы данных с помощью графического интерфейса. ER-диаграмма (Entity-Relationship diagram) — это диаграмма, которая отображает сущности (объекты) и связи между ними в базе данных. В SQL для создания ER-диаграммы можно использовать различные инструменты, такие как MySQL Workbench, Toad Data Modeler и другие. Эти инструменты позволяют визуально проектировать структуру базы данных, включая таблицы, поля, связи и другие элементы.
В SQL для создания ER-диаграммы можно использовать различные инструменты, такие как MySQL Workbench, Toad Data Modeler и другие. Эти инструменты позволяют визуально проектировать структуру базы данных, включая таблицы, поля, связи и другие элементы.
>

Вот общий алгоритм создания ER-диаграммы в MySQL Workbench:

1. Запустите MySQL Workbench и откройте окно "SQL Editor".
2. Импортируйте структуру базы данных в MySQL Workbench, используя команду "Import". Выберите файл с описанием базы данных (обычно это файл .sql).
3. Создайте новую модель данных в окне "Models" (Модели данных).
4. В окне "Models" выберите созданную модель данных и нажмите правой кнопкой мыши. Выберите "Create Diagram" (Создать диаграмму) для создания новой ER-диаграммы.
5. В окне "Diagram" (Диаграмма) перетащите сущности (таблицы) из модели данных на диаграмму. Вы можете изменить их имена и внешний вид, щелкнув правой кнопкой мыши и выбрав соответствующие опции.
6. Для каждой сущности вы можете добавить атрибуты (поля) и определить их типы данных.
7. Определите связи между сущностями, перетащив линии связи между ними и указав тип связи (один-ко-многим, многие-ко-многим и т.д.).
8. Добавьте дополнительные элементы, такие как ограничения, триггеры и индексы, если это необходимо.
9. Сохраните ER-диаграмму, чтобы сохранить ее в файл или в базу данных.

Нормализация данных
>Нормализация данных в SQL - это процесс преобразования структуры базы данных таким образом, чтобы она соответствовала критериям нормальных форм. Это делается для уменьшения избыточности данных и предотвращения логических ошибок при обновлении и выборке данных. Нормализация не влияет на производительность операций чтения и записи данных, но может замедлить выполнение операций соединения нормализованных отношений при большом количестве данных.
>

### Участники коллективного проекта
* [Ялов Никита Дмитриевич](https://github.com/Boliti)
    - [x] Создание базы данных
    - [x] Распределение задач между участниками проекта
    - [x] Создания репозитория с открытой всем возможностью редактирования
    - [x] Контролирование хода разработки и реализации проекта
    - [x] Тестировка работоспособности базы данных
    - [ ] Создание ER-Диаграммы
    - [ ] Вывод полного скрипта базы
* [Иршикеева Адель Айратовна](https://github.com/Adel120305)
    - [x] Импорт данных в созданную базу данных
    - [x] Нормализация данных БД
* [Солодовников Никита Васильевич ](https://github.com/NikitaS1712) 
    - [ ] Разработка и запись участия (авторства) каждого члена команды
    - [ ] Создание документации по проекту, в том числе описание созданной БД 
* [Андреев Александр Андреевич](https://github.com/AlexAndreev120305)
    - [ ] Развернуть базу данных на web-сервере db4.net
    - [ ] Создание Docker для разворачивания базы данных
