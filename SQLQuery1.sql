CREATE DATABASE ARM;
GO
USE ARM;

--�������� ������

--������
CREATE TABLE Deportment(
	Deportment_id int IDENTITY(1,1),
	Amount_Employees int,
	Type_department varchar(255)
	PRIMARY KEY (Deportment_id)
);

--�����������
CREATE TABLE Education(
	Education_id int IDENTITY(1,1),
	Type_Education varchar(255),
	Speciality varchar(255),
	PRIMARY KEY(Education_id)
);

--������� ���������
CREATE TABLE History(
	History_id int IDENTITY(1,1),
	First_Position varchar(255),
	Next_Position varchar(255),
	PRIMARY KEY(History_id)
);

--���������
CREATE TABLE Position(
	Position_id int IDENTITY(1,1),
	Position_name varchar(255),
	Salary int, --�����
	PRIMARY KEY (Position_id)
);

--��������� ������������
CREATE TABLE QualificationUP(
	QualificationUP_id int IDENTITY(1,1),
	Boost_type varchar(255),
	Speciality varchar(255)
	PRIMARY KEY (QualificationUP_id)
);

--�����������
CREATE TABLE Company(
	Company_id int IDENTITY(1,1),
	Company_type varchar(255),
	Amount_department int,
	Amount_Employees int,
	Specialty varchar (255),
	Annual_profit int
	PRIMARY KEY (Company_id)
);

--����������
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

--������������ ������
CREATE TABLE PersonalData(
	Employee_id int FOREIGN KEY REFERENCES Employees(Employee_id),
	Numb_Passport varchar(255),
	Snils_Numb varchar(255),
	Inn_Numb varchar(255),
);


--���������� ������
--������
INSERT INTO Deportment(Amount_Employees, Type_department) values (5, '����� ������');
INSERT INTO Deportment(Amount_Employees, Type_department) values (6, '����� ��������');
INSERT INTO Deportment(Amount_Employees, Type_department) values (7, '����� ������');
INSERT INTO Deportment(Amount_Employees, Type_department) values (10, '����� �������� ��������');
INSERT INTO Deportment(Amount_Employees, Type_department) values (8, '����� ����������');
INSERT INTO Deportment(Amount_Employees, Type_department) values (8, 'IT �����');
INSERT INTO Deportment(Amount_Employees, Type_department) values (8, '����������� �����');
INSERT INTO Deportment(Amount_Employees, Type_department) values (8, '����� ����������� ���������');

--�����������
INSERT INTO Education(Type_Education, Speciality) values ('������� ���������������� �����������','���������');
INSERT INTO Education(Type_Education, Speciality) values ('������ ����������� - �����������','���������');
INSERT INTO Education(Type_Education, Speciality) values ('������ ����������� - �����������','����������');
INSERT INTO Education(Type_Education, Speciality) values ('������ ����������� - �����������','��������� � ����������');
INSERT INTO Education(Type_Education, Speciality) values ('������ ����������� - �����������','���������');
INSERT INTO Education(Type_Education, Speciality) values ('������ ����������� - ������������','���������');
INSERT INTO Education(Type_Education, Speciality) values ('������ ����������� - �����������','�������������');
INSERT INTO Education(Type_Education, Speciality) values ('������ ����������� - �����������','����������� ������������ � ������������ �������������� � �������������������� ������������');
INSERT INTO Education(Type_Education, Speciality) values ('������ ����������� - �����������','����������� �����������');

--���������
INSERT INTO Position(Position_name, Salary) values ('��������� ������ ������', 42000);
INSERT INTO Position(Position_name, Salary) values ('��������� �� ������', 4000);
INSERT INTO Position(Position_name, Salary) values ('���������', 12000);
INSERT INTO Position(Position_name, Salary) values ('���������� ��������', 40000);
INSERT INTO Position(Position_name, Salary) values ('������� ���������', 65000);
INSERT INTO Position(Position_name, Salary) values ('������������ ������ ������', 65000);
INSERT INTO Position(Position_name, Salary) values ('�������� �� ��������', 40000);
INSERT INTO Position(Position_name, Salary) values ('������������ ������ �������� ��������', 35000);
INSERT INTO Position(Position_name, Salary) values ('���������� �������� ��������', 25000);
INSERT INTO Position(Position_name, Salary) values ('���������� �� �������� �����������', 30000);
INSERT INTO Position(Position_name, Salary) values ('������������', 25000);
INSERT INTO Position(Position_name, Salary) values ('���������� ����������� ���������', 25000);
INSERT INTO Position(Position_name, Salary) values ('������� ������������', 28000);
INSERT INTO Position(Position_name, Salary) values ('���������', 25000);
INSERT INTO Position(Position_name, Salary) values ('������ ���������', 5000);
INSERT INTO Position(Position_name, Salary) values ('������ ����������� ���������', 25000);

--�����������
INSERT INTO Company(Company_type, Amount_department, Amount_Employees) values ('���������������',2,11);
INSERT INTO Company(Company_type, Amount_department, Amount_Employees) values ('�������������',3, 26);
INSERT INTO Company(Company_type, Amount_department, Amount_Employees) values ('�������',2, 16);

--������� ���������
INSERT INTO History(First_Position,Next_Position) values ('������������', '������� ������������');
INSERT INTO History(First_Position,Next_Position) values ('���������', '������� ���������');
INSERT INTO History(First_Position,Next_Position) values ('������ ���������', '���������');
INSERT INTO History(First_Position,Next_Position) values ('������ ����������� ���������', '���������� ����������� ���������');

--��������� ������������
INSERT INTO QualificationUP(Boost_type, Speciality) values ('�������������', '������������� ����');
INSERT INTO QualificationUP(Boost_type, Speciality) values ('������������', '�������������� ������������');
INSERT INTO QualificationUP(Boost_type, Speciality) values ('����������', '������������� ������������');
INSERT INTO QualificationUP(Boost_type, Speciality) values ('����������', '��������� ������ ������');


--����������
INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id,History_id) 
values ('�������','������','��������', '27.01.1991', '�', '������', 2, 12, 2, 1, 3);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id,QualificationUP_id)
values ('�������','������','Ը�������', '05.08.1992', '�', '������', 4, 15, 3, 3, 4);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id,QualificationUP_id)
values ('�������','������','����������', '09.09.2001', '�', '������', 5, 16, 1, 3, 4);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id) 
values ('��������','����','����������', '27.08.1992', '�', '������', 6, 18, 2, 4);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id,QualificationUP_id,History_id) 
values ('������ ','��������� ','���������', '08.02.1996', '�', '������', 9, 23, 3, 7, 5, 1);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id,History_id) 
values ('����� ','������ ','���������', '24.04.1997', '�', '������', 1, 14, 1, 2, 2);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id,QualificationUP_id,History_id) 
values ('���������','�����','����������', '01.08.1999', '�', '���������', 8, 22, 3, 8, 2, 4);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id,QualificationUP_id)
values ('�������� ','����� ','����������', '07.11.1999', '�', '������', 7, 20, 2, 8, 3);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id)
values ('�������', '���������', '��������������', '04.03.2002', '�', '������', 4, 10, 2, 1);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id)
values ('�������', '�������', '���������', '23.05.1994', '�', '������', 4, 11, 2, 1);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id)
values ('��������', '�����', '��������', '19.09.1997', '�', '������', 2, 13, 2, 2);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id)
values ('������', '����', '����������', '29.09.1994', '�', '������', 3, 19, 2, 4);



INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id) 
values ('��������','��������','����������', '27.09.1996', '�', '������', 9, 21, 3, 7);

INSERT INTO Employees(First_name,name,Last_name,BirthDay,Gender,Citizenship,Education_id,Position_id,Company_id,Deportment_id) 
values ('������� ','�������� ','����������', '09.06.1996', '�', '������', 9, 21, 3, 7);

--�������

--���������� ������ ����������
INSERT INTO Employees(First_name, name, Last_name, BirthDay, Gender, Citizenship, 
Education_id, Position_id, Company_id, Deportment_id, QualificationUP_id, History_id)
values ('�������', '���', '��������', '���� ��������', '��� �/�', '�����������', 
'����� �����������', '����� ���������', '����� �����������', '����� ������', '����� ��������� ������������ ��� �������', '����� ��������� ��������� ��� �������');

--��������� ������ � ����������
UPDATE Employees SET First_name = '�������', name = '���', Citizenship = '��������', 
Education_id = '����� �����������', Position_id = '����� ���������', Company_id = '����� �����������', Deportment_id = '����� ������', 
QualificationUP_id = '����� ��������� ������������ ��� �������', History_id = '����� ��������� ��������� ��� �������'
WHERE Employee_id = '������� ����� ����������, ������ �������� ���������� ��������';

--����� ������������ ������
select * from Employees WHERE Deportment_id = 7 ORDER BY First_name ASC; 

--����� ����� ��� ���������
select * from Employees WHERE (QualificationUP_id is NULL OR History_id is NULL) ORDER BY First_name ASC; 

--����� ���� ����� � �� ���������� ������������
select * from Employees WHERE Citizenship <> '������' ORDER BY First_name ASC; 




