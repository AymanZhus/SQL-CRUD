CREATE DATABASE ARM;
GO
USE ARM;

--СОЗДАНИЕ ТАБЛИЦ

--ОТДЕЛЫ
CREATE TABLE Deportment(
	Deportment_id int IDENTITY(1,1),
	Amount_Employees int,
	Type_department varchar(255)
	PRIMARY KEY (Deportment_id)
);

--ОБРАЗОВАНИЕ
CREATE TABLE Education(
	Education_id int IDENTITY(1,1),
	Type_Education varchar(255),
	Speciality varchar(255),
	PRIMARY KEY(Education_id)
);

--ИСТОРИЯ ПОВЫШЕНИЯ
CREATE TABLE History(
	History_id int IDENTITY(1,1),
	First_Position varchar(255),
	Next_Position varchar(255),
	PRIMARY KEY(History_id)
);

--ДОЛЖНОСТЬ
CREATE TABLE Position(
	Position_id int IDENTITY(1,1),
	Position_name varchar(255),
	Salary int, --Оклад
	PRIMARY KEY (Position_id)
);

--ПОВЫШЕНИЕ КВАЛИФИКАЦИИ
CREATE TABLE QualificationUP(
	QualificationUP_id int IDENTITY(1,1),
	Boost_type varchar(255),
	Speciality varchar(255)
	PRIMARY KEY (QualificationUP_id)
);

--ПРЕДПРИЯТИЕ
CREATE TABLE Company(
	Company_id int IDENTITY(1,1),
	Company_type varchar(255),
	Amount_department int,
	Amount_Employees int,
	Specialty varchar (255),
	Annual_profit int
	PRIMARY KEY (Company_id)
);

--СОТРУДНИКИ
CREATE TABLE Employees(
	Employee_id int IDENTITY(1,1),
	First_name varchar(255),
	name varchar(255),
	Last_name varchar(255),
	BirthDay DATE,
	Gender varchar(255),
	Citizenship varchar (255),
	Education_id int FOREIGN KEY REFERENCES Education(Education_id),
	Position_id int FOREIGN KEY REFERENCES Position(Position_id),
	Company_id int FOREIGN KEY REFERENCES Company(Company_id),
	Deportment_id int FOREIGN KEY REFERENCES Deportment(Deportment_id),
	QualificationUP_id int FOREIGN KEY REFERENCES QualificationUP(QualificationUP_id),
	History_id int FOREIGN KEY REFERENCES History(History_id)
	PRIMARY KEY (Employee_id)
);

--ПЕРСОНАЛЬНЫЕ ДАННЫЕ
CREATE TABLE PersonalData(
	Employee_id int FOREIGN KEY REFERENCES Employees(Employee_id),
	Numb_Passport varchar(255),
	Snils_Numb varchar(255),
	Inn_Numb varchar(255),
);


--ЗАПОЛНЕНИЕ ТАБЛИЦ
--ОТДЕЛЫ
INSERT INTO Deportment(Amount_Employees, Type_department) values (5, 'Отдел кадров');
INSERT INTO Deportment(Amount_Employees, Type_department) values (6, 'Отдел финансов');
INSERT INTO Deportment(Amount_Employees, Type_department) values (7, 'Отдел продаж');
INSERT INTO Deportment(Amount_Employees, Type_department) values (10, 'Отдел контроля качества');
INSERT INTO Deportment(Amount_Employees, Type_department) values (8, 'Отдел маркетинга');
INSERT INTO Deportment(Amount_Employees, Type_department) values (8, 'IT отдел');
INSERT INTO Deportment(Amount_Employees, Type_department) values (8, 'Юридический отдел');
INSERT INTO Deportment(Amount_Employees, Type_department) values (8, 'Отдел технической поддержки');

--ОБРАЗОВАНИЕ
INSERT INTO Education(Type_Education, Speciality) values ('Среднее профессиональное образование','Экономика');
INSERT INTO Education(Type_Education, Speciality) values ('Высшее образование - Бакалавриат','Экономика');
INSERT INTO Education(Type_Education, Speciality) values ('Высшее образование - Бакалавриат','Менеджмент');
INSERT INTO Education(Type_Education, Speciality) values ('Высшее образование - Бакалавриат','Экономика и управление');
INSERT INTO Education(Type_Education, Speciality) values ('Высшее образование - Бакалавриат','Маркетинг');
INSERT INTO Education(Type_Education, Speciality) values ('Высшее образование - Магистратура','Маркетинг');
INSERT INTO Education(Type_Education, Speciality) values ('Высшее образование - Бакалавриат','Юриспруденция');
INSERT INTO Education(Type_Education, Speciality) values ('Высшее образование - Бакалавриат','Техническая эксплуатация и обслуживание электрического и электромеханического оборудования');
INSERT INTO Education(Type_Education, Speciality) values ('Высшее образование - Бакалавриат','Техническое образование');

--ДОЛЖНОСТЬ
INSERT INTO Position(Position_name, Salary) values ('Начальник отдела кадров', 42000);
INSERT INTO Position(Position_name, Salary) values ('Инспектор по кадрам', 4000);
INSERT INTO Position(Position_name, Salary) values ('Табельщик', 12000);
INSERT INTO Position(Position_name, Salary) values ('Финансовый директор', 40000);
INSERT INTO Position(Position_name, Salary) values ('Главный бухгалтер', 65000);
INSERT INTO Position(Position_name, Salary) values ('Руководитель отдела продаж', 65000);
INSERT INTO Position(Position_name, Salary) values ('Директор по продажам', 40000);
INSERT INTO Position(Position_name, Salary) values ('Руководитель отдела контроля качества', 35000);
INSERT INTO Position(Position_name, Salary) values ('Специалист контроля качества', 25000);
INSERT INTO Position(Position_name, Salary) values ('Специалист по сетевому обеспечению', 30000);
INSERT INTO Position(Position_name, Salary) values ('Юрисконсульт', 25000);
INSERT INTO Position(Position_name, Salary) values ('Специалист технической поддержки', 25000);
INSERT INTO Position(Position_name, Salary) values ('Старший Юрисконсульт', 28000);
INSERT INTO Position(Position_name, Salary) values ('Бухгалтер', 25000);
INSERT INTO Position(Position_name, Salary) values ('Стажер табельщик', 5000);
INSERT INTO Position(Position_name, Salary) values ('Стажер технической поддержки', 25000);

--ПРЕДПРИЯТИЕ
INSERT INTO Company(Company_type, Amount_department, Amount_Employees) values ('Государственное',2,11);
INSERT INTO Company(Company_type, Amount_department, Amount_Employees) values ('Муниципальное',3, 26);
INSERT INTO Company(Company_type, Amount_department, Amount_Employees) values ('Частное',2, 16);

--История повышения
INSERT INTO History(First_Position,Next_Position) values ('Юрисконсульт', 'Старший Юрисконсульт');
INSERT INTO History(First_Position,Next_Position) values ('Бухгалтер', 'Главный бухгалтер');
INSERT INTO History(First_Position,Next_Position) values ('Стажер табельщик', 'Табельщик');
INSERT INTO History(First_Position,Next_Position) values ('Стажер технической поддержки', 'Специалист технической поддержки');

--Повышение квалификации
INSERT INTO QualificationUP(Boost_type, Speciality) values ('Краткосрочное', 'Бухгалетрский учет');
INSERT INTO QualificationUP(Boost_type, Speciality) values ('Тематическое', 'Информационная безопасность');
INSERT INTO QualificationUP(Boost_type, Speciality) values ('Длительное', 'Экономическая безопасность');
INSERT INTO QualificationUP(Boost_type, Speciality) values ('Длительное', 'Повышение уровня продаж');


--СОТРУДНИКИ
INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id,History_id) 
values ('Авдеева','Ульяна','Ивановна', '27.01.1991', 'ж', 'Россия', 2, 12, 2, 1, 3);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id,QualificationUP_id)
values ('Борисов','Елисей','Фёдорович', '05.08.1992', 'м', 'Россия', 4, 15, 3, 3, 4);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id,QualificationUP_id)
values ('Волкова','Ксения','Алексеевна', '09.09.2001', 'ж', 'Россия', 5, 16, 1, 3, 4);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id) 
values ('Добрынин','Иван','Дмитриевич', '27.08.1992', 'м', 'Россия', 6, 18, 2, 4);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id,QualificationUP_id,History_id) 
values ('Зимина ','Анастасия ','Романовна', '08.02.1996', 'ж', 'Россия', 9, 23, 3, 7, 5, 1);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id,History_id) 
values ('Ильин ','Кирилл ','Романович', '24.04.1997', 'м', 'Россия', 1, 14, 1, 2, 2);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id,QualificationUP_id,History_id) 
values ('Корчагина','Злата','Савельевна', '01.08.1999', 'ж', 'Казахстан', 8, 22, 3, 8, 2, 4);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id,QualificationUP_id)
values ('Кузнецов ','Тимур ','Даниилович', '07.11.1999', 'м', 'Россия', 7, 20, 2, 8, 3);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id)
values ('Лапшина', 'Анастасия', 'Константиновна', '04.03.2002', 'ж', 'Россия', 4, 10, 2, 1);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id)
values ('Лебедев', 'Алексей', 'Захарович', '23.05.1994', 'м', 'Россия', 4, 11, 2, 1);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id)
values ('Никитина', 'Алиса', 'Глебовна', '19.09.1997', 'ж', 'Россия', 2, 13, 2, 2);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id)
values ('Озеров', 'Егор', 'Кириллович', '29.09.1994', 'м', 'Россия', 3, 19, 2, 4);



INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id) 
values ('Любимова','Вероника','Тимофеевна', '27.09.1996', 'ж', 'Россия', 9, 21, 3, 7);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id) 
values ('Сорокин ','Владимир ','Алексеевич', '09.06.1996', 'м', 'Россия', 9, 21, 3, 7);

--ЗАПРОСЫ

--Добавление нового сотрудника
INSERT INTO Employees(First_name, name, Last_name, BirthDay, Gender, Citizenship, 
Education_id, Position_id, Company_id, Deportment_id, QualificationUP_id, History_id)
values ('Фамилия', 'Имя', 'Отчество', 'День рождения', 'Пол м/ж', 'Гражданство', 
'Номер образования', 'Номер должности', 'Номер предприятия', 'Номер отдела', 'Номер повышения квалификации при наличии', 'Номер повышения должности при наличии');

--Изменение данных о сотруднике
UPDATE Employees SET First_name = 'Фамилия', name = 'Имя', Citizenship = 'Отчество', 
Education_id = 'Номер образования', Position_id = 'Номер должности', Company_id = 'Номер предприятия', Deportment_id = 'Номер отдела', 
QualificationUP_id = 'Номер повышения квалификации при наличии', History_id = 'Номер повышения должности при наличии'
WHERE Employee_id = 'Введите номер сотрудника, данные которого необходимо изменить';

--Вывод Юридического отдела
select * from Employees WHERE Deportment_id = 7 ORDER BY First_name ASC; 

--Вывод людей без повышения
select * from Employees WHERE (QualificationUP_id is NULL OR History_id is NULL) ORDER BY First_name ASC; 

--Вывод всех людей с не российским гражданством
select * from Employees WHERE Citizenship <> 'Россия' ORDER BY First_name ASC; 




