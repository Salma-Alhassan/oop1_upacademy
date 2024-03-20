// ignore_for_file: prefer_initializing_formals

//! (1)
class Car{
String? name;
String? model;
String? color;

Car({String? name,String? model,String? color}){
  this.name=name;
  this.model=model;
  this.color=color;
}
}
//! (2)

class Student{
    String? firstName;
    String? lastName;
    int? grade=0;

Student({String? fn,String? ln,int? g}){
firstName=fn;
lastName=ln;
grade=g;
}

void printGrade(){
  print("the student $firstName $lastName had grade $grade");
}
}
//! (3)

class Shape {
  int? width;
  int? height;

  int area(){
    return width!*height!;
  }
}
class Rectangle extends Shape{
String? color;

@override
int area(){
  return width!*height!;
}
}
class Square extends Shape{
String? color;

@override
int area(){
  return width!*width!;
}
}
//! (4)

class Weapon {
  int? numberOfShots;
  String? color;
  String? name;

}
class kalashinkov extends Weapon{
  int? height;
  int? price;
  @override
  String? name;
}
class arbj extends Weapon{
  int? height;
  int? price;
  @override
  String? name;
}

void main(){
//! (1)
  Car car=Car(color: "black",model: "kia",name: "myCar");
  print("the name is ${car.name} , the color is ${car.color} and the model is ${car.model}");

//! (2)
  Student Bert=Student(fn: "Bert",ln: "jack",g: 95);
  Bert.printGrade();
  Student Ernie=Student(fn: "Ernie",ln: "jack",g: 85);
  Ernie.printGrade();

//! (3)
  Square sqr=Square();
  sqr.width=5;sqr.color="red";
  print("square has area ${sqr.area()} and has color ${sqr.color}");

  Rectangle rect=Rectangle();
  rect.width=5;rect.height=8;rect.color="green";
  print("rectangle has area ${rect.area()} and has color ${rect.color}");

//! (4)
  kalashinkov k=kalashinkov();
  k.name="klashinkov1";
  print(k.name);
  arbj a=arbj();
  a.name="arbj1";
  print(a.name);
}