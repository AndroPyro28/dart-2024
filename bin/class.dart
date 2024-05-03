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

  int get myProperty => 123;

  String getSomeString() {
    return 'hello';
  }

}


class NewRegularClass implements RegularClass {
  @override
  String getSomeString() {
    // TODO: implement getSomeString
    throw UnimplementedError();
  }

  @override
  // TODO: implement myField
  int get myField => throw UnimplementedError();

  @override
  // TODO: implement myProperty
  int get myProperty => throw UnimplementedError();

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
