# Коллективный проект команды 5-2-2
## Тема "Отчеты ФАУ о лазерных инцидентах"
#### Этот проект разработан для создания базы данных о отчетах ФАУ о лазерных инцидентах.
## Описание нашего проекта
#### CSV датасет на тему "Отчеты ФАУ о лазерных инцидентах" [Kagle](https://www.kaggle.com/datasets/crawford/laser-incident-report/)
### Содержание базы данных 
> Этот датасет содержит: Дату отчета, время лазерного инцидента, AC/ID идентификатор самолета, количество самолетов, тип самолета, высоту, аббревиатуру ближайшего крупного города, цвет лазера, были ли травмы, ближайший город, Штат.
>
### Области применения этой базы данных
> Область применения базы данных с отчетом Федерального управления гражданской авиации США о лазерных инцидентах с 2010 по 2014 год может быть связана с обеспечением безопасности воздушного движения. База данных содержит информацию о случаях, когда лазерные устройства были направлены на самолеты, что может создавать угрозу для безопасности пассажиров и экипажа. Отчет ФАУ может использоваться для анализа и предотвращения подобных инцидентов в будущем, а также для разработки рекомендаций по обеспечению безопасности воздушного движения при использовании лазерных устройств.

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
9. Сохраните ER-диаграмму, чтобы сохранить ее в файл или в базу данных.
   ![image](https://github.com/Boliti/5-2-2-LASER/assets/146071084/845a4073-4e99-4b17-a7a2-495ca9f91825)
   ![image](https://github.com/Boliti/5-2-2-LASER/assets/146071084/d0489793-0217-4b91-b590-079ae0af772c)
   ![image](https://github.com/Boliti/5-2-2-LASER/assets/146071084/edb4003f-2101-44f6-8978-5f07115ecbd9)




### Нормализация данных
>Нормализация данных в SQL - это процесс преобразования структуры базы данных таким образом, чтобы она соответствовала критериям нормальных форм. Это делается для уменьшения избыточности данных и предотвращения логических ошибок при обновлении и выборке данных. Нормализация не влияет на производительность операций чтения и записи данных, но может замедлить выполнение операций соединения нормализованных отношений при большом количестве данных.
>
### Заполнение БД данными
 LOAD DATA INFILE - Это команда для загрузки данных из файла в таблицу. Она позволяет импортировать данные из текстового файла в таблицу базы данных.
 
 INTO TABLE accidents - Импорт из файла в таблицу
 
 Если утверждение FIELDS не определено, то по умолчанию его параметры будут принимать следующие значения:
    FIELDS TERMINATED BY ',' - 
    ENCLOSED BY '"'
    ESCAPED BY '\\'
    IGNORE 1 LINES - для игнорирования заголовка имен столбцов в начале файла.

Эта функция преобразует str (строку) в DATE значение. Формат будет соответствовать вашему формату строки. Например, вы хотите преобразовать DATE из типа string в type, тогда MM/DD/YYYY также будет в DATE формате.DATEMM/DD/YYYY. Строка формата может содержать буквенные символы и спецификаторы формата, которые начинаются с символа процента (%).

%e - День месяца без начального нуля, например, 1,2, ...31
%b - Сокращенное название месяца из трех символов, например, Jan, Feb, Mar, и т.д.
%y - двузначный год. 

## Информация об атрибутах
![image](https://github.com/Boliti/5-2-2-LASER/assets/146071084/765450b9-4687-43ef-bad6-d5297c1cf08b)

### Визуализация данных в Python
>Для визуализации данных мы будем использовать Jupyter, различные библиотеки и сам файл laser_incidents.csv
Импорируем библиотеки, которые позволят визуализировать данные. Коротко об каждой из них:
>

1. pandas - это библиотека Python для обработки и анализа структурированных данных, в нашел случае с файлом heart.cav;
2. matplotlib.pyplot - это библиотека на языке Python для визуализации данных. В ней можно построить двумерные (плоские) и трехмерные графики;
3. math - это модуль предоставляет обширный функционал для работы с числами;
4. seaborn - библиотека для создания статистических графиков на Python. Она построена на основе matplotlib и тесно интегрируется со структурами данных pandas;
5. plotly.express - библиотека для визуализации данных.
>
![image](https://github.com/Boliti/5-2-2-LASER/assets/146436355/13255104-98e4-44ff-a7ec-06ba2df3975a)

Для того, чтобы начать работать с файлом, необходимо его копировать его в папку, где находится сам код IDLE.
>
![image](https://github.com/Boliti/5-2-2-LASER/assets/146436355/6925e136-937a-499a-a4b6-ffde8dd97dd8)
>
Теперь можно открыть наш csv при помощи библиотеки pandas. Выведем первые 5 строчек.
>
![image](https://github.com/Boliti/5-2-2-LASER/assets/146436355/768071ad-df8d-4d32-9e1c-1eaa6f597bdc)
![image](https://github.com/Boliti/5-2-2-LASER/assets/146436355/d50924da-a197-458b-81d1-e56ccfec9523)

Была записана информацию о каждой колонке, чтобы иметь представление о том, какие данные включает бд.
>
![image](https://github.com/Boliti/5-2-2-LASER/assets/146072846/b016e9f4-d9b8-483c-b71c-e6d6d757d99b)

Сделаем сначала круговую диаграмму применения лазеров по цвету 
>
![image](https://github.com/Boliti/5-2-2-LASER/assets/146072846/887add60-60f6-4470-b6a4-2d77e3d0a89c)
>
В результате у нас выводится следующая диаграмма:
![image](https://github.com/Boliti/5-2-2-LASER/assets/146072846/e717edd4-a809-48ec-9be9-7559c0c0806d)
>
Отсюда мы понимаем, что в (95%) случаев применялся лазер зеленого цвета 


Так же мы можем нормировать данные и создать круговую диаграмму применения лазеров по цветам 
>
![image](https://github.com/Boliti/5-2-2-LASER/assets/146072846/64690bc2-d270-44b7-a93d-22280b85e340)
>

Получаем вот такую диаграмму:
![image](https://github.com/Boliti/5-2-2-LASER/assets/146072846/64ecb100-4679-4cff-8420-19f0240ee7a7)
>
Смотря на эту диаграмму, можем сказать, что в данной ситуации лазеры красного и голубого цвета применялись практически одинаково  (30%) и (26%) соответственно, а лазер зеленого цвета был применен в (1.2%) случаев. 

Следующим шагом создаем круговую диаграмму распределения по Штатам 
>
![image](https://github.com/Boliti/5-2-2-LASER/assets/146072846/0a125b1e-ae5c-4a05-8f19-3b4303f98d9a)
>
Получаем такую даиграмму: 
![image](https://github.com/Boliti/5-2-2-LASER/assets/146072846/bf87044f-e544-4b8f-9926-ac28343eacff)
>
Из этой диаграммы мы понимаем, что чаще всего случаи напрпавления лазеров на самолеты были в Штате Калифорния (26%) и реже всего в Колорадо (3%). Население в Калифорнии состовляет 39млн человек, а в Колорадо всего 5.8млн, что влияет на частоту инцидентов.

Далее создаем диаграмму о высоте, на которой было зафиксировано попадание лазерного луча.
>
![image](https://github.com/Boliti/5-2-2-LASER/assets/146072846/3bcf6be0-a9ce-4a2d-990a-635e6f6953d7)
>
Получаем такую даиграмму: 
![image](https://github.com/Boliti/5-2-2-LASER/assets/146072846/6d54d2a6-c5da-4904-9087-991600244af4)
>
Из нее видно, что чаще всего инциденты происходили на высоте всего 3000 метров (12%) и реже всего на 12000 метров (2.4%). Связано это с тем, что попасть лазерным лучем в самолет, идущим на посадку или же только набирающим высоту- намного легче, чем попасть в самолет, летящим на максимально возможной высоте. 






### Развернуть базу данных на web-сервере db4free.net
Этапы выполнения «Разверстка на WEB-сервере db4free.net»
>
1.Проходим регистрацию на сайте db4free.net
>
2.Вводим SQL-скрипт создания базы данных и создания таблицы в этой бд
![image](https://github.com/Boliti/5-2-2-LASER/assets/105819970/8d78a96b-2710-408d-81a7-4ed323451891)
>
![image](https://github.com/Boliti/5-2-2-LASER/assets/105819970/193ce328-d3b6-479a-8327-4b38bf57923a)
![image](https://github.com/Boliti/5-2-2-LASER/assets/105819970/27b37301-c764-4512-941b-5348751f60d1)
![image](https://github.com/Boliti/5-2-2-LASER/assets/146436355/8dab9769-691f-4bc3-9961-14497b925e99)




### Участники коллективного проекта
* [Ялов Никита Дмитриевич](https://github.com/Boliti)
    - [x] Создание базы данных
    - [x] Распределение задач между участниками проекта
    - [x] Создания репозитория с открытой всем возможностью редактирования
    - [x] Контролирование хода разработки и реализации проекта
    - [x] Тестировка работоспособности базы данных
    - [x] Создание ER-Диаграммы
    - [X] Вывод полного скрипта базы
    - [X] Тестирование базы данных
    - [X] Bизуализация через Python
* [Иршикеева Адель Айратовна](https://github.com/Adel120305)
    - [x] Импорт данных в созданную базу данных
    - [X] Тестирование базы данных
* [Солодовников Никита Васильевич ](https://github.com/NikitaS1712) 
    - [x] Разработка и запись участия (авторства) каждого члена команды
    - [x] Создание документации по проекту, в том числе описание созданной БД
    - [X] Тестирование базы данных
    - [X] Обработка круговый диаграмм
* [Андреев Александр Андреевич](https://github.com/AlexAndreev120305)
    - [x] Развернуть базу данных на web-сервере db4free.net
    - [x] Тестирование базы данных
