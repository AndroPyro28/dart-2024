// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:meta/meta.dart';

void main(List<String> arguments) {
    // final admin = new Admin(firstname: "John",lastname: "Doe", myAdminField: 99);
    // final user = admin as User; // type casting

    // if(user is Admin) {
    //   print(user.myAdminField);
    // }

  final staticAdmin = User.admin();

  staticAdmin.signOut();

  final human = new Human("Andro" );
  final robot = new Robot("335MS17");

  robot.hello("Guys", robot.model);
  human.hello("Guys", human.name);
  
}

@immutable
class Person {
  final String name;

  Person(name): this.name =  name;

  Person copyWith({String? name}) {
    return new Person(name);
  }

}

abstract class User {
  final String firstname;
  final String lastname;
  
  User ({
    required this.firstname,
    required this.lastname,
  });

  String get fullname => "${this.firstname} ${this.lastname}";

  @mustCallSuper
  void signOut () {
    print("Skibidi out~");
  }

  factory User.admin() {
    return Admin(firstname: '_A', lastname: '_E', myAdminField: 55);
  }

  void myMethod();

  int get myProperty;
}

class Admin extends User {

  final int myAdminField;

  Admin({required String firstname, required String lastname, required this.myAdminField})
  : super(firstname: firstname, lastname: lastname);

  @override
  void signOut() {
    print("Admin Skibidi out~");
    super.signOut();
  }
  static void adminShoutOut() {
    print("Hello world");
  }
  
  @override
  void myMethod() {
    // TODO: implement myMethod
  }
  
  @override
  // TODO: implement myProperty
  int get myProperty => throw UnimplementedError();

  
}

class RegularClass { // any class can be use as interface
  final int myField;

  RegularClass(this.myField);

  int get myProperty {
    return 32;
  }

  String getSomeString() {
    return 'hello';
  }

}


mixin greet {
  void hello (String to, [String? from]) {

   if (from != null && from.isNotEmpty) {
      print("Hello $to, my name is $from");
    } else {
      print("Hello $to");
    }
  }
}

class Human with greet {
  final String name;
  Human(String name): this.name = name;
}

class Robot with greet {
  final String model;
  Robot(String model): this.model = model;
}

abstract class DataReader<T> {
  T readData();
}

class IntegerDataReader implements DataReader<int> { // generics
  @override
  readData() {
    print("performing logic");
    return 5;
  }
}

class StringDataReader implements DataReader<String> {
  @override
  readData() {
    print("performing logic");
    return "hello world";
  }
}

void method<T> (T arg) {
  
}
