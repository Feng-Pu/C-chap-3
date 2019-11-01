########################################################################
// n1.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
using namespace std;
class Date
{
public:
	Date(int=1,int=1,int=2005);
	//Date(int,int,int);
	//Date(int,int);
	//Date(int);
	//Date();
	void display();
private:
	int month;
	int day;
	int year;

};


Date::Date(int m, int d, int y)
{
	month=m;
	day=d;
	year=y;
}

/*Date::Date(int m, int d):month(m),day(d)
{year=2005;}

Date::Date(int m):month(m)
{
day=1;
year=2005;
}


Date::Date()
{
month=10;
day=13;
year=2005;
}*/

void Date::display()
{cout<<month<<"/"<<day<<"/"<<year<<endl;}
int main()
{
	Date d1(10,13,2005);
	Date d2(12,30);
	Date d3(10);
	Date d4;
	d1.display();
	d2.display();
	d3.display();
	d4.display();
	return 0;
}
##########################################################

#include "stdafx.h"
#include <iostream>
using namespace std;
class student
{
public:
	student(int,int);
	void get();
private:
	int number;
	int grade;

};


student::student(int n, int g)
{
	number=n;
	grade=g;

}

void student::get()
{
cout<<number<<"	"<<grade<<endl;
}
int main()
{
	student a[5]={
	student(1,90),
	student(2,80),
	student(3,70),
	student(4,60),
	student(5,50)
	};
	student *p = a;
	p->get();
	p=p+2;
	p->get();
	p=p+2;
	p->get();
return 0;
	

}
################################################################



#include "stdafx.h"
#include <iostream>
using namespace std;
class student
{
public:
	student(int,int);
	friend void getmax(student*);
private:
	int number;
	int grade;

};


student::student(int n, int g)
{
	number=n;
	grade=g;

}

void getmax(student *p)
{
	int i;
	for(i=0;i<5;i++)
	{
		if(p->grade<(p+i)->grade)
		{
			p=p+1;
		
		}
	}
	cout<<p->number<<"	"<<p->grade<<endl;
}
int main()
{
	student a[5]={
	student(1,90),
	student(2,80),
	student(3,70),
	student(4,60),
	student(5,50)
	};
	student *p = a;
	getmax(p);
return 0;
	

}
###################################################

#include "stdafx.h"
#include <iostream>
using namespace std;
class Student
{
public:
	Student(int n,float s):num(n),score(s){	}
	void change(int n,float s) const {num=n;score=s;}
	void display() const {cout<<num<<"	"<<score<<endl;}
private:
	mutable int num;
	mutable float score;

};

int main()
{
	Student stud(101,78.5);
	Student *const p=&stud;
	p->display();
	p->change(101,80.5);
	p->display();
	return 0;

}
