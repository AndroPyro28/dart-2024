import 'dart:ffi';
import 'dart:html';
import 'dart:io';
import 'dart:svg';
part  "string-methods.dart";

enum AccountType {
  free, premium, vip
}
void main(List<String> arguments) {
  String name = "John Doe";
  print(name);
  const type = AccountType.free;
  bool isContained = name.contains("J");
    dynamic dynamicVar = 'hello world';
    dynamicVar = 1;
    dynamicVar = true;
  int num1 = 5;
  double num2 = 11.5;


  bool isEvenAndPositive = num1.isEven && !num2.isNegative ;

  String? myString = null;
  // myString = "hello world";
  myString?.length;

  print('${num2} ${num1} ${isEvenAndPositive} ${dynamicVar} ${myString?.length}');

  switch(num1) {
    case 4: {
      print("it's number four");
      break;
    }

    default:
    print("It's not four");
  }
}
