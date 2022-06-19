CREATE TABLE assessments (
	[CourseID] nvarchar(150) not null,
	[category] nvarchar(150) not null,
	[type]     nvarchar(150) not null,
	[part]	   int not null,
	[duration] nvarchar(10) not null,
	[LO]	   nvarchar(150) ,
	[question type] nvarchar(150) not null,
	[No Question]	int ,
	[Knowledge and skill] nvarchar(150) not null,
	[grading guide] nvarchar(150) not null,
	[note]	 nvarchar(150) ,


)
create table result (
	[CourseID]   nvarchar(150) not null,
	[CourseName] nvarchar(150) not null,
	[semester]	 nvarchar(150) not null,
	[group]	     nvarchar(150) not null,
	[start date] date not null,
	[end date]	 date not null,
	[average mark] int not null,
	[status]	 bit not null,

)
